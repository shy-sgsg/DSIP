% clc
% clear 
close all
file_path = 'D:\DSIP\DSIP_EB_banji_kaifa\chengdu_BIT\chengdu_BIT\matlab\1800_32768\output_total.csv';  % 替换为你的文件路径
code = readmatrix(file_path);  % 直接加载为双精度矩阵
x = 1:1:200000;
figure;plot(x,code)



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%计算理想正弦波的功率%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%原始信号加窗处理后的时域信号图%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
idea_dout=(2^numbit)/2*sin((0:(2*pi/124.6427):(numpt-1)*2*pi/124.6427)')+(2^numbit-1)/2;
idea_dout=round(idea_dout)-(2^numbit-1)/2;
idea_doutw=idea_dout.*blackmanharris(length(idea_dout));
idea_spect=fft(idea_doutw,length(idea_dout));
idea_dB=20*log10(abs(idea_spect));
% idea_power=max(idea_dB(2:length(idea_dout)/2));
idea_spectP=(abs(idea_spect)).*(abs(idea_spect));
idea_power=sum(idea_spectP(1:length(idea_dout)/2));
%recenter the digital sinewave 
Dout=code-mean(code);
%if no window functionis used,the input tone must be chosen 
%to be unique and with regard to the sampling freq.To achieve 
%this, prime numbers are introduced and the input tone is 
%determined by fIN=fSAMPLE*(Prime Number/Data record size). 
%To relax this requirement,window functions such as HANNING 
%HAMING can be introduced,however the fundamental in the 
%resulting FFT spectrum appears 'sharper' without 
%the use of window functions. 
Doutw=Dout.*(blackmanharris(numpt));
% figure;plot(Doutw);

Dout_spect=fft(Doutw,numpt); 
%recalculate to dB 
Dout_dB=20*log10(abs(Dout_spect)); 

for i=1:numpt
    if Dout_dB(i)<-200
        Dout_dB(i)=-200;
    end
end
%plot([1:N/2],Dout_dB(1:N/2)); 

%display the results in the frequency domain with FFT plot 

maxdB=max(Dout_dB(2:numpt/2)); 
%%for TTIMD,use the following short routine,normalized to -6.5dB 
%full scale. 
%plot([0:numpt/2-1].*fclk/numpt,Dout_dB(1:numpt/2)-maxdB-6.5); 
x_initial = [0:numpt/2-1].*fclk/numpt;
y_initial = Dout_dB(1:numpt/2)-maxdB;
%plot([0:numpt/2-1].*fclk/numpt,Dout_dB(1:numpt/2)-maxdB); 

x_initial_1 = [1:numpt].*fclk/numpt;
y_initial_1 = Dout_dB(1:numpt)-maxdB;

% figure;plot(x_initial,y_initial)
% grid on; 
% title(['FFT PLOT ']); 
% xlabel('ANALOG INPUT FREQUENCY(MHz)'); 
% ylabel('AMPLITUDE(dB)'); 
% axis([0 inf -110 0]);


x_xiufu = 1:1:262144;
% f = linspace(-1e9,1e9,262144);
f = linspace(0,2e9,200000);
figure;plot(f',y_initial_1)
% figure;plot(x_xiufu,y_initial_1)

grid on; 
title(['FFT PLOT ']); 
xlabel('ANALOG INPUT FREQUENCY(MHz)'); 
ylabel('AMPLITUDE(dB)'); 
axis([0 inf -110 0]);
xlim([1.795e9 1.805e9])