function [sfdr, noise_floor_dB] = SFDR_Calc_Narrowband(data, Fs, bandwidth)
    % 参数说明：
    % data - 输入数据
    % Fs - 采样频率
    % bandwidth - 分析带宽（单边）
    % 返回值：
    % sfdr - 计算得到的SFDR值
    % fig - 包含频谱分析的图形句柄
    
    %% 参数设置以及预处理
    N = length(data);
    window = hann(N); 
    data_windowed = data .* window;
    Y = fft(data_windowed);
    Y = abs(Y/N);
    Y = Y(1:N/2+1); % 单侧频谱
    Y(2:end-1) = 2*Y(2:end-1); % 能量修正
    
    % 生成频率轴
    freq_axis = (0:N/2)*Fs/N;
    
    % 排除直流成分
    Y(1:10) = 0;
    Y(end-9:end) = 0;

    % 找到主频分量
    [max_mag, peak_idx] = max(Y);
    fin = (peak_idx-1)*Fs/N;
    % fprintf('[DEBUG] 检测到主频：%.2f MHz\n', fin/1e6); % 新增调试输出


    % 精确频率到bin转换
    target_low = max(1e6, fin - bandwidth); % 最低1MHz防止直流干扰
    target_high = min(Fs/2 - 1e6, fin + bandwidth); % 最高Nyquist-1MHz
    
    lower_bin = find(freq_axis >= target_low, 1);
    upper_bin = find(freq_axis <= target_high, 1, 'last');
    
    % 验证掩码有效性
    if isempty(lower_bin) || isempty(upper_bin) || lower_bin >= upper_bin
        error('无效分析范围：%.1f-%.1fMHz', target_low/1e6, target_high/1e6);
    end

    % fprintf('[DEBUG] 分析范围：%.2f MHz - %.2f MHz\n',...
    % (lower_bin-1)*Fs/N/1e6, (upper_bin-1)*Fs/N/1e6);
    
    %% 新增：计算主频保护带参数
    exclude_band = Fs/7000; % 需要排除的带宽
    exclude_range_hz = [fin - exclude_band, fin + exclude_band]; % 排除频率范围
    
    % 转换为bin索引
    exclude_low_bin = find(freq_axis >= exclude_range_hz(1), 1, 'first');
    exclude_high_bin = find(freq_axis <= exclude_range_hz(2), 1, 'last');
    
    % 边界保护
    exclude_low_bin = max(1, exclude_low_bin);
    exclude_high_bin = min(length(freq_axis), exclude_high_bin);

    %% 修改掩码生成逻辑
    mask = false(size(Y));
    mask(lower_bin:upper_bin) = true;
    
    % 排除主频保护带（原排除固定bin方式替换为频率范围排除）
    mask(exclude_low_bin:exclude_high_bin) = false;
    % fprintf('[DEBUG] 排除频率范围: %.3f-%.3f MHz\n',...
        % freq_axis(exclude_low_bin)/1e6, freq_axis(exclude_high_bin)/1e6);
    
    % 应用掩码
    Y_masked = Y;
    Y_masked(~mask) = 0;

    % 计算噪声基底
    noise_bins = Y(mask);
    noise_bins(noise_bins == 0) = []; % 移除零值
    noise_floor = median(noise_bins); % 使用中值更鲁棒
    
    noise_floor_dB = -20*log10(noise_floor/max_mag);

    % 设置检测阈值
    % detection_threshold = 1*noise_floor; % 1倍噪声基底
    
    % % 寻找超过阈值的候选峰
    % valid_spurs = find(Y_masked > detection_threshold);
    % 
    % if isempty(valid_spurs)
    %     warning('在分析带宽内未找到有效杂散');
    %     spur_mag = noise_floor;
    %     spur_freq = NaN;
    % else
    %     % % 选择距主频最远的合格峰
    %     % [~, idx] = max(abs(freq_axis(valid_spurs) - fin));
    %     % spur_idx = valid_spurs(idx);
    %     % 改为寻找最大的杂散峰
    %     [spur_mag, spur_idx] = max(Y_masked(valid_spurs));
    %     spur_freq = freq_axis(spur_idx);
    % end
    
    % 寻找最大杂散
    [spur_mag, spur_idx] = max(Y_masked);
    spur_freq = freq_axis(spur_idx);
    
    % 计算SFDR
    sfdr = 20*log10(max_mag/spur_mag);
    
    % % 生成诊断图
    % figure('Position', [100 100 1200 600]);
    % 
    % % 全频谱视图
    % subplot(2,1,1);
    % plot(freq_axis/1e6, 20*log10(Y/max(Y)));
    % title('Full Spectrum');
    % xlabel('Frequency (MHz)');
    % ylabel('Normalized Power (dB)');
    % grid on;
    % hold on;
    % 
    % % 标记主频和杂散
    % plot(fin/1e6, 20*log10(max_mag/max(Y)), 'ro', 'MarkerFaceColor', 'r');
    % plot(spur_freq/1e6, 20*log10(spur_mag/max(Y)), 'bsquare', 'MarkerFaceColor', 'b');
    % 
    % % 绘制分析带宽
    % plot([fin-bandwidth fin+bandwidth]/1e6, [-120 -120], 'g--', 'LineWidth', 2);
    % legend({'Spectrum', 'Fundamental', 'Spur', 'Analysis Band'}, 'Location', 'best');
    % 
    % % 窄带详细视图
    % subplot(2,1,2);
    % plot(freq_axis/1e6, 20*log10(Y/max(Y)));
    % xlim([(fin-10e6)/1e6 (fin+10e6)/1e6]); % 显示主频±10MHz范围
    % title(['Zoomed Spectrum: Fundamental at ' num2str(fin/1e6) ' MHz']);
    % xlabel('Frequency (MHz)');
    % ylabel('Normalized Power (dB)');
    % grid on;
    % hold on;
    % 
    % % 标记和注释
    % plot(fin/1e6, 20*log10(max_mag/max(Y)), 'ro', 'MarkerFaceColor', 'r');
    % plot(spur_freq/1e6, 20*log10(spur_mag/max(Y)), 'bsquare', 'MarkerFaceColor', 'b');
    % plot([fin-bandwidth fin+bandwidth]/1e6, [-100 -100], 'g--', 'LineWidth', 2);
    % 
    % % 添加文字标注
    % text(fin/1e6, 20*log10(max_mag/max(Y))+3, ...
    %     ['Fundamental: ' num2str(fin/1e6) ' MHz'], ...
    %     'HorizontalAlignment', 'center');
    % 
    % text(spur_freq/1e6, 20*log10(spur_mag/max(Y))+3, ...
    %     ['Spur: ' num2str(spur_freq/1e6) ' MHz (' num2str(sfdr,2) ' dB)'], ...
    %     'HorizontalAlignment', 'center');
    % 
    % % 添加SFDR数值标注
    % annotation('textbox', [0.15 0.7 0.2 0.15],...
    %     'String', {['SFDR = ' num2str(sfdr,2) ' dB'],...
    %               ['Analysis BW: ±' num2str(bandwidth/1e6) ' MHz']},...
    %     'FitBoxToText', 'on',...
    %     'BackgroundColor', 'w');
    % 
    % % 新增标注
    % text(0.05, 0.25, {sprintf('噪声基底: %.1f dBFS', 20*log10(noise_floor/max_mag))},...
    %     'Units', 'normalized', 'FontSize', 10);
    % 
    % % 绘制阈值线
    % plot(xlim, 20*log10([noise_floor noise_floor]/max_mag), 'k--');
    % plot(xlim, [-80 -80], 'r--');
end







