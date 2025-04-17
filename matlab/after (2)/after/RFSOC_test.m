clc
clear 
close all
file_path = 'D:\DSIP\DSIP_EB_banji_kaifa\chengdu_BIT\chengdu_BIT\matlab\20250407\3600';  % 替换为你的文件路径
fileID  = fopen(file_path, 'r');
rows = 100;
cols = 4096;
matrix = fread(fileID, [rows, cols], 'double');

data = [];
data = matrix(20,129:4128);

x= 1:1:4000;
figure;plot(x,data)