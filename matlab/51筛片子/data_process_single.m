clc;
clear;
close all;

% 指定文件和采样频率
[file, path] = uigetfile('.csv','选择ADC数据文件');
filepath = fullfile(path, file);
fclk = 2.4e9;  % 2.4 GHz采样频率

% 调用处理函数
[sfdr1, sfdr2, sfdr1_std, sfdr2_std, sfdr1_narrowband, sfdr2_narrowband, adc1_noise_floor, adc2_noise_floor] = adc_data_read_my(filepath, fclk);

% 显示结果
fprintf('子ADC1 SFDR: %.2f dB\n', sfdr1);
fprintf('子ADC2 SFDR: %.2f dB\n', sfdr2);
fprintf('库函数计算的子ADC1 SFDR: %.2f dB\n', sfdr1_std);
fprintf('库函数计算的子ADC2 SFDR: %.2f dB\n', sfdr2_std);
fprintf('子ADC1窄带 SFDR: %.2f dB\n', sfdr1_narrowband);
fprintf('子ADC2窄带 SFDR: %.2f dB\n', sfdr2_narrowband);
fprintf('子ADC1噪声基底: %.2f dB\n', adc1_noise_floor);
fprintf('子ADC2噪声基底: %.2f dB\n', adc2_noise_floor);
