global fname;
global fclk;
fprintf('filename=%s\n',fname);
code=double(adc_data_mux);

numpt=length(code);   
numbit=12; %ADC位宽
harm_nums=15; %考虑的谐波数量

N=length(code);  %数据点的数量

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%绘制原始信号时域图%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
figure; %%%%%%%%%%%%%%%%%%%%%%
plot([1:N],code); %%%%%%%%%%%%%%%%%%%%%%%
title('TIME DOMAIN') 
xlabel('SAMPLES'); 
ylabel('DIGITAL OUTPUT CODE'); 
zoom xon; 



%%%%%%%%%%%%%%%%%%%%%%%%%绘制输入的原始信号频谱图%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
Dout_spect = fft(code, numpt);
% 将 FFT 结果转换为分贝（dB）
Dout_dB = 20 * log10(abs(Dout_spect));
% 限制最小值为 -200 dB
for i = 1:numpt
    if Dout_dB(i) < -200
        Dout_dB(i) = -200;
    end
end
figure;
maxdB = max(Dout_dB(2:numpt/2));
plot([0:numpt/2-1] * fclk / numpt, Dout_dB(1:numpt/2) - maxdB);
grid on;
title('FFT PLOT');
xlabel('ANALOG INPUT FREQUENCY (MHz)');
ylabel('AMPLITUDE (dB)');
axis([0 fclk/2 -110 0]); % 设置频率范围为 0 到 fclk/2（Nyquist频率），单位为 MHz




