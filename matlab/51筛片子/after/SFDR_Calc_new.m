global fname;
global fclk;
fprintf('filename=%s\n',fname);
code=double(adc_data_mux);

numpt=length(code); 
numbit=12; 
harm_nums=15;

N=length(code); 
%%plot results in time domain 
figure; %%%%%%%%%%%%%%%%%%%%%%
plot([1:N],code); %%%%%%%%%%%%%%%%%%%%%%%
title('TIME DOMAIN') 
xlabel('SAMPLES'); 
ylabel('DIGITAL OUTPUT CODE'); 
zoom xon; 

%计算理想正弦波的功率
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
% Doutw=Dout; 
%Doutw=Dout.*hanning(numpt); 
%Doutw=Dout.*hamming(numpt); 
Doutw=Dout.*(chebwin(numpt));

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
%a1=axis;axis([a1(1) a1(2)-120 a1(4)]); 

%-----------------------------------------------% 
%calculate SNR,SINAD,ENOB,THD and SFDR values 
%-----------------------------------------------% 
%find the signal bin number, DC=bin 1 
fin=find(Dout_dB(1:numpt/2)==maxdB); 
%Span of the input freq on each side 

span=8; 
%span=max(round(numpt/15000),5);
%span=max(round(numpt/200),5); %************

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
Dout_dB(1:span+1)=-200;
if fin<=span
    fin=span+1;
end
Dout_dB(fin-span:fin+span)=-200;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%approximate search span for harmonics on each side 
spanh=3; 
spanh_calc=spanh;
%determine power spectrum 
spectP=(abs(Dout_spect)).*(abs(Dout_spect)); 
%find DC offset power 
Pdc=sum(spectP(1:span)); 
%extract overall signal power 
Ps=sum(spectP(fin-span:fin+span)); 
%vector/matric to store both freq and power of signals and harmonics 
Fh=[]; 
%the 1st element in the vector/matrix represents the signal, 
%the next element reps the 2nd harmonic,etc.. 
Ph=[]; 
%find harmonic freq and power components in the FFT spectrum 
for har_num=1:harm_nums 
%input tones greater than fSAMPLE are aliased back into the spectrum 
tone=rem((har_num*(fin-1)+1)/numpt,1); 
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

har_peak=max(spectP(fstart:fstop)); 
har_bin=find(spectP(fstart:fstop)==har_peak); 
har_bin=har_bin+fstart-1;
fstart=har_bin-spanh_calc;
if fstart<1
    fstart=1;
end
fstop=har_bin+spanh_calc;
if fstop>numpt/2+1
    fstop=numpt/2+1;
end
Ph=[Ph sum(spectP(fstart:fstop))];
end 

%determine the total distortion power 
Pd=sum(Ph(2:10)); %**************

%determine the noise power 
Pn=sum(spectP(1:numpt/2))-Pdc-Ps-Pd;
if(Pn<0)
    Pn=Ps*1e-18;
end
format; 
A=(max(code)-min(code))/2^numbit;
%A=2*Ps^0.5/(2^numbit-1);
AdB=20*log10(A);
fprintf('Amplitude=%gdB, %g%%\n',AdB,A*100);
fprintf('SigPower=%gdB, %g%%\n',10*log10((Ps+Pd)/idea_power),((Ps+Pd)/idea_power)^0.5*100);
fprintf('average=%gLSB\n',sum(Dout)/length(Dout));
% fprintf('average=%gLSB\n',(sum(Dout)/length(Dout))/16);
fprintf('Sampling Frequency=%gMHz\n',fclk/1e6);
fprintf('Input Frequency=%gMHz\n',(fin-1)/numpt*fclk/1e6);

SINAD=10*log10(Ps/(sum(spectP(1:numpt/2))-Pdc-Ps));
SNR=10*log10(Ps/Pn); 
disp('THD is calculated from 2nd through 10th order harmonics'); 
THD=10*log10(Pd/Ph(1)); 
SFDR=10*log10(Ph(1)/max(Ph(2:harm_nums))); 

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
maxdB2=max(Dout_dB(2:numpt/2)); 
fspur=find(Dout_dB(1:numpt/2)==maxdB2); 
if fspur<=spanh
    fspur=spanh+1;
end
Ph_spur=sum(spectP(fspur-spanh:fspur+spanh));
SFDR2=10*log10(Ph(1)/Ph_spur);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

disp('Signal & Harmonic power components:'); 
HD=10*log10(Ph(1:harm_nums)/Ph(1)); 
%ENOB =(SNR-1.7)/6.0206; 
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



%write test data to a excel file
fid = fopen('Test Report.xls','a+');
fprintf(fid,'%s \n',fname);
fprintf(fid,'Amplitude=%gdB, %g%%\n',AdB,A*100);
fprintf(fid,'SigPower=%gdB, %g%%\n',10*log10((Ps+Pd)/idea_power),((Ps+Pd)/idea_power)^0.5*100);
fprintf(fid,'average=%gLSB\n',sum(Dout)/length(Dout));
fprintf(fid,'Input Frequency=%gMHz\n',(fin-1)/numpt*fclk/1e6);
fprintf('Sampling Frequency=%gMHz\n',fclk/1e6);
fprintf(fid,'SINAD=%gdB \n',SINAD); 
fprintf(fid,'SNR=%gdB \n',SNR); 
fprintf(fid,'THD=%gdB \n',THD); 
fprintf(fid,'SFDR=%gdB \n',SFDR); 
fprintf(fid,'SFDR2=%gdB \n',SFDR2); 
fprintf(fid,'ENOB=%g \n\n',ENOB);
fprintf(fid,'\n');
fclose(fid);