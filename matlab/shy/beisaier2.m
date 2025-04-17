% 清理环境
clear; clc; close all;

% 参数设置
A = 1;          % 信号幅度
f0 = 1.5e9;      % 主频（Hz）
ft = 1000e3;       % 时间抖动频率（Hz）
delta = 1e-9;
beta = 2*pi*delta*ft;       % 相位调制指数
Fs = 8e9;     % 采样频率（Hz）
T = 1e-3;        % 信号持续时间（秒），提高频率分辨率
t = 0:1/Fs:T-1/Fs; % 时间向量

Kmax = 5;      % 最大贝塞尔级数阶数

% 生成调制信号
sum_signal = zeros(size(t));
for k = -Kmax:Kmax
    % 计算贝塞尔函数值
    if k >= 0
        Jk = besselj(k, beta);
    else
        Jk = (-1)^(-k) * besselj(-k, beta); % 利用J_{-k}(beta) = (-1)^k Jk(beta)
    end
    amp = A * (-1)^k * Jk;      % 幅度项
    freq = f0 + k * ft;         % 边带频率
    sum_signal = sum_signal + amp * cos(2*pi*freq*t); % 叠加各频率成分
end

% 计算频谱
N = length(t);
Y = fft(sum_signal);
P2 = abs(Y/N);
P1 = P2(1:N/2+1);
P1(2:end-1) = 2*P1(2:end-1);
f = Fs*(0:N/2)/N;

% 绘制频谱图
figure;
plot(f, 20*log10(P1));
xlabel('Frequency (Hz)');
ylabel('Magnitude (dB)');
title('Spectrum of Modulated Signal');
xlim([f0 - Kmax*ft, f0 + Kmax*ft]);
grid on;

% 标记理论边带位置
hold on;
for k = -Kmax:Kmax
    freq_k = f0 + k*ft;
    [~, idx] = min(abs(f - freq_k));
    amp_theory = A * abs(besselj(abs(k), beta));
    plot(freq_k, 20*log10(amp_theory), 'ro');
end
hold off;
legend('Simulated', 'Theory');

% 输出贝塞尔函数值
disp('Theoretical Bessel Values:');
for k = 0:Kmax
    fprintf('J_%d(%.2f) = %.4f\n', k, beta, besselj(k, beta));
end
