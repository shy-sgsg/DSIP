function data_process_batch()
    % 批量处理data1目录下所有子文件夹中的CSV文件
    % 生成包含SFDR结果的Excel报告
    
    % 初始化参数
    root_dir = '/home/shy/AIR/DSIP/matlab/51筛片子/data1';  % 根目录
    result_file = 'SFDR_Report.xlsx';                      % 输出文件名
    fclk = 2.4e9;                                          % 采样频率
    
    % 创建精简结果表格（移除了时间列）
    result_table = table('Size',[0 4],...
        'VariableTypes',{'string','string','double','double'},...
        'VariableNames',{'Folder','Filename','SFDR1','SFDR2'});
    
    % 获取所有子文件夹列表
    sub_folders = dir(root_dir);
    sub_folders = sub_folders([sub_folders.isdir]);
    sub_folders = sub_folders(~ismember({sub_folders.name},{'.','..'}));
    
    file_counter = 0;

    % 遍历所有子文件夹
    for fidx = 1:length(sub_folders)
        current_folder = fullfile(root_dir, sub_folders(fidx).name);
        file_list = dir(fullfile(current_folder, '*.csv'));

        % 处理每个CSV文件
        for fnum = 1:length(file_list)
            try
                % 文件信息处理
                filename = file_list(fnum).name;
                filepath = fullfile(current_folder, filename);
                file_counter = file_counter + 1;

                % 显示处理进度（已隐藏根目录）
                display_path = strrep(filepath, [root_dir filesep], '');
                display_path = strrep(display_path, '\', '/');
                fprintf('第 %d 个文件：%s\n', file_counter, display_path);

                % 执行核心处理
                [sfdr1, sfdr2] = adc_data_read_my(filepath, fclk);
                % 显示结果
                fprintf('子ADC1 SFDR: %.2f dB\n', sfdr1);
                fprintf('子ADC2 SFDR: %.2f dB\n', sfdr2);

                % 记录精简结果
                new_entry = {...
                    string(sub_folders(fidx).name),...
                    string(filename),...
                    sfdr1,...
                    sfdr2};
                result_table = [result_table; new_entry];

            catch ME
                % 错误处理（仅记录基本信息）
                err_entry = {...
                    string(sub_folders(fidx).name),...
                    string(filename),...
                    NaN,...
                    NaN};
                result_table = [result_table; err_entry];
                warning('处理文件失败: %s\n错误信息: %s', filepath, ME.message);
            end
        end
    end

    % 保存精简结果到Excel
    writetable(result_table, result_file, 'Sheet', 'SFDR Results');
    
    % 添加中文表头
    excel_header = {'文件夹名称', '文件名', '子ADC1 SFDR(dB)', '子ADC2 SFDR(dB)'};
    writecell(excel_header, result_file, 'Sheet', 'SFDR Results', 'Range','A1');

    fprintf('处理完成！共处理%d个文件，结果已保存至: %s\n',...
        height(result_table), result_file);
end