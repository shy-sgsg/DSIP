import pytesseract
from PIL import Image

# Ubuntu通常不需要指定路径，如需手动指定：
# pytesseract.pytesseract.tesseract_cmd = '/usr/bin/tesseract'

img = Image.open('chinese_test.png')
text = pytesseract.image_to_string(img, lang='chi_sim')
print("识别结果：\n", text)