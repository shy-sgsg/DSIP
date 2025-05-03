% 指定文件和采样频率
[file, path] = uigetfile('.csv','选择ADC数据文件');
filepath = fullfile(path, file);
fclk = 2.4e9;  % 2.4 GHz采样频率

% 调用处理函数
[sfdr1, sfdr2] = adc_data_read_my(filepath, fclk);

% 显示结果
fprintf('子ADC1 SFDR: %.2f dB\n', sfdr1);
fprintf('子ADC2 SFDR: %.2f dB\n', sfdr2);