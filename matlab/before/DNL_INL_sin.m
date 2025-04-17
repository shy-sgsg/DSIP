global fname;
y=adc_data_mux;
% histogram boundaries
minbin=min(y);
maxbin=max(y);
% histogram
h = hist(y, minbin:maxbin);

% cumulative histogram
ch = cumsum(h);

% transition levels
T = -cos(pi*ch/sum(h));

% linearized histogram
hlin = T(2:end) - T(1:end-1);

% truncate at least first and last
% bin, more if input did not clip ADC
trunc=1;
hlin_trunc = hlin(1+trunc:end-trunc);
% calculate lsb size and dnl
lsb= sum(hlin_trunc) / (length(hlin_trunc));
dnl= [0 hlin_trunc/lsb-1];
figure;
plot(dnl);
title({fname;'dnl'})
misscodes = length(find(dnl<-0.9));
% calculate inl

inl= cumsum(dnl);
inl1=inl-(max(inl)+min(inl))/2;
figure;
plot(inl1);
title({fname;'inl'})

%dnl2(4:245)=dnl; dnl2(1:3)=dnl(5:7); dnl2(246:250)=dnl(220:2:228);dnl2(251:256)=dnl(236:1:241);
% figure(5)
% subplot(2,1,1);
% plot(dnl2);
% inl2= cumsum(dnl2);
% inl3=inl2-(max(inl2)+min(inl2))/2;
% subplot(2,1,2);
% plot(inl3);
% 
% dnl2=dnl2';
% inl3=inl3';
% save( 'dnl.txt',  'dnl2', '-ASCII');
% save( 'inl.txt',  'inl3', '-ASCII');