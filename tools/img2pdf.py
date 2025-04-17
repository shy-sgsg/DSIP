import os
from PIL import Image, ExifTags
import fitz  # PyMuPDF

def create_pdf_from_images(folder_path, output_pdf):
    """将文件夹内图片合并为PDF"""
    doc = fitz.open()
    image_files = sorted(
        [f for f in os.listdir(folder_path) if f.lower().endswith(('.png', '.jpg', '.jpeg'))],
        key=lambda x: x.lower()
    )
    
    for img_file in image_files:
        img_path = os.path.join(folder_path, img_file)
        try:
            # 打开图片并处理旋转
            with Image.open(img_path) as img:
                # 检查并应用EXIF方向信息
                if hasattr(img, "_getexif"):
                    exif = img._getexif()
                    if exif:
                        orientation_key = next(
                            (key for key, val in ExifTags.TAGS.items() if val == "Orientation"), None
                        )
                        if orientation_key and orientation_key in exif:
                            orientation = exif[orientation_key]
                            if orientation == 3:
                                img = img.rotate(180, expand=True)
                            elif orientation == 6:
                                img = img.rotate(270, expand=True)
                            elif orientation == 8:
                                img = img.rotate(90, expand=True)
                
                # 保存处理后的图片到临时路径
                temp_path = os.path.join(folder_path, f"temp_{img_file}")
                img.save(temp_path)
                img_path = temp_path  # 使用处理后的图片路径

            # 创建新页面（自动适应图片尺寸）
            page = doc.new_page()
            rect = page.rect  # 获取页面尺寸
            page.insert_image(
                rect,  # 图片填充整个页面
                filename=img_path,
                keep_proportion=True  # 保持图片比例
            )

            # 删除临时文件
            if "temp_" in img_path:
                os.remove(img_path)

        except Exception as e:
            print(f"跳过损坏文件：{img_file} | 错误：{str(e)}")
    
    doc.save(output_pdf)
    doc.close()
    print(f"生成成功：{output_pdf} (共 {len(image_files)} 页)")

def batch_process(input_dir, output_dir):
    """批量处理所有子文件夹"""
    os.makedirs(output_dir, exist_ok=True)
    
    for folder in os.listdir(input_dir):
        folder_path = os.path.join(input_dir, folder)
        if os.path.isdir(folder_path):
            pdf_path = os.path.join(output_dir, f"{folder}.pdf")
            create_pdf_from_images(folder_path, pdf_path)


if __name__ == "__main__":
    # # 输入输出路径配置
    # input_dir1 = "/home/shy/图片/财务凭证_new/分类_九室"  # 包含子文件夹的父目录
    # output_dir1 = "/home/shy/图片/财务凭证_new/PDF_九室"  # PDF保存目录
    # input_dir2 = "/home/shy/图片/财务凭证_new/分类_lyl"  # 包含子文件夹的父目录
    # output_dir2 = "/home/shy/图片/财务凭证_new/PDF_lyl"  # PDF保存目录
    
    # 运行处理
    # batch_process(input_dir1, output_dir1)
    # batch_process(input_dir2, output_dir2)
    batch_process("/home/shy/图片/1", "/home/shy/图片/2")
    
