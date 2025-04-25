
global fname;
global fclk;
fprintf('filename=%s\n',fname);
code=double(adc_data_mux);
% code = code(5001:55000,:);
% code = code(40001:80000,:);

numpt=length(code); 
numbit=12; 
harm_nums=15;

N=length(code); 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%时域信号%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
figure; %%%%%%%%%%%%%%%%%%%%%%
plot([1:N],code); %%%%%%%%%%%%%%%%%%%%%%%
title('TIME DOMAIN') 
xlabel('SAMPLES'); 
ylabel('DIGITAL OUTPUT CODE'); 
zoom xon; 

% 


code_h = hilbert(code);
%figure;plot(phase(code_h))


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%未进行加窗处理的原始信号相位曲线%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% an_sig = hilbert(code);
% % hle=  phase(an_sig);
% hle = unwrap(angle(an_sig));
% figure;
% x = 1:1:65536;
% plot(x,hle)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%原始频域信号%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Dout_spect_initial = fft(code, numpt);
% 
% % 将 FFT 结果转换为分贝（dB）
% Dout_dB_initial = 20 * log10(abs(Dout_spect_initial));
% 
% % 限制最小值为 -200 dB
% for i = 1:numpt
%     if Dout_dB_initial(i) < -200
%         Dout_dB_initial(i) = -200;
%     end
% end
% %%% 绘制未加窗的原始信号频谱图
% figure;
% maxdB_initial = max(Dout_dB_initial(2:numpt/2));
% plot([0:numpt/2-1] * fclk / numpt, Dout_dB_initial(1:numpt/2) - maxdB_initial);
% grid on;
% title('FFT PLOT initial');
% xlabel('ANALOG INPUT FREQUENCY (MHz)');
% ylabel('AMPLITUDE (dB)');
% axis([0 fclk/2 -110 0]); % 设置频率范围为 0 到 fclk/2（Nyquist频率），单位为 MHz



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

% code=idea_dout+(2^numbit-1)/2;

%recenter the digital sinewave 
% Dout=code-(2^numbit-1)/2; 
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





%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%原始信号加窗处理后的频域图%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
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
figure; 
maxdB=max(Dout_dB(2:numpt/2)); 
%%for TTIMD,use the following short routine,normalized to -6.5dB 
%full scale. 
%plot([0:numpt/2-1].*fclk/numpt,Dout_dB(1:numpt/2)-maxdB-6.5); 
plot([0:numpt/2-1].*fclk/numpt,Dout_dB(1:numpt/2)-maxdB); 
grid on; 
title(['FFT PLOT ']); 
xlabel('ANALOG INPUT FREQUENCY(MHz)'); 
ylabel('AMPLITUDE(dB)'); 
axis([0 inf -110 0]);




plot([0:numpt/2-1].*fclk/numpt,Dout_dB(1:numpt/2)-maxdB); 
grid on; 
title(['FFT PLOT ']); 
xlabel('ANALOG INPUT FREQUENCY(MHz)'); 
ylabel('AMPLITUDE(dB)'); 
axis([0 inf -110 0]);



% f = linspace(-1e9,1e9,262144);