%计算理想正弦波的功率
%生成一个理想正弦波，并计算其功率。
%使用Blackman-Harris窗函数对理想正弦波进行加窗处理。
%计算理想正弦波的FFT频谱，并将其转换为分贝（dB）numbit为位宽
idea_dout=(2^numbit)/2*sin((0:(2*pi/124.6427):(numpt-1)*2*pi/124.6427)')+(2^numbit-1)/2;
idea_dout=round(idea_dout)-(2^numbit-1)/2;
idea_doutw=idea_dout.*blackmanharris(length(idea_dout));
idea_spect=fft(idea_doutw,length(idea_dout));
idea_dB=20*log10(abs(idea_spect));
% idea_power=max(idea_dB(2:length(idea_dout)/2));
idea_spectP=(abs(idea_spect)).*(abs(idea_spect));
idea_power=sum(idea_spectP(1:length(idea_dout)/2));


%将ADC数据重新中心化（减去均值）。
%使用Blackman-Harris窗函数对数据进行加窗处理。
Dout=code-mean(code);   %mean（code）为其直流分量，不懂得问陈振
Doutw=Dout.*(blackmanharris(numpt));
%if no window functionis used,the input tone must be chosen 
%to be unique and with regard to the sampling freq.To achieve 
%this, prime numbers are introduced and the input tone is 
%determined by fIN=fSAMPLE*(Prime Number/Data record size). 
%To relax this requirement,window functions such as HANNING 
%HAMING can be introduced,however the fundamental in the 
%resulting FFT spectrum appears 'sharper' without 
%the use of window functions. 
% Doutw=Dout; 
%Doutw=Dout.*hanning(numpt); 
%Doutw=Dout.*hamming(numpt); 

%plot(Doutw)


% 
%%%%%%%%%%%%%%blackmanharris窗函数的的时域与频域图%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Dout_black=(blackmanharris(numpt));
% plot(Dout_black)
% Dout_black=fft(Dout_black,numpt); 
% Dout_dB=20*log10(abs(Dout_black)); 
% 
% for i=1:numpt
%     if Dout_dB(i)<-200
%         Dout_dB(i)=-200;
%     end
% end
% %plot([0:numpt/2-1].*fclk/numpt,Dout_dB(1:numpt/2)); 


% figure; 
% maxdB=max(Dout_dB(2:numpt/2));  %将最大值调整到为0dB
% %%for TTIMD,use the following short routine,normalized to -6.5dB 
% %full scale. 
% %plot([0:numpt/2-1].*fclk/numpt,Dout_dB(1:numpt/2)-maxdB-6.5); 
% plot([0:numpt/2-1].*fclk/numpt,Dout_dB(1:numpt/2)-maxdB); 
% grid on; 
% title(['FFT PLOT ']); 
% xlabel('ANALOG INPUT FREQUENCY(MHz)'); 
% ylabel('AMPLITUDE(dB)'); 
% axis([0 inf -110 0]);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%







%performing FFT 
Dout_spect=fft(Doutw,numpt); 
%recalculate to dB 
Dout_dB=20*log10(abs(Dout_spect)); 

for i=1:numpt
    if Dout_dB(i)<-200
        Dout_dB(i)=-200;
    end
end
%plot([0:numpt/2-1].*fclk/numpt,Dout_dB(1:numpt/2)); 
figure; 
maxdB=max(Dout_dB(2:numpt/2));  %将最大值调整到为0dB

%%for TTIMD,use the following short routine,normalized to -6.5dB 
%full scale. 
%plot([0:numpt/2-1].*fclk/numpt,Dout_dB(1:numpt/2)-maxdB-6.5); 
plot([0:numpt/2-1].*fclk/numpt,Dout_dB(1:numpt/2)-maxdB); 
% plot([1:numpt].*fclk/numpt,Dout_dB(1:numpt)-maxdB); 

grid on; 
title(['FFT PLOT ']); 
xlabel('ANALOG INPUT FREQUENCY(MHz)'); 
ylabel('AMPLITUDE(dB)'); 
axis([0 inf -110 0]);






%-----------------------------------------------% 
%calculate SNR,SINAD,ENOB,THD and SFDR values 
%计算信噪比，信噪失真比，有效位数，总谐波失真，无动态杂散范围
%Blackman-Harris窗是一种四项系数的加权余弦窗，具有较低的旁瓣电平（-92 dB）和较窄的主瓣宽度，能够有效抑制频谱泄漏
%SNR=10lg (ps/pn) ps 信号功率 pn 噪声功率
%SINAD=10lg  (ps/(pn+pd)) pd 失真功率
%ENOB= (SINAD-1.76)/6.02
%THD=10lg (pd/ps) pd 谐波分量总功率
%SFDR=10lg(ps/pspur) pspur 是最大杂散分量的功率​
 


%-----------------------------------------------% 
%find the signal bin number, DC=bin 1 
% 找到最大值对应的频率点索引，表示信号的频率
fin=find(Dout_dB(1:numpt/2)==maxdB); 
%Span of the input freq on each side 
%设置信号频率两侧的范围，用于避免信号和直流分量的干扰。主要在初始位置和频率旁边
%将频率范围内的值设置为-200 dB，以避免干扰。
span=8; 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
Dout_dB(1:span+1)=-200;
if fin<=span
    fin=span+1;
end
Dout_dB(fin-span:fin+span)=-200;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%




%approximate search span for harmonics on each side 
spanh=3;  %设置谐波搜索的范围
spanh_calc=spanh;  %=3



%spectP：FFT频谱的功率谱。
%Pdc：直流分量的功率。
%Ps：信号的功率。
%这一段的计算都用的是Dout_spect (并非Dout_dB)

spectP=(abs(Dout_spect)).*(abs(Dout_spect));  %频谱幅度的平方
%find DC offset power 
Pdc=sum(spectP(1:span)); %Pdc：直流分量的功率，通过累加频谱前 span 个点的功率得到。
%extract overall signal power 
Ps=sum(spectP(fin-span:fin+span)); %信号的功率，通过累加信号频率附近 span 范围内的功率得到





%寻找谐波频率和功率
%har_nums：考虑的谐波数量。
%tone：谐波的频率位置。
%Fh：存储每个谐波的频率。
%Ph：存储每个谐波的功率。



%-----%%%%%%%%%%这段代码的主要功能是在FFT频谱中搜索信号的谐波分量，并计算每个谐波的频率和功率%%%%%%%%%%%%%%%%%


Fh=[]; %存储谐波的频率
%the 1st element in the vector/matrix represents the signal, 
%the next element reps the 2nd harmonic,etc.. 
Ph=[];  %存储每个谐波的功率
%find harmonic freq and power components in the FFT spectrum 
for har_num=1:harm_nums  %harm_num = 15个谐波
%input tones greater than fSAMPLE are aliased back into the spectrum 
tone=rem((har_num*(fin-1)+1)/numpt,1); %tone：谐波的频率位置。
      if tone>0.5 
%input tones greater than 0.5*fSAMPLE(after aliasing) are reflected 
      tone=1-tone; 
      end 
Fh=[Fh tone]; 
%for this procedure to work,ensure the folded back high order harmonics 
%do not overlap 
%with DC or signal or lower order harmonics 
fstart=round(tone*numpt)-spanh;
     if fstart<1
        fstart=1;
     end
fstop=round(tone*numpt)+spanh;
     if fstop>numpt/2+1
        fstop=numpt/2+1;
     end
%spectP(round(tone*numpt)-spanh:round(tone*numpt)+spanh)
har_peak=max(spectP(fstart:fstop));   %在 fstart 到 fstop 范围内找到谐波的最大功率值
har_bin=find(spectP(fstart:fstop)==har_peak);  %找到谐波峰值对应的频率点索引
har_bin=har_bin+fstart-1;     %将局部索引转换为全局索引
fstart=har_bin-spanh_calc;
     if fstart<1
        fstart=1;
     end
fstop=har_bin+spanh_calc; %以谐波峰值为中心，重新确定计算功率的范围
    if fstop>numpt/2+1
        fstop=numpt/2+1;
    end
Ph=[Ph sum(spectP(fstart:fstop))];  %计算谐波功率，并将其存储到 Ph 中
end 

%-----------------------------%%%%%%%%%%%%%%%%%%%%%%%%%%%%%----------------------------------------------------


%determine the total distortion power 
%总失真功率，包括2到10阶谐波的功率
Pd=sum(Ph(2:10)); %**************



%determine the noise power 
%Pn：噪声功率，从总功率中减去直流分量、信号功率和失真功率。
Pn=sum(spectP(1:numpt/2))-Pdc-Ps-Pd;
if(Pn<0)
    Pn=Ps*1e-18;
end







A=(max(code)-min(code))/2^numbit;
%A=2*Ps^0.5/(2^numbit-1);
AdB=20*log10(A);
fprintf('Amplitude=%gdB, %g%%\n',AdB,A*100);
fprintf('SigPower=%gdB, %g%%\n',10*log10((Ps+Pd)/idea_power),((Ps+Pd)/idea_power)^0.5*100);
fprintf('average=%gLSB\n',sum(Dout)/length(Dout));
% fprintf('average=%gLSB\n',(sum(Dout)/length(Dout))/16);
fprintf('Sampling Frequency=%gMHz\n',fclk/1e6);
fprintf('Input Frequency=%gMHz\n',(fin-1)/numpt*fclk/1e6);

%性能计算
SINAD=10*log10(Ps/(sum(spectP(1:numpt/2))-Pdc-Ps));
SNR=10*log10(Ps/Pn); 
disp('THD is calculated from 2nd through 10th order harmonics'); 
THD=10*log10(Pd/Ph(1)); 
SFDR=10*log10(Ph(1)/max(Ph(2:harm_nums))); 

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%SFDR2：另一种无杂散动态范围的计算方法，考虑最大杂散分量。
maxdB2=max(Dout_dB(2:numpt/2)); 
fspur=find(Dout_dB(1:numpt/2)==maxdB2); 
if fspur<=spanh
    fspur=spanh+1;
end
Ph_spur=sum(spectP(fspur-spanh:fspur+spanh)); %Ph_spur：表示频谱中最大杂散分量的功率

%fspur：最大杂散分量对应的频率点索引。
%spectP：FFT 频谱的功率谱（即频谱幅度的平方）。
%spanh：杂散分量搜索的范围（左右各取 spanh 个点）

SFDR2=10*log10(Ph(1)/Ph_spur);   %Ph(1)为信号功率
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

disp('Signal & Harmonic power components:'); 
HD=10*log10(Ph(1:harm_nums)/Ph(1)); 
%计算有效位数（ENOB）
ENOB =(SINAD-1.76-10*log10(Ps/idea_power))/6.0206;
%distinguish all harmonics locations within the FFT plot 
hold on; 

fprintf('SINAD=%gdB \n',SINAD); 
fprintf('SNR=%gdB \n',SNR); 
fprintf('THD=%gdB \n',THD); 
fprintf('SFDR=%gdB \n',SFDR); 
fprintf('SFDR2=%gdB \n',SFDR2); 
fprintf('ENOB=%g \n\n',ENOB); 

plot(Fh(2)*fclk,0,'mo',Fh(3)*fclk,0,'cx',Fh(4)*fclk,0,'r+',Fh(5)*fclk,0,'g*',Fh(6)*fclk,0,'bs',Fh(7)*fclk,0,'bd',Fh(8)*fclk,0,'kv',Fh(9)*fclk,0,'y^');

legend('1st','2nd','3rd','4th','5th','6th','7th','8th','9th'); 