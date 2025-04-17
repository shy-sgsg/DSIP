import os
import re
import shutil
import pytesseract
from PIL import Image
from datetime import datetime

def extract_voucher_number(image_path):
    """
    专用于识别"凭证号：（九位数字或十位数字）"格式
    """
    try:
        print(f"\n正在处理图片：{os.path.basename(image_path)}")
        # 图像预处理
        img = Image.open(image_path)
        print("- 已加载图片")
        img = img.convert('L')  # 灰度化
        print("- 已完成灰度转换")
        img = img.point(lambda x: 0 if x < 180 else 255)  # 优化二值化阈值
        print("- 已完成二值化处理")
        
        # 使用中文OCR识别
        text = pytesseract.image_to_string(img, lang='chi_sim', config='--psm 6 --oem 3')
        print("- OCR识别结果：", text.replace('\n', ' ')[:100])
        
        pattern = r'凭证号：(\d{9,10})'
        match = re.search(pattern, text)
        
        if match:
            print(f"✓ 成功识别凭证号：{match.group(1)}")
            return match.group(1)
        else:
            print("✗ 未找到符合格式的凭证号")
            return None
            
    except Exception as e:
        print(f"✗ 识别失败：{os.path.basename(image_path)} | 错误：{str(e)}")
        return None

def process_images(source_dir, output_dir):
    start_time = datetime.now()
    print(f"\n=== 开始处理 === {start_time.strftime('%Y-%m-%d %H:%M:%S')}")
    print(f"源文件夹：{source_dir}")
    print(f"目标文件夹：{output_dir}\n")
    
    # ...existing code...
    
    files = sorted([f for f in os.listdir(source_dir) if f.lower().endswith(('.png', '.jpg', '.jpeg'))])
    print(f"找到 {len(files)} 个图片文件待处理")
    
    success_count = 0
    fail_count = 0
    
    # ...existing code...
    for file in files:
        src_path = os.path.join(source_dir, file)
        voucher = extract_voucher_number(src_path)
        
        if voucher:
            success_count += 1
            # ...existing code...
        else:
            fail_count += 1
    
    end_time = datetime.now()
    duration = (end_time - start_time).total_seconds()
    print(f"\n=== 处理完成 === {end_time.strftime('%Y-%m-%d %H:%M:%S')}")
    print(f"总耗时：{duration:.1f} 秒")
    print(f"成功处理：{success_count} 个文件")
    print(f"识别失败：{fail_count} 个文件")

def copy_group(voucher, files, source_dir, output_dir):
    print(f"\n>> 正在处理凭证组 {voucher}（{len(files)} 个文件）")
    target_dir = os.path.join(output_dir, voucher)
    
    # ...existing code...
    
    for file in files:
        src = os.path.join(source_dir, file)
        dst = os.path.join(target_dir, file)
        
        if os.path.exists(dst):
            print(f"- 文件已存在，创建副本：{file}")
        
        shutil.copy2(src, dst)
        print(f"- 已复制：{file} -> {voucher}/{os.path.basename(dst)}")


if __name__ == "__main__":
    # 配置路径（根据实际情况修改）
    source_dir = "/home/shy/图片/财务凭证"
    output_dir = "/home/shy/图片/财务凭证（分类）"
    
    # 预处理输出目录
    os.makedirs(output_dir, exist_ok=True)
    
    process_images(source_dir, output_dir)
    print("处理完成！所有文件已按凭证号分组复制")