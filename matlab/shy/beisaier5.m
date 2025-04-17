% 清理环境
clear; clc; close all;

% 参数设置
fs = 2e9;                     % 采样频率 (2 GHz)
f0 = 1.5e9;                   % 载波频率 (1.5 GHz)
f_tau = 1.25e4;                % 抖动频率 (100 MHz)
delta0 = 2e-7;                % 初始抖动幅度
noise_std = 1e-10;             % 随机游走噪声标准差
delta_min = 1e-7;            % 抖动幅度下限
delta_max = 3e-7;            % 抖动幅度上限
phi = 0;                      % 初始相位
t = 0:1/fs:1e-2-1/fs;         % 时间向量 (0.01秒)


% 生成随机游走抖动幅度（带反射边界条件）
epsilon = noise_std * randn(size(t));  % 高斯白噪声
epsilon2 = noise_std * randn(size(t));
delta = zeros(size(t));
delta(1) = delta0;

for i = 2:length(t)
    delta(i) = delta(i-1) + epsilon(i);
    
    % 反射边界条件
    if delta(i) > delta_max
        delta(i) = delta_max - (delta(i) - delta_max);
    elseif delta(i) < delta_min
        delta(i) = delta_min + (delta_min - delta(i));
    end

    % tau(i) = delta(i) * cos(2*pi*f_tau*t(i) + phi) + 5*epsilon2(i);  % 时间抖动
end

% 生成随机游走抖动幅度
epsilon = noise_std * randn(size(t));  % 高斯白噪声
delta = delta0 + cumsum(epsilon);      % 随机游走

% 生成时间抖动
tau = delta .* cos(2*pi*f_tau*t + phi);  % 时间抖动
phase_error = 2*pi*f_tau*tau + 1e-3*randn(size(t));           % 相位误差

% 生成调制信号
s_mod = cos(2*pi*f0*t + phase_error);   % 调制信号

% 加入噪声
noise = 1e-2*randn(size(t));            % 噪声
s_noisy = s_mod + noise;                % 加噪信号

% 绘制时域图
figure;
subplot(2,1,1);
plot(t*1e3, s_mod);
title('调制信号时域图');
xlabel('时间 (ms)');
ylabel('幅度');
grid on;
xlim([0 1e-3]);

subplot(2,1,2);
plot(t*1e3, s_noisy);
title('加噪后的调制信号时域图');
xlabel('时间 (ms)');
ylabel('幅度');
grid on;
xlim([0 1e-3]);

% 绘制抖动幅度随时间变化
figure;
plot(t*1e3, delta);
title('时间抖动幅度随时间变化');
xlabel('时间 (ms)');
ylabel('抖动幅度');
grid on;

% 频谱分析
N = length(t);
f = (0:N-1)*(fs/N) - fs/2;             % 频率向量（中心化）
S_mod = fftshift(fft(s_mod)/N);         % FFT并中心化
S_noisy = fftshift(fft(s_noisy)/N);     % FFT并中心化

figure;
subplot(2,1,1);
plot(f/1e9, 20*log10(abs(S_mod)));
title('调制信号频谱');
xlabel('频率 (GHz)');
ylabel('幅度 (dB)');
ylim([-100 0]);
grid on;
xlim([-fs/2/1e9, fs/2/1e9]);

subplot(2,1,2);
plot(f/1e9, 20*log10(abs(S_noisy)));
title('加噪后的调制信号频谱');
xlabel('频率 (GHz)');
ylabel('幅度 (dB)');
ylim([-100 0]);
grid on;
xlim([-fs/2/1e9, fs/2/1e9]);

% 提取相位信息
analytic_signal = hilbert(s_mod);  % 希尔伯特变换
phase = angle(analytic_signal);    % 瞬时相位

% 展开相位（去除2π周期性）
phase_unwrapped = unwrap(phase);

% 绘制相位曲线
figure;
plot(t*1e3, phase_unwrapped);
title('信号相位曲线');
xlabel('时间 (ms)');
ylabel('相位 (弧度)');
grid on;

% 线性拟合相位
p = polyfit(t, phase_unwrapped, 1);  % 线性拟合
phase_linear = polyval(p, t);        % 拟合相位

% 计算相位残差
phase_residual = phase_unwrapped - phase_linear;

% 绘制相位残差曲线
figure;
plot(t*1e3, phase_residual);
title('相位残差曲线');
xlabel('时间 (ms)');
ylabel('残差 (弧度)');
grid on;

% 计算残差的均值和标准差
mean_residual = mean(phase_residual);
std_residual = std(phase_residual);

fprintf('相位残差均值: %.4f 弧度\n', mean_residual);
fprintf('相位残差标准差: %.4f 弧度\n', std_residual);

% 绘制残差直方图
figure;
histogram(phase_residual, 30);
title('相位残差直方图');
xlabel('残差 (弧度)');
ylabel('频数');
grid on;