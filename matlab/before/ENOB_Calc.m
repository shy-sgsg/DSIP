
code=double(adc_data_mux);

numpt=length(code); 
numbit=12; 
%A is the ratio of input signal scale compared to full scale
A=(max(code)-min(code))/2^numbit;

Dout=code-(2^numbit-1)/2; 

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
Doutw=Dout.*blackmanharris(numpt);

%performing FFT 
Dout_spect=fft(Doutw,numpt); 
%recalculate to dB 
Dout_dB=20*log10(abs(Dout_spect)); 
% Dout_dB(1)=Dout_dB(1)-6.02;
% for i=1:numpt
%     if Dout_dB(i)<-200
%         Dout_dB(i)=-200;
%     end
% end

maxdB=max(Dout_dB(2:numpt/2)); 
%find the signal bin number, DC=bin 1 
fin=find(Dout_dB(1:numpt/2)==maxdB); 
span=9; 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Dout_dB(1:span+1)=-200;
% if fin<=span
%     fin=span+1;
% end
% Dout_dB(fin-span:fin+span)=-200;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%determine power spectrum 
spectP=(abs(Dout_spect)).*(abs(Dout_spect)); 
%find DC offset power 
Pdc=sum(spectP(1:span)); 
%extract overall signal power 
Ps=sum(spectP(max(fin-span,1):fin+span));

SINAD=10*log10(Ps/(sum(spectP(1:numpt/2))-Pdc-Ps));
% ENOB =(SINAD+20*log10(1/A)-1.76)/6.0206;
ENOB =(SINAD-1.76)/6.0206;
% fprintf('SINAD=%g dB \n',SINAD); 
% fprintf('ENOB=%g bit \n',ENOB);