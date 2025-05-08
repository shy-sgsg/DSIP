function sfdr2 = SFDR_Calc_Wideband(adc_data_mux, fclk)
    % 初始化参数
    numbit = 12;
    harm_nums = 15;
    
    code = double(adc_data_mux);
    numpt = length(code);
    
    % 实际信号处理
    Dout = code - mean(code);
    Doutw = Dout .* chebwin(numpt);
    
    % FFT分析
    Dout_spect = fft(Doutw, numpt);
    Dout_spect = Dout_spect(1:numpt/2+1); % 取单边谱
    
    % 频谱归一化处理
    [max_mag, fin] = max(abs(Dout_spect(2:end))); % 排除DC
    fin = fin + 1; % 补偿索引偏移
    normalized_spect = abs(Dout_spect)/max_mag;
    Dout_dB = 20*log10(normalized_spect);
    Dout_dB(Dout_dB < -200) = -200; % 设置显示下限
    
    % 找到主频位置
    main_lobe_span = 5; % 主瓣保护间隔
    search_spect = Dout_dB;
    search_spect(max(1,fin-main_lobe_span):min(end,fin+main_lobe_span)) = -inf;
    
    % 找到最大杂散峰
    [max_spur_dB, fspur] = max(search_spect);
    
    % 计算SFDR
    Ph_main = sum(abs(Dout_spect(max(1,fin-2):min(end,fin+2))).^2);
    Ph_spur = sum(abs(Dout_spect(max(1,fspur-2):min(end,fspur+2))).^2);
    SFDR2 = 10*log10(Ph_main/Ph_spur);

    % %%%%%%%%% 专业绘图部分 %%%%%%%%%%
    % f_axis = (0:numpt/2)*(fclk/numpt);
    % 
    % figure('Position', [100 100 800 500]);
    % h = plot(f_axis, Dout_dB, 'b', 'LineWidth', 1.2);
    % hold on;
    % 
    % % 标注主频
    % plot(f_axis(fin), 0, 'gp', 'MarkerSize', 12, 'MarkerFaceColor', 'g');
    % text(f_axis(fin), 1, sprintf('Fundamental\n%.1f dB', 0),...
    %     'VerticalAlignment', 'bottom', 'HorizontalAlignment', 'center',...
    %     'FontSize', 9, 'Color', 'k');
    % 
    % % 标注杂散峰
    % plot(f_axis(fspur), max_spur_dB, 'ro', 'MarkerSize', 10, 'LineWidth', 2);
    % text(f_axis(fspur), max_spur_dB+3, sprintf('Spur: %.1f dB\nSFDR = %.1f dB',...
    %     max_spur_dB, SFDR2), 'VerticalAlignment', 'bottom',...
    %     'HorizontalAlignment', 'center', 'FontSize', 9, 'Color', 'r');
    % 
    % % 绘制45dB基线（相对主频）
    % ref_level = -45;
    % yline(ref_level, '--', {'45dB Reference', sprintf('@ %.1f dB', ref_level)},...
    %     'Color', [0.7 0.3 0], 'LineWidth', 1.5, 'FontSize', 8,...
    %     'LabelVerticalAlignment', 'middle');
    % 
    % % 图形优化
    % xlabel('Frequency (Hz)', 'FontSize', 10, 'FontWeight', 'bold');
    % ylabel('Normalized Magnitude (dBc)', 'FontSize', 10, 'FontWeight', 'bold');
    % title(sprintf('Spectral Analysis (SFDR = %.1f dB)', SFDR2),...
    %     'FontSize', 12, 'FontWeight', 'bold');
    % legend([h, gco, findobj(gca,'Type','Line','Color',[0.7 0.3 0])],...
    %     {'Spectrum', 'Fundamental', 'Spurious', '45dB Ref'},...
    %     'Location', 'southoutside', 'Orientation', 'horizontal');
    % grid on;
    % axis tight;
    % ylim([ref_level-10 5]); % 动态调整纵轴范围
    % set(gca, 'FontSize', 9, 'GridAlpha', 0.3);
    % hold off;

    % 返回结果
    sfdr2 = SFDR2;
end