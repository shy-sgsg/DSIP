function sfdr2 = SFDR_Calc_my(adc_data_mux, fclk)
    % 初始化参数
    numbit = 12;
    harm_nums = 15;
    
    code = double(adc_data_mux);
    numpt = length(code);
    
    % 理想信号计算（保留逻辑但不影响输出）
    idea_dout = (2^numbit)/2 * sin((0:(2*pi/124.6427):(numpt-1)*2*pi/124.6427)') + (2^numbit-1)/2;
    idea_dout = round(idea_dout) - (2^numbit-1)/2;
    idea_doutw = idea_dout .* blackmanharris(length(idea_dout));
    idea_spect = fft(idea_doutw, length(idea_dout));
    idea_spectP = (abs(idea_spect)).^2;
    idea_power = sum(idea_spectP(1:length(idea_dout)/2));
    
    % 实际信号处理
    Dout = code - mean(code);
    Doutw = Dout .* chebwin(numpt);
    
    % FFT分析
    Dout_spect = fft(Doutw, numpt);
    Dout_dB = 20*log10(abs(Dout_spect));
    Dout_dB(Dout_dB < -200) = -200;
    
    % 频谱功率计算
    spectP = abs(Dout_spect).^2;
    
    % 找到主信号频率
    span = 8;
    maxdB = max(Dout_dB(2:numpt/2));
    fin = find(Dout_dB(1:numpt/2) == maxdB, 1);
    
    % 排除主频和DC
    Dout_dB(1:span+1) = -200;
    if fin <= span
        fin = span+1;
    end
    Dout_dB(fin-span:fin+span) = -200;
    
    % 谐波分析
    spanh = 3;
    spanh_calc = spanh;
    Ph = [];
    for har_num = 1:harm_nums
        tone = rem((har_num*(fin-1)+1)/numpt, 1);
        if tone > 0.5
            tone = 1 - tone;
        end
        fstart = max(round(tone*numpt)-spanh, 1);
        fstop = min(round(tone*numpt)+spanh, numpt/2+1);
        har_peak = max(spectP(fstart:fstop));
        har_bin = find(spectP(fstart:fstop) == har_peak, 1) + fstart - 1;
        fstart = max(har_bin - spanh_calc, 1);
        fstop = min(har_bin + spanh_calc, numpt/2+1);
        Ph = [Ph sum(spectP(fstart:fstop))];
    end
    
   % 计算SFDR2
    maxdB2 = max(Dout_dB(2:numpt/2)); 
    fspur = find(Dout_dB(1:numpt/2) == maxdB2, 1);
    if fspur <= spanh
        fspur = spanh + 1;
    end
    Ph_spur = sum(spectP(fspur-spanh:fspur+spanh));
    SFDR2 = 10*log10(Ph(1)/Ph_spur);

    %%%%%%%%% 新增绘图部分 %%%%%%%%%%
    % 生成频率轴
    f_axis = (0:numpt/2)*(fclk/numpt);
    
    figure;
    plot(f_axis, Dout_dB(1:numpt/2+1), 'b');
    hold on;
    
    % 标记最大杂散峰
    max_spur_dB = Dout_dB(fspur);
    plot(f_axis(fspur), max_spur_dB, 'ro', 'MarkerSize', 10, 'LineWidth', 2);
    text(f_axis(fspur), max_spur_dB, sprintf('  Spur: %.1f dB', max_spur_dB),...
        'VerticalAlignment', 'bottom', 'FontSize', 10);
    
    % 绘制45dB基线
    yline(45, '--', '45 dB Baseline', 'Color', [0.5 0.2 0.1], 'LineWidth', 1.5);
    
    % 图例和标注
    xlabel('Frequency (Hz)');
    ylabel('Magnitude (dBFS)');
    title(['Spectrum with SFDR = ', num2str(SFDR2, '%.1f'), ' dB']);
    legend('Spectrum', 'Worst Spur', 'Location', 'northeast');
    grid on;
    axis tight;
    hold off;

    % 返回结果
    sfdr2 = SFDR2;
end