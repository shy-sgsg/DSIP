import re

def replace_math_delimiters(content):
    # Replace block math delimiters \[...\] with $$...$$
    content = re.sub(r'\\\[(.*?)\\\]', r'$$\1$$', content, flags=re.DOTALL)
    # Remove \boxed{} wrapping
    # content = re.sub(r'\\boxed\{(.*?)\}', r'\1', content)
    # Replace inline math delimiters \(...\) with $...$
    content = re.sub(r'\\\((.*?)\\\)', r'$\1$', content)
    return content

def process_file(filepath):
    with open(filepath, 'r', encoding='utf-8') as file:
        content = file.read()
    
    updated_content = replace_math_delimiters(content)
    
    with open(filepath, 'w', encoding='utf-8') as file:
        file.write(updated_content)

if __name__ == "__main__":
    # filepaths = input("请输入要处理的文件路径（用空格分隔）：").split()
    # for filepath in filepaths:
    #     process_file(filepath)
    # process_file('./报告/tmp.md')
    # process_file('./报告/贝塞尔函数与杂散峰理论推导.md')
    # process_file('./报告/AD窄带SFDR校准成对峰现象解析.md')
    # process_file('./报告/角度调制公式的贝塞尔展开推导.md')
    # process_file('./报告/贝塞尔函数生成函数.md')
    process_file('./报告/基于贝塞尔函数的采样时间抖动仿真分析.md')
