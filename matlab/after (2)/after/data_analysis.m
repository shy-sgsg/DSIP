clear, clc, close all
%% loading data
load code;
%% parameter
pulse_len = length(code);
Fsr = 2e9;

code = code(:);
%% signal analysis
data = code;
win = kaiser(pulse_len,7);
% win = blackmanharris(pulse_len);
data = data-mean(data);
data_orig = data.*win;
figure
plot(data_orig);
data_orig = fft(data_orig,8*length(data_orig));
data_orig(end/2+1:end) = 0;
figure
plot(db(data_orig))

data = data_orig;
[~,ind_max] = max(data);
win_len = 8192;
data(1:ind_max-win_len/2-1) = 1e-10;
data(ind_max+win_len/2:end) = 1e-10;
figure
plot(db(data))
data = ifft(data);
figure
plot(real(data(1:end/8)))

ph = unwrap(angle(data(1:end/8)));
tr = (0:pulse_len-1)'/Fsr;
P = polyfit(tr,ph,1);
ph_err = ph-polyval(P,tr);
figure
plot(tr,ph_err/pi*180)

data = ifft(data_orig);
data(1:end/8) = data(1:end/8).*exp(-1j*ph_err);
data = fft(data);

figure
plot(1:length(data_orig),db(data_orig),1:length(data),db(data))



return
fclk = 2e9;
numpt=length(code); 
numbit=12; 
harm_nums=15;
N=length(code); 
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
figure;plot(Doutw);

% 定义采样频率和截止频率


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%原始信号加窗处理后的频域图%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%performing FFT 
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

figure;plot(x_initial,y_initial)
grid on; 
title(['FFT PLOT ']); 
xlabel('ANALOG INPUT FREQUENCY(MHz)'); 
ylabel('AMPLITUDE(dB)'); 
axis([0 inf -110 0]);