% f = linspace(0,2e9,65536);
y_initial_1 = Dout_dB-maxdB;
f = linspace(0,2e9,length(y_initial_1));
figure;plot(f',y_initial_1)
% figure;plot(x_xiufu,y_initial_1)
grid on; 
title(['FFT PLOT ']); 
xlabel('ANALOG INPUT FREQUENCY(MHz)'); 
ylabel('AMPLITUDE(dB)'); 
axis([0 inf -110 0]);
xlim([1e9 1.805e9])

% %-----------------------------------------------% 
% %calculate SNR,SINAD,ENOB,THD and SFDR values 
% %-----------------------------------------------% 
% %find the signal bin number, DC=bin 1 
% fin=find(Dout_dB(1:numpt/2)==maxdB); 
% %Span of the input freq on each side 
% 
% span=8; 
% %span=max(round(numpt/15000),5);
% %span=max(round(numpt/200),5); %************
% 
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Dout_dB(1:span+1)=-200;
% if fin<=span
%     fin=span+1;
% end
% Dout_dB(fin-span:fin+span)=-200;
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 
% %approximate search span for harmonics on each side 
% spanh=3; 
% spanh_calc=spanh;
% %determine power spectrum 
% spectP=(abs(Dout_spect)).*(abs(Dout_spect)); 
% %find DC offset power 
% Pdc=sum(spectP(1:span)); 
% %extract overall signal power 
% Ps=sum(spectP(fin-span:fin+span)); 
% %vector/matric to store both freq and power of signals and harmonics 
% Fh=[]; 
% %the 1st element in the vector/matrix represents the signal, 
% %the next element reps the 2nd harmonic,etc.. 
% Ph=[]; 
% %find harmonic freq and power components in the FFT spectrum 
% for har_num=1:harm_nums 
% %input tones greater than fSAMPLE are aliased back into the spectrum 
% tone=rem((har_num*(fin-1)+1)/numpt,1); 
% if tone>0.5 
% %input tones greater than 0.5*fSAMPLE(after aliasing) are reflected 
% tone=1-tone; 
% end 
% Fh=[Fh tone]; 
% %for this procedure to work,ensure the folded back high order harmonics 
% %do not overlap 
% %with DC or signal or lower order harmonics 
% 
% fstart=round(tone*numpt)-spanh;
% if fstart<1
%     fstart=1;
% end
% fstop=round(tone*numpt)+spanh;
% if fstop>numpt/2+1
%     fstop=numpt/2+1;
% end
% %spectP(round(tone*numpt)-spanh:round(tone*numpt)+spanh)
% 
% har_peak=max(spectP(fstart:fstop)); 
% har_bin=find(spectP(fstart:fstop)==har_peak); 
% har_bin=har_bin+fstart-1;
% fstart=har_bin-spanh_calc;
% if fstart<1
%     fstart=1;
% end
% fstop=har_bin+spanh_calc;
% if fstop>numpt/2+1
%     fstop=numpt/2+1;
% end
% Ph=[Ph sum(spectP(fstart:fstop))];
% end 
% 
% %determine the total distortion power 
% Pd=sum(Ph(2:10)); %**************
% 
% %determine the noise power 
% Pn=sum(spectP(1:numpt/2))-Pdc-Ps-Pd;
% if(Pn<0)
%     Pn=Ps*1e-18;
% end
% format; 
% A=(max(code)-min(code))/2^numbit;
% %A=2*Ps^0.5/(2^numbit-1);
% AdB=20*log10(A);
% fprintf('Amplitude=%gdB, %g%%\n',AdB,A*100);
% fprintf('SigPower=%gdB, %g%%\n',10*log10((Ps+Pd)/idea_power),((Ps+Pd)/idea_power)^0.5*100);
% fprintf('average=%gLSB\n',sum(Dout)/length(Dout));
% % fprintf('average=%gLSB\n',(sum(Dout)/length(Dout))/16);
% fprintf('Sampling Frequency=%gMHz\n',fclk/1e6);
% fprintf('Input Frequency=%gMHz\n',(fin-1)/numpt*fclk/1e6);
% 
% SINAD=10*log10(Ps/(sum(spectP(1:numpt/2))-Pdc-Ps));
% SNR=10*log10(Ps/Pn); 
% disp('THD is calculated from 2nd through 10th order harmonics'); 
% THD=10*log10(Pd/Ph(1)); 
% SFDR=10*log10(Ph(1)/max(Ph(2:harm_nums))); 
% 
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% maxdB2=max(Dout_dB(2:numpt/2)); 
% fspur=find(Dout_dB(1:numpt/2)==maxdB2); 
% if fspur<=spanh
%     fspur=spanh+1;
% end
% Ph_spur=sum(spectP(fspur-spanh:fspur+spanh));
% SFDR2=10*log10(Ph(1)/Ph_spur);
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 
% disp('Signal & Harmonic power components:'); 
% HD=10*log10(Ph(1:harm_nums)/Ph(1)); 
% %ENOB =(SNR-1.7)/6.0206; 
% ENOB =(SINAD-1.76-10*log10(Ps/idea_power))/6.0206;
% %distinguish all harmonics locations within the FFT plot 
% hold on; 
% 
% fprintf('SINAD=%gdB \n',SINAD); 
% fprintf('SNR=%gdB \n',SNR); 
% fprintf('THD=%gdB \n',THD); 
% fprintf('SFDR=%gdB \n',SFDR); 
% fprintf('SFDR2=%gdB \n',SFDR2); 
% fprintf('ENOB=%g \n\n',ENOB); 
% 
% plot(Fh(2)*fclk,0,'mo',Fh(3)*fclk,0,'cx',Fh(4)*fclk,0,'r+',Fh(5)*fclk,0,'g*',Fh(6)*fclk,0,'bs',Fh(7)*fclk,0,'bd',Fh(8)*fclk,0,'kv',Fh(9)*fclk,0,'y^');
% legend('1st','2nd','3rd','4th','5th','6th','7th','8th','9th'); 








%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%看加窗后的相位线性度图%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 该步骤必须要先进行加窗处理 才能获取其相位%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
an_sig = hilbert(Doutw);
%figure;plot(phase(an_sig))
hle = unwrap(angle(an_sig));
% hle = angle(an_sig);
figure;
% x_hm = 1:1:262144;
x_hm = 1:1:length(hle);
plot(x_hm,hle)

px_hm = polyfit(x_hm,hle,1);%求多项式系数
hle_linear = polyval(px_hm,x_hm); %多项式计算

c_x = hle - hle_linear.'; %计算残差
figure;plot(x_hm,c_x);%获取残差曲线


% c_x = c_x*0.9;
% xlim([4000 46000])
% c_x_1 = c_x(10000:250000,:);




% c_x = smooth(c_x,40);
% figure;plot(c_x_1);%获取残差曲线
% 
% c_x_8_jg = c_x_8(40001:80000,:);
% c_x_8_jg_sm = smooth(c_x_8_jg,40);
% figure;plot(c_x_8_jg);%获取残差曲线


code_cx = code_h.* exp(-1j*c_x);  %补偿回原始信号复数域
code_cpst = real(code_cx); %获取实部信号
figure;plot(code_cpst) %绘制补偿后的结果
% xlim([10000 250000])
% numpt = 40000;


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%求平均后的校准补偿%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% code_cx = code_h.* exp(-1j*c_x_5);  %补偿回原始信号复数域
% code_cpst = real(code_cx); %获取实部信号
% figure;plot(code_cpst) %绘制补偿后的结果


% figure;plot(c_average)
% c_zj = [];
% c_zj = c_average(10001:50000,:);
% figure;plot(c_zj)
% 
% 
% code_h_zj = code_h(10001:50000,:);
% code_cx = code_h_zj.* exp(-1j*c_zj);  %补偿回原始信号复数域
% code_cpst = real(code_cx); %获取实部信号
% figure;plot(code_cpst) %绘制补偿后的结果
% 
% numpt = 40000;



%%计算求得相位的误差曲线
% p1 = 1.8846; %1.4G
% p2 = 1.5268;
% % 
% % p1 = 0.3138;  %1.9G
% % p2 = -1.5619;
% 
% % p1 = 0.3555; %113.147M
% % p2 = 2.0210;
% y_data = x_hm * p1+p2;
% y_data = y_data';
% wucha = hle - y_data;
% figure;
% plot(x_hm,wucha)





%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%code_cpst补偿后加窗处理后的时域信号图%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%计算理想正弦波的功率   加窗处理后的时域信号图
idea_dout=(2^numbit)/2*sin((0:(2*pi/124.6427):(numpt-1)*2*pi/124.6427)')+(2^numbit-1)/2;
idea_dout=round(idea_dout)-(2^numbit-1)/2;
idea_doutw=idea_dout.*blackmanharris(length(idea_dout));
idea_spect=fft(idea_doutw,length(idea_dout));
idea_dB=20*log10(abs(idea_spect));
% idea_power=max(idea_dB(2:length(idea_dout)/2));
idea_spectP=(abs(idea_spect)).*(abs(idea_spect));
idea_power=sum(idea_spectP(1:length(idea_dout)/2));

% code=idea_dout+(2^numbit-1)/2;

%recenter the digital sinewave 
% Dout=code-(2^numbit-1)/2; 
Dout_cpst=code_cpst-mean(code_cpst);
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
Doutw_cpst=Dout_cpst.*(blackmanharris(numpt));

%performing FFT 加窗处理后的频域图
Dout_spect_cpst=fft(Doutw_cpst,numpt); 
%recalculate to dB 
Dout_dB_cpst=20*log10(abs(Dout_spect_cpst)); 

for i=1:numpt
    if Dout_dB_cpst(i)<-200
        Dout_dB_cpst(i)=-200;
    end
end
%plot([1:N/2],Dout_dB(1:N/2)); 
%display the results in the frequency domain with FFT plot 
figure; 
maxdB_cpst=max(Dout_dB_cpst(2:numpt/2)); 
%%for TTIMD,use the following short routine,normalized to -6.5dB 
%full scale. 
%plot([0:numpt/2-1].*fclk/numpt,Dout_dB(1:numpt/2)-maxdB-6.5); 
plot([0:numpt/2-1].*fclk/numpt,Dout_dB_cpst(1:numpt/2)-maxdB_cpst); 
grid on; 
title(['FFT PLOT ']); 
xlabel('ANALOG INPUT FREQUENCY(MHz)'); 
ylabel('AMPLITUDE(dB)'); 
axis([0 inf -110 0]);







%%%%%获取补偿后的信号的残差曲线…%%%%%%%%%%%%%%%%%%%%%%%
an_sig = hilbert(Doutw_cpst);
%figure;plot(phase(an_sig))
hle = unwrap(angle(an_sig));
% hle = angle(an_sig);
figure;
% x_hm = 1:1:262144;
x_hm = 1:1:length(hle);
plot(x_hm,hle)

px_hm = polyfit(x_hm,hle,1);%求多项式系数
hle_linear = polyval(px_hm,x_hm); %多项式计算

c_x = hle - hle_linear.'; %计算残差

figure;plot(x_hm,c_x);%获取残差曲线







% c_x_1 = c_x;
% 
% c_x_2 = c_x;
% c_x_3 = c_x;
% c_x_4 = c_x;
% c_x_5 = c_x;
% c_x_6 = c_x;
% c_x_7 = c_x;
% c_x_8 = c_x;
% c_x_9 = c_x;
% c_x_10 = c_x;
% c_x_11 = c_x;
% c_x_12 = c_x;
% c_x_13 = c_x;
% c_x_14 = c_x;
% c_x_15 = c_x;
% c_x_16 = c_x;
% c_x_17 = c_x;
% c_x_18 = c_x;
% c_x_19 = c_x;
% c_x_20 = c_x;
% 
% 
% 
% 
% 
% c_total = c_x_1+c_x_2+c_x_3+c_x_4+c_x_5+c_x_6+c_x_7+c_x_8+c_x_9+c_x_10+c_x_11+c_x_12+c_x_13+c_x_14+c_x_15+c_x_16+c_x_17+c_x_18+c_x_19+c_x_20;
% 
% c_average = c_total/20;
% 
% 
% c_x_1_new = c_x_1(40001:240000,:);
% c_x_2_new = c_x_2(40001:240000,:);
% c_x_3_new = c_x_3(40001:240000,:);
% c_x_4_new = c_x_4(40001:240000,:);
% c_x_5_new = c_x_5(40001:240000,:);
% c_x_6_new = c_x_6(40001:240000,:);
% c_x_7_new = c_x_7(40001:240000,:);
% c_x_8_new = c_x_8(40001:240000,:);
% c_x_9_new = c_x_9(40001:240000,:);
% c_x_10_new = c_x_10(40001:240000,:);
% 
% 
% x_new = 1:1:200000;
% 
% figure;plot(x_hm,c_x_1,'r',x_hm,c_x_2,'b',x_hm,c_x_3,'g',x_hm,c_x_4,'y',x_hm,c_x_5,'m');%获取残差曲线
% hold on
% plot(x_hm,c_x_6,'r--',x_hm,c_x_7,'b--',x_hm,c_x_8,'g--',x_hm,c_x_9,'y--',x_hm,c_x_10,'m--');
% 
% 
% figure;plot(x_new,c_x_1_new,'r-',x_new,c_x_2_new,'b-',x_new,c_x_3_new,'g-',x_new,c_x_4_new,'y-',x_new,c_x_5_new,'m-');%获取残差曲线
% hold on
% plot(x_new,c_x_6_new,'r--',x_new,c_x_7_new,'b--',x_new,c_x_8_new,'g--',x_new,c_x_9_new,'y--',x_new,c_x_10_new,'m--');
% 
% legend('test1','test2','test3','test4','test5','test6','test7','test8','test9','test10')
% 
% 
% figure;plot(x_new,c_x_1_new);
% figure;plot(x_new,c_x_2_new);
% figure;plot(x_new,c_x_3_new);
% figure;plot(x_new,c_x_4_new);
% figure;plot(x_new,c_x_5_new);
% figure;plot(x_new,c_x_6_new);
% figure;plot(x_new,c_x_7_new);
% figure;plot(x_new,c_x_8_new);
% figure;plot(x_new,c_x_9_new);
% figure;plot(x_new,c_x_10_new);



%a1=axis;axis([a1(1) a1(2)-120 a1(4)]); 

%-----------------------------------------------% 
%calculate SNR,SINAD,ENOB,THD and SFDR values 
%-----------------------------------------------% 
%find the signal bin number, DC=bin 1 
fin_cpst=find(Dout_dB_cpst(1:numpt/2)==maxdB_cpst); 
%Span of the input freq on each side 

span_cpst=8; 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
Dout_dB_cpst(1:span_cpst+1)=-200;
if fin_cpst<=span_cpst
    fin_cpst=span_cpst+1;
end
Dout_dB_cpst(fin_cpst-span_cpst:fin_cpst+span_cpst)=-200;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%approximate search span for harmonics on each side 
spanh_cpst=3; 
spanh_calc_cpst=spanh_cpst;
%determine power spectrum 
spectP_cpst=(abs(Dout_spect)).*(abs(Dout_spect)); 
%find DC offset power 
Pdc_cpst=sum(spectP_cpst(1:span_cpst)); 
%extract overall signal power 
Ps_cpst=sum(spectP_cpst(fin_cpst-span_cpst:fin_cpst+span_cpst)); 
%vector/matric to store both freq and power of signals and harmonics 
Fh_cpst=[]; 
%the 1st element in the vector/matrix represents the signal, 
%the next element reps the 2nd harmonic,etc.. 
Ph_cpst=[]; 
%find harmonic freq and power components in the FFT spectrum 
for har_num_cpst=1:harm_nums 
%input tones greater than fSAMPLE are aliased back into the spectrum 
tone_cpst=rem((har_num_cpst*(fin_cpst-1)+1)/numpt,1); 
if tone_cpst>0.5 
%input tones greater than 0.5*fSAMPLE(after aliasing) are reflected 
tone_cpst=1-tone_cpst; 
end 
Fh_cpst=[Fh_cpst tone_cpst]; 
%for this procedure to work,ensure the folded back high order harmonics 
%do not overlap 
%with DC or signal or lower order harmonics 

fstart_cpst=round(tone_cpst*numpt)-spanh_cpst;
if fstart_cpst<1
    fstart_cpst=1;
end
fstop_cpst=round(tone_cpst*numpt)+spanh_cpst;
if fstop_cpst>numpt/2+1
    fstop_cpst=numpt/2+1;
end
%spectP(round(tone*numpt)-spanh:round(tone*numpt)+spanh)

har_peak_cpst=max(spectP_cpst(fstart_cpst:fstop_cpst)); 
har_bin_cpst=find(spectP_cpst(fstart_cpst:fstop_cpst)==har_peak_cpst); 
har_bin_cpst=har_bin_cpst+fstart_cpst-1;
fstart_cpst=har_bin_cpst-spanh_calc_cpst;
if fstart_cpst<1
    fstart_cpst=1;
end
fstop_cpst=har_bin_cpst+spanh_calc_cpst;
if fstop_cpst>numpt/2+1
    fstop_cpst=numpt/2+1;
end
Ph_cpst=[Ph_cpst sum(spectP_cpst(fstart_cpst:fstop_cpst))];
end 

%determine the total distortion power 
Pd_cpst=sum(Ph_cpst(2:10)); %**************

%determine the noise power 
Pn_cpst=sum(spectP_cpst(1:numpt/2))-Pdc_cpst-Ps_cpst-Pd_cpst;
if(Pn_cpst<0)
    Pn_cpst=Ps_cpst*1e-18;
end
format; 
A_cpst=(max(code)-min(code))/2^numbit;
%A=2*Ps^0.5/(2^numbit-1);
AdB_cpst=20*log10(A_cpst);
% fprintf('Amplitude_cpst=%gdB, %g%%\n',AdB_cpst,A_cpst*100);
% fprintf('SigPower_cpst=%gdB, %g%%\n',10*log10((Ps_cpst+Pd_cpst)/idea_power),((Ps_cpst+Pd_cpst)/idea_power)^0.5*100);
% fprintf('average_cpst=%gLSB\n',sum(Dout_cpst)/length(Dout_cpst));
% fprintf('average=%gLSB\n',(sum(Dout)/length(Dout))/16);
% fprintf('Sampling Frequency_cpst =%gMHz\n',fclk/1e6);
% fprintf('Input Frequency_cpst =%gMHz\n',(fin_cpst-1)/numpt*fclk/1e6);

SINAD_cpst=10*log10(Ps_cpst/(sum(spectP_cpst(1:numpt/2))-Pdc_cpst-Ps_cpst));
SNR_cpst=10*log10(Ps_cpst/Pn_cpst); 
% disp('THD is calculated from 2nd through 10th order harmonics'); 
THD_cpst=10*log10(Pd_cpst/Ph_cpst(1)); 
SFDR_cpst=10*log10(Ph_cpst(1)/max(Ph_cpst(2:harm_nums))); 

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
maxdB2_cpst=max(Dout_dB_cpst(2:numpt/2)); 
fspur_cpst=find(Dout_dB_cpst(1:numpt/2)==maxdB2_cpst); 
if fspur_cpst<=spanh_cpst
    fspur_cpst=spanh_cpst+1;
end
Ph_spur_cpst=sum(spectP_cpst(fspur_cpst-spanh_cpst:fspur_cpst+spanh_cpst));
SFDR2_cpst=10*log10(Ph_cpst(1)/Ph_spur_cpst);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% disp('Signal & Harmonic power components:'); 
HD_cpst=10*log10(Ph_cpst(1:harm_nums)/Ph_cpst(1)); 
%ENOB =(SNR-1.7)/6.0206; 
ENOB_cpst =(SINAD_cpst-1.76-10*log10(Ps_cpst/idea_power))/6.0206;
%distinguish all harmonics locations within the FFT plot 
hold on; 

% fprintf('SINAD_cpst=%gdB \n',SINAD_cpst); 
% fprintf('SNR_cpst=%gdB \n',SNR_cpst); 
% fprintf('THD_cpst=%gdB \n',THD_cpst); 
% fprintf('SFDR_cpst=%gdB \n',SFDR_cpst); 
fprintf('SFDR2_cpst=%gdB \n',SFDR2_cpst); 
% fprintf('ENOB_cpst=%g \n\n',ENOB_cpst); 
% figure;
% plot(Fh_cpst(2)*fclk,0,'mo',Fh_cpst(3)*fclk,0,'cx',Fh_cpst(4)*fclk,0,'r+',Fh_cpst(5)*fclk,0,'g*',Fh_cpst(6)*fclk,0,'bs',Fh_cpst(7)*fclk,0,'bd',Fh_cpst(8)*fclk,0,'kv',Fh_cpst(9)*fclk,0,'y^');
% legend('1st','2nd','3rd','4th','5th','6th','7th','8th','9th'); 