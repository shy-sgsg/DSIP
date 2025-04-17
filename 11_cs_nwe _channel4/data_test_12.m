clc;
close all;
clear all;

%path_name = 'E:/WX/yth/project_vivado18.3_YTH2_ADDA_230424/data/';
%file_name = 'ADC1_A';
path_name = 'E:/WX/yth/project_vivado18.3_YTH2_ADDA_xdc1/';
file_name = '1-1101-2';
wfile_name = strcat(path_name,file_name,'_o','.csv');
file_name = strcat(path_name,file_name,'.csv');



data_all = csvread(file_name,1,3);

for ii = 1:4096
    data(ii*8-7,1) = data_all(ii,1)/16 + 2048;
    data(ii*8-6,1) = data_all(ii,2)/16 + 2048;
    data(ii*8-5,1) = data_all(ii,3)/16 + 2048;
    data(ii*8-4,1) = data_all(ii,4)/16 + 2048;
    data(ii*8-3,1) = data_all(ii,5)/16 + 2048;
    data(ii*8-2,1) = data_all(ii,6)/16 + 2048;
    data(ii*8-1,1) = data_all(ii,7)/16 + 2048;
    data(ii*8-0,1) = data_all(ii,8)/16 + 2048;
end

figure;
plot(data);

fft_data = db(abs(fft(data)));
figure;
plot(fft_data);

csvwrite(wfile_name,data)