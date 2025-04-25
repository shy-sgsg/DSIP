%% 第一部分：生成信号
% 清理环境
clear; clc; close all;

% 参数设置
fs = 2e9;                    % 采样频率 (Hz)
t = 0:1/fs:1e-2-1/fs;        % 时间向量 (0.01秒)
f0 = 1.5e9;                  % 载波频率 (Hz)
f_tau = 1.25e4;              % 抖动频率 (Hz)
delta = 2e-6;                % 抖动幅度
beta = 2*pi*f_tau*delta;     % 调制指数
phi = 0;                     % 初始相位

% 生成调制信号
tau = delta * cos(2*pi*f_tau*t + phi);       % 时间抖动
phase_error = 2*pi*f_tau*tau;                % 相位误差
s_mod = cos(2*pi*f0*t + phase_error);        % 调制信号

% 加入噪声
% phase_noise = 0;                                            % 相位噪声
% noise = 0;                                                  % 噪声
phase_noise = 1e-4*randn(size(t));                            % 相位噪声
noise = 1e-3*randn(size(t));                                  % 噪声
s_noisy = cos(2*pi*f0*t + phase_error + phase_noise) + noise; % 加噪信号


% 绘制时域图
figure;
subplot(2,1,1);
plot(t, s_mod);
title('调制信号时域图');
xlabel('时间 (s)');
ylabel('幅度');
grid on;

subplot(2,1,2);
plot(t, s_noisy);
title('加噪后的调制信号时域图');
xlabel('时间 (s)');
ylabel('幅度');
grid on;


%% 第二部分：频谱分析
% 频谱分析
N = length(t);
f = (0:N-1)*(fs/N);                    % 频率向量
S_mod = fft(s_mod)/N;                  % FFT
S_noisy = fft(s_noisy)/N;              % FFT

% 找到主峰的索引
[~, idx_main_peak] = max(abs(S_mod));

% 将主峰幅度移到0dB
S_mod_normalized = S_mod / abs(S_mod(idx_main_peak));
S_noisy_normalized = S_noisy / abs(S_mod(idx_main_peak));

figure;
subplot(2,1,1);
plot(f, 20*log10(abs(S_mod_normalized)));
title('调制信号频谱');
xlabel('频率 (Hz)');
ylabel('幅度 (dB)');
xlim([0 fs/2]);
grid on;

subplot(2,1,2);
plot(f, 20*log10(abs(S_noisy_normalized)));
title('加噪后的调制信号频谱');
xlabel('频率 (Hz)');
ylabel('幅度 (dB)');
xlim([0 fs/2]);
grid on;

% 不同噪声强度的频谱
noise_levels = [1e-3, 1e-4, 0];
phase_noise_levels = [1e-3, 1e-4, 0];
for phase_noise_level = phase_noise_levels
    figure;
    hold on;
    for noise_level = noise_levels 
        noise = noise_level * randn(size(t));
        phase_noise = phase_noise_level * randn(size(t));
        s_noisy_tmp = cos(2*pi*f0*t + phase_error + phase_noise) + noise;
        S_noisy_tmp = fft(s_noisy_tmp)/N;
        plot(f, 20*log10(abs(S_noisy_tmp)), 'DisplayName', ['幅度噪声强度 = ' num2str(noise_level), '  相位噪声强度 = ' num2str(phase_noise_level)]);
    end
    title('不同噪声强度下的频谱');
    xlabel('频率 (Hz)');
    ylabel('幅度 (dB)');
    xlim([0 fs/2]);
    grid on;
    legend;
end


% % 频谱泄漏分析
% figure;
% plot(f, 20*log10(abs(S_mod)));
% title('频谱泄漏分析');
% xlabel('频率 (Hz)');    
% ylabel('幅度 (dB)');
% xlim([f0 - 2*f_tau, f0 + 2*f_tau]);
% grid on;


%% 第三部分：相位分析
% 提取相位信息
analytic_signal = hilbert(s_noisy);  % 希尔伯特变换
phase = angle(analytic_signal);    % 瞬时相位

% 展开相位（去除2π周期性）
phase_unwrapped = unwrap(phase);

