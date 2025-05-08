function data_process_batch()
    % 批量处理data1目录下所有子文件夹中的CSV文件
    % 生成包含SFDR和底噪结果的Excel报告
    % 在每个子文件夹数据处理完毕后，在Excel中添加一个空行

    % 初始化参数
    root_dir = '/home/shy/AIR/DSIP/matlab/51筛片子/data1';  % 根目录
    result_file = 'SFDR_NoiseFloor_Report.xlsx';           % 输出文件名
    fclk = 2.4e9;                                          % 采样频率

    % 创建结果表格（包含所有新指标：SFDR, 窄带SFDR, 库函数SFDR, 底噪）
    % New function output order: [sfdr1, sfdr2, sfdr1_std, sfdr2_std, sfdr1_narrowband, sfdr2_narrowband, adc1_noise_floor, adc2_noise_floor]
    result_table = table('Size',[0 10],...
        'VariableTypes',{'string','string','double','double','double','double','double','double','double','double'},...
        'VariableNames',{'Folder','Filename','SFDR1','SFDR2',...
                        'SFDR1_STD','SFDR2_STD',...
                        'SFDR1_Narrowband','SFDR2_Narrowband',...
                        'ADC1_Noise_Floor','ADC2_Noise_Floor'});

    % 获取所有子文件夹列表
    sub_folders = dir(root_dir);
    sub_folders = sub_folders([sub_folders.isdir]);
    sub_folders = sub_folders(~ismember({sub_folders.name},{'.','..'}));

    file_counter = 0;
    % 遍历所有子文件夹
    for fidx = 1:length(sub_folders)
        current_folder = fullfile(root_dir, sub_folders(fidx).name);
        file_list = dir(fullfile(current_folder, '*.csv'));
        
        files_processed_in_folder = false; % Flag to check if any file was processed in this folder

        % 处理每个CSV文件
        for fnum = 1:length(file_list)
            try
                % 文件信息处理
                filename = file_list(fnum).name;
                filepath = fullfile(current_folder, filename);
                file_counter = file_counter + 1;
                files_processed_in_folder = true;

                % 显示处理进度（已隐藏根目录）
                display_path = strrep(filepath, [root_dir filesep], '');
                display_path = strrep(display_path, '\', '/'); % Ensure forward slashes for display
                fprintf('第 %d 个文件：%s\n', file_counter, display_path);

                % 执行核心处理（捕获所有输出参数）
                % New function signature:
                % [sfdr1, sfdr2, sfdr1_std, sfdr2_std, sfdr1_narrowband, sfdr2_narrowband, adc1_noise_floor, adc2_noise_floor] = adc_data_read_my(filepath, fclk)
                [sfdr1, sfdr2, sfdr1_std, sfdr2_std, sfdr1_narrowband, sfdr2_narrowband, adc1_noise_floor, adc2_noise_floor] = adc_data_read_my(filepath, fclk);

                % 显示结果
                fprintf('[结果] 通道1: %.1fdB (窄带%.1fdB, 库函数版本%.2fdB, 底噪%.2fdB)\n',...
                    sfdr1, sfdr1_narrowband, sfdr1_std, adc1_noise_floor);
                fprintf('      通道2: %.1fdB (窄带%.1fdB, 库函数版本%.2fdB, 底噪%.2fdB)\n\n',...
                    sfdr2, sfdr2_narrowband, sfdr2_std, adc2_noise_floor);

                % 记录结果
                new_entry = {...
                    string(sub_folders(fidx).name),...
                    string(filename),...
                    sfdr1,...
                    sfdr2,...
                    sfdr1_std,...
                    sfdr2_std,...
                    sfdr1_narrowband,...
                    sfdr2_narrowband,...
                    adc1_noise_floor,...
                    adc2_noise_floor};
                result_table = [result_table; new_entry];
            catch ME
                % 错误处理（填充所有字段为NaN）
                err_entry = {...
                    string(sub_folders(fidx).name),...
                    string(filename),...
                    NaN, NaN, NaN, NaN, NaN, NaN, NaN, NaN}; % 8 NaNs for the numeric fields
                result_table = [result_table; err_entry];
                warning('处理文件失败: %s\n错误信息: %s', filepath, ME.message);
            end
        end

        % 在处理完一个子文件夹数据后，如果不是最后一个子文件夹且该文件夹内有文件被处理，则在excel里面加一个空行
        if files_processed_in_folder && fidx < length(sub_folders)
            empty_row_entry = {string(""), string(""), NaN, NaN, NaN, NaN, NaN, NaN, NaN, NaN};
            result_table = [result_table; empty_row_entry];
            fprintf('为文件夹 "%s" 的数据后添加了空行。\n\n', sub_folders(fidx).name);
        end
    end

    % 保存结果到Excel
    writetable(result_table, result_file, 'Sheet', 'SFDR_NoiseFloor_Results');

    % 添加中文表头
    % Order should match the table columns:
    % Folder, Filename, SFDR1, SFDR2, SFDR1_STD, SFDR2_STD, SFDR1_Narrowband, SFDR2_Narrowband, ADC1_Noise_Floor, ADC2_Noise_Floor
    excel_header = {'文件夹名称', '文件名',...
                   '通道1 SFDR(dB)', '通道2 SFDR(dB)',...
                   '通道1库函数SFDR(dB)', '通道2库函数SFDR(dB)',...
                   '通道1窄带SFDR(dB)', '通道2窄带SFDR(dB)',...
                   '通道1 底噪(dB)', '通道2 底噪(dB)'};
    writecell(excel_header, result_file, 'Sheet', 'SFDR_NoiseFloor_Results', 'Range','A1');

    fprintf('处理完成！共处理%d个文件，结果已保存至: %s\n',...
        file_counter, result_file); % Using file_counter for actual files processed
end

