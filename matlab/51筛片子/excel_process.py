from openpyxl import load_workbook
from openpyxl.styles import PatternFill

def highlight_cells(filename):
    green_fill = PatternFill(start_color='00FF00',
                             end_color='00FF00',
                             fill_type='solid')
    red_fill = PatternFill(start_color='FF0000',
                             end_color='FF0000',
                             fill_type='solid')
    yellow_fill = PatternFill(start_color='FFFF00',
                             end_color='FFFF00',
                             fill_type='solid')
    orange_fill = PatternFill(start_color='FF8C00',
                             end_color='FF8C00',
                             fill_type='solid')
    
    # 加载工作簿
    wb = load_workbook(filename)
    
    # 遍历所有工作表 (按需修改)
    for sheet in wb.worksheets:
        # 遍历数据行 (假设数据从第2行开始)
        for row in sheet.iter_rows(min_row=2):  # 如果包含标题行则从2开始
            # 处理第三列 (索引2)
            if row[2].value and isinstance(row[2].value, (int, float)):
                if row[2].value < 40:
                    row[2].fill = red_fill
                if row[2].value >= 40 and row[2].value < 45:
                    row[2].fill = orange_fill
                if row[2].value >= 45 and row[2].value < 50:
                    row[2].fill = yellow_fill
                if row[2].value > 50:
                    row[2].fill = green_fill  
                    
            # 处理第四列 (索引3)
            if row[3].value and isinstance(row[3].value, (int, float)):
                if row[3].value < 40:
                    row[3].fill = red_fill
                if row[3].value >= 40 and row[3].value < 45:
                    row[3].fill = orange_fill
                if row[3].value >= 45 and row[3].value < 50:
                    row[3].fill = yellow_fill
                if row[3].value > 50:
                    row[3].fill = green_fill    

    # 保存修改 (建议使用新文件名)
    new_filename = filename.replace('.xlsx', '_highlighted.xlsx')
    wb.save(new_filename)
    print(f"处理完成！已保存为: {new_filename}")

# 使用示例
highlight_cells("SFDR_Report.xlsx")  # 替换为实际文件名