% 绘制相位曲线
figure;
plot(t*1e6, phase_unwrapped);
title('信号相位曲线');
xlabel('时间 (\mus)');
ylabel('相位 (弧度)');
grid on;

% 线性拟合相位
p = polyfit(t, phase_unwrapped, 1);  % 线性拟合
phase_linear = polyval(p, t);        % 拟合相位

% 计算相位残差
phase_residual = phase_unwrapped - phase_linear;

% 绘制相位残差曲线
figure;
plot(t*1e6, phase_residual);
title('相位残差曲线');
xlabel('时间 (\mus)');
ylabel('残差 (弧度)');
grid on;

% 计算残差的均值和标准差
mean_residual = mean(phase_residual);
std_residual = std(phase_residual);

fprintf('相位残差均值: %.8f 弧度\n', mean_residual);
fprintf('相位残差标准差: %.8f 弧度\n', std_residual);

% 绘制残差直方图
figure;
histogram(phase_residual, 30);
title('相位残差直方图');
xlabel('残差 (弧度)');
ylabel('频数');
grid on;


%% 第四部分：贝塞尔展开
% % 贝塞尔展开
% k_max = 5;                            % 最大阶数
% J = zeros(1, 2*k_max + 1);            % 贝塞尔函数值
% for k = -k_max:k_max
%     J(k + k_max + 1) = besselj(k, beta);  % 计算贝塞尔函数
% end
% 
% % 理论杂散峰位置和高度
% f_theory = f0 + (-k_max:k_max)*f_tau;  % 理论频率位置
% A_theory = abs(J);                     % 理论幅度
% 
% % 打印理论结果
% fprintf('理论杂散峰位置 (Hz): ');
% disp(f_theory);
% fprintf('理论杂散峰幅度: ');
% disp(A_theory);
% 
% % 在频谱图中标出理论杂散峰
% figure;
% plot(f, 20*log10(abs(S_mod)));
% hold on;
% stem(f_theory, 20*log10(A_theory), 'r', 'filled');
% title('调制信号频谱及理论杂散峰');
% xlabel('频率 (Hz)');
% ylabel('幅度 (dB)');
% xlim([0 fs/2]);
% grid on;
% legend('实际频谱', '理论杂散峰');

% 贝塞尔展开
Kmax = 5;                            % 最大阶数
A = 1;                               % 信号幅度

% 计算理论杂散峰位置和高度
figure;
plot(f/1e9, 20*log10(abs(S_noisy_normalized)));
hold on;

fprintf('理论杂散峰位置 (GHz) 和幅度 (dB):\n');
for k = -Kmax:Kmax
    % 计算理论频率位置
    freq_k = f0 + k*f_tau;
    
    % 找到最近的频率点
    [~, idx] = min(abs(f - freq_k));
    
    % 计算理论幅度（转换为dB）
    amp_theory_linear = A * abs(besselj(abs(k), beta));
    amp_theory_dB = 20*log10(amp_theory_linear);
    
    % 打印理论结果
    fprintf('k = %d: 频率 = %.5f MHz, 幅度 = %.2f dB\n', k, freq_k/1e6, amp_theory_dB);
    
    % 标记理论杂散峰
    plot(freq_k/1e9, amp_theory_dB, 'ro');
    text(freq_k/1e9, amp_theory_dB, sprintf('k=%d', k), ...
         'HorizontalAlignment', 'center', ...
         'VerticalAlignment', 'bottom');
end

title('调制信号频谱及理论杂散峰');
xlabel('频率 (GHz)');
ylabel('幅度 (dB)');
ylim([-100 0]);
grid on;
legend('实际频谱', '理论杂散峰');
hold off;


%% 能量守恒验证
% % 计算总能量
% energy_total = sum(abs(s_mod).^2);
% 
% % 计算贝塞尔展开后的能量
% energy_bessel = sum(A_theory.^2);
% 
% % 验证能量守恒
% fprintf('总能量: %.4f\n', energy_total);
% fprintf('贝塞尔展开能量: %.4f\n', energy_bessel);
% fprintf('能量守恒误差: %.4f\n', abs(energy_total - energy_bessel)/energy_total);