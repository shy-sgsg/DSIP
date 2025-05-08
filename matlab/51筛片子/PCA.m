% clear, clc, close all
% %% 
% close all
% load code1
% Fsr = 2e9;
% code1(1:5e3) = [];
% code1(end-5e3+1:end) = [];
% pulse_len1 = length(code1);
% %% phase error estimation code1
% data1 = code1;
% ph_err1 = unwrap(angle(data1));
% tr1 = (0:pulse_len1-1)'/Fsr;
% P1 = polyfit(tr1,ph_err1,1);
% ph_err1 = ph_err1-polyval(P1,tr1);
% figure
% plot(ph_err1)
% 
% ph_fft1 = fft(ph_err1);
% ph_fft1 = ph_fft1(1:pulse_len1/2);
% x1 = [0:pulse_len1/2-1].*Fsr/pulse_len1;
% figure;plot(x1,abs(ph_fft1))
% xlim([0 2e6])
% 
% 
% 
% %% phase error estimation code2
% load code2
% Fsr = 2e9;
% code2(1:5e3) = [];
% code2(end-5e3+1:end) = [];
% pulse_len2 = length(code2);
% data2 = code2;
% ph_err2 = unwrap(angle(data2));
% tr2 = (0:pulse_len2-1)'/Fsr;
% P2 = polyfit(tr2,ph_err2,1);
% ph_err2 = ph_err2-polyval(P2,tr2);
% figure
% plot(ph_err2)
% 
% ph_fft2 = fft(ph_err2);
% ph_fft2 = ph_fft2(1:pulse_len2/2);
% x2 = [0:pulse_len2/2-1].*Fsr/pulse_len2;
% figure;plot(x2,abs(ph_fft2))
% xlim([0 2e6])
% 
% %% phase error estimation code3
% load code3
% Fsr = 2e9;
% code3(1:5e3) = [];
% code3(end-5e3+1:end) = [];
% pulse_len3 = length(code3);
% data3 = code3;
% ph_err3 = unwrap(angle(data3));
% tr3 = (0:pulse_len3-1)'/Fsr;
% P3 = polyfit(tr3,ph_err3,1);
% ph_err3 = ph_err3-polyval(P3,tr3);
% figure
% plot(ph_err3)
% 
% ph_fft3 = fft(ph_err3);
% ph_fft3 = ph_fft3(1:pulse_len3/2);
% x3 = [0:pulse_len3/2-1].*Fsr/pulse_len3;
% figure;plot(x3,abs(ph_fft3))
% xlim([0 2e6])
% 
% %% phase error estimation code4
% load code4
% Fsr = 2e9;
% code4(1:5e3) = [];
% code4(end-5e3+1:end) = [];
% pulse_len4 = length(code4);
% data4 = code4;
% ph_err4 = unwrap(angle(data4));
% tr4 = (0:pulse_len3-1)'/Fsr;
% P4 = polyfit(tr4,ph_err4,1);
% ph_err4 = ph_err4-polyval(P4,tr4);
% figure
% plot(ph_err4)
% 
% ph_fft4 = fft(ph_err4);
% ph_fft4 = ph_fft4(1:pulse_len4/2);
% x4 = [0:pulse_len4/2-1].*Fsr/pulse_len4;
% figure;plot(x4,abs(ph_fft4))
% xlim([0 2e6])
% 
% %% phase error estimation code5
% load code5
% Fsr = 2e9;
% code5(1:5e3) = [];
% code5(end-5e3+1:end) = [];
% pulse_len5 = length(code5);
% data5 = code5;
% ph_err5 = unwrap(angle(data5));
% tr5 = (0:pulse_len5-1)'/Fsr;
% P5 = polyfit(tr5,ph_err5,1);
% ph_err5 = ph_err5-polyval(P5,tr5);
% figure
% plot(ph_err5)
% 
% ph_fft5 = fft(ph_err5);
% ph_fft5 = ph_fft5(1:pulse_len5/2);
% x5 = [0:pulse_len5/2-1].*Fsr/pulse_len5;
% figure;plot(x5,abs(ph_fft5))
% xlim([0 2e6])
% 
% %% phase error estimation code6
% load code6
% Fsr = 2e9;
% code6(1:5e3) = [];
% code6(end-5e3+1:end) = [];
% pulse_len6 = length(code6);
% data6 = code6;
% ph_err6 = unwrap(angle(data6));
% tr6 = (0:pulse_len6-1)'/Fsr;
% P6 = polyfit(tr6,ph_err6,1);
% ph_err6 = ph_err6-polyval(P6,tr6);
% figure
% plot(ph_err6)
% 
% ph_fft6 = fft(ph_err6);
% ph_fft6 = ph_fft6(1:pulse_len6/2);
% x6 = [0:pulse_len6/2-1].*Fsr/pulse_len6;
% figure;plot(x6,abs(ph_fft6))
% xlim([0 2e6])
% 
% %% phase error estimation code7
% load code7
% Fsr = 2e9;
% code7(1:5e3) = [];
% code7(end-5e3+1:end) = [];
% pulse_len7 = length(code7);
% data7 = code7;
% ph_err7 = unwrap(angle(data7));
% tr7 = (0:pulse_len7-1)'/Fsr;
% P7 = polyfit(tr7,ph_err7,1);
% ph_err7 = ph_err7-polyval(P7,tr7);
% figure
% plot(ph_err7)
% 
% ph_fft7= fft(ph_err7);
% ph_fft7 = ph_fft7(1:pulse_len7/2);
% x7 = [0:pulse_len7/2-1].*Fsr/pulse_len7;
% figure;plot(x7,abs(ph_fft7))
% xlim([0 2e6])
% 
% %% phase error estimation code8
% load code8
% Fsr = 2e9;
% code8(1:5e3) = [];
% code8(end-5e3+1:end) = [];
% pulse_len8 = length(code8);
% data8 = code8;
% ph_err8 = unwrap(angle(data8));
% tr8 = (0:pulse_len8-1)'/Fsr;
% P8 = polyfit(tr8,ph_err8,1);
% ph_err8 = ph_err8-polyval(P8,tr8);
% figure
% plot(ph_err8)
% 
% ph_fft8= fft(ph_err8);
% ph_fft8 = ph_fft8(1:pulse_len8/2);
% x8 = [0:pulse_len8/2-1].*Fsr/pulse_len8;
% figure;plot(x8,abs(ph_fft8))
% xlim([0 2e6])
% 
% %% phase error estimation code9
% load code9
% Fsr = 2e9;
% code9(1:5e3) = [];
% code9(end-5e3+1:end) = [];
% pulse_len9 = length(code9);
% data9 = code9;
% ph_err9 = unwrap(angle(data9));
% tr9 = (0:pulse_len9-1)'/Fsr;
% P9 = polyfit(tr9,ph_err9,1);
% ph_err9 = ph_err9-polyval(P9,tr9);
% figure
% plot(ph_err9)
% 
% ph_fft9= fft(ph_err9);
% ph_fft9 = ph_fft9(1:pulse_len9/2);
% x9 = [0:pulse_len9/2-1].*Fsr/pulse_len9;
% figure;plot(x9,abs(ph_fft9))
% xlim([0 2e6])
% 
% 
% %% phase error estimation code10
% load code10
% Fsr = 2e9;
% code10(1:5e3) = [];
% code10(end-5e3+1:end) = [];
% pulse_len10 = length(code10);
% data10 = code10;
% ph_err10 = unwrap(angle(data10));
% tr10 = (0:pulse_len10-1)'/Fsr;
% P10 = polyfit(tr10,ph_err10,1);
% ph_err10 = ph_err10-polyval(P10,tr10);
% figure
% plot(ph_err10)
% 
% ph_fft10= fft(ph_err10);
% ph_fft10 = ph_fft10(1:pulse_len10/2);
% x10 = [0:pulse_len10/2-1].*Fsr/pulse_len10;
% figure;plot(x10,abs(ph_fft10))
% xlim([0 2e6])
% %% phase error estimation code11
% % load code11
% % Fsr = 2e9;
% % code11(1:5e3) = [];
% % code11(end-5e3+1:end) = [];
% % pulse_len11 = length(code11);
% % data11 = code11;
% % ph_err11 = unwrap(angle(data11));
% % tr11 = (0:pulse_len11-1)'/Fsr;
% % P11 = polyfit(tr11,ph_err11,1);
% % ph_err11 = ph_err11-polyval(P11,tr11);
% % figure
% % plot(ph_err11)
% % 
% % ph_fft11= fft(ph_err11);
% % ph_fft11 = ph_fft11(1:pulse_len11/2);
% % x11 = [0:pulse_len11/2-1].*Fsr/pulse_len11;
% % figure;plot(x11,abs(ph_fft11))
% % xlim([0 2e6])
% 
% plot(x1,abs(ph_fft1),'r-',x2,abs(ph_fft2),'b-',x3,abs(ph_fft3),'y-',x4,abs(ph_fft4),'m-',x5,abs(ph_fft5),'c-')
% hold on
% plot(x1,abs(ph_fft1),'r*',x2,abs(ph_fft2),'b*',x3,abs(ph_fft3),'y*',x4,abs(ph_fft4),'m*',x5,abs(ph_fft5),'c*')
% hold on
% plot(x6,abs(ph_fft6),'r--',x7,abs(ph_fft7),'b--',x8,abs(ph_fft8),'y--',x9,abs(ph_fft9),'m--',x10,abs(ph_fft10),'c--')
% hold on
% plot(x6,abs(ph_fft6),'r*',x7,abs(ph_fft7),'b*',x8,abs(ph_fft8),'y*',x9,abs(ph_fft9),'m*',x10,abs(ph_fft10),'c*')
% 
% 
% legend('test1','test2','test3','test4','test5','test6','test7','test8','test9','test10')
% xlim([0 2e6])
% 
% % plot(x1,abs(ph_fft1),'r-',x2,abs(ph_fft2),'b-',x3,abs(ph_fft3),'y-',x4,abs(ph_fft4),'m-',x5,abs(ph_fft5),'c-')
% % hold on
% % plot(x6,abs(ph_fft6),'r--',x7,abs(ph_fft7),'b--',x8,abs(ph_fft8),'y--',x9,abs(ph_fft9),'m--',x10,abs(ph_fft10),'c--',x10,abs(ph_fft10),'k--')
% % legend('test1','test2','test3','test4','test5','test6','test7','test8','test9','test10','test11')
% % xlim([0 2e6])
% return
%% 
% close all
load code
Fsr = 2e9;
code(1:5e3) = [];
code(end-5e3+1:end) = [];
pulse_len = length(code);
%% phase error estimation code1
data = code;
ph_err = unwrap(angle(data));
tr = (0:pulse_len-1)'/Fsr;
P = polyfit(tr,ph_err,1);
ph_err = ph_err-polyval(P,tr);
figure
plot(ph_err)

ph_fft = fft(ph_err);
ph_fft = ph_fft(1:pulse_len/2);
x = [0:pulse_len/2-1].*Fsr/pulse_len;
figure;plot(x,abs(ph_fft))
xlim([0 2e6])
% return
% phase error fitting -----------------------------------------------------
ph = fft(ph_err)*2;
ph(end/2+1:end) = 0;
ph = ifft(ph);
A = mean(abs(ph));
P = polyfit(tr,unwrap(angle(ph)),1);
omega = P(1);
ph0   = P(2);
ph_cos = A*cos(omega*tr+ph0);
figure;plot(tr,ph_cos,'b',tr,ph_err,'r')


ph_fft_cos = fft(ph_cos);
ph_fft_cos = ph_fft_cos(1:pulse_len/2);
x = [0:pulse_len/2-1].*Fsr/pulse_len;
figure;plot(x,abs(ph_fft_cos))
xlim([0 2e6])

figure;plot(x,abs(ph_fft_cos),'b',x,abs(ph_fft),'r')

xlim([0 2e6])
% phase error low-pass filtering ------------------------------------------
ph_d = ph_err-ph_cos;
ph_lp = zeros(pulse_len,1);
win_len = 4096;
for n = 1 : win_len/2
    ph_lp(n) = mean(ph_d(1:win_len/2+n-1));
end
for n = win_len/2+1 : pulse_len-win_len/2
    ph_lp(n) = mean(ph_d(n+(-win_len/2:win_len/2-1)));
end
for n = pulse_len-win_len/2+1 : pulse_len
    ph_lp(n) = mean(ph_d(n-win_len/2:end));
end
figure
plot(tr,ph_d,'r',tr,ph_lp,'b')
% plot(tr,ph_d)

ph_fft_lp = fft(ph_lp);
ph_fft_lp = ph_fft_lp(1:pulse_len/2);
x = [0:pulse_len/2-1].*Fsr/pulse_len;
figure;plot(x,abs(ph_fft_lp))
xlim([0 2e6])
figure;plot(x,abs(ph_fft_lp),'b',x,abs(ph_fft),'r')
xlim([0 2e6])

% phase error high-pass filtering -----------------------------------------
ph_d = ph_err-ph_cos-ph_lp;
ph_df = fft(ph_d);
[~,ind_max1] = max(abs(ph_df(1:end)));
[~,ind_max2] = max(abs(ph_df(end/2+1:end)));
tmp1 = ph_df(ind_max1);
tmp2 = ph_df(ind_max2+pulse_len/2);
ph_hp = zeros(pulse_len,1);
ph_hp(ind_max1) = tmp1;
ph_hp(ind_max2+pulse_len/2) = tmp2;
ph_hp = ifft(ph_hp);
figure
plot(tr,ph_d,'r',tr,ph_hp,'b')

ph_fft_hp = fft(ph_hp);
ph_fft_hp = ph_fft_hp(1:pulse_len/2);
x = [0:pulse_len/2-1].*Fsr/pulse_len;
figure;plot(x,abs(ph_fft_hp))
xlim([0 2e6])

figure;plot(x,abs(ph_fft_hp),'b',x,abs(ph_fft),'r')
xlim([0 2e6])
% -------------------------------------------------------------------------
ph_est = 1*ph_cos+1*ph_lp+1*ph_hp;
save ph_est ph_est;

% return
%% phase error compensation
data2 = data.*exp(-1j*ph_est);
%%
% win = blackmanharris(pulse_len);
win = chebwin(pulse_len);
%win = ones(pulse_len,1);
data_w = data.*win;
data_w = fft(data_w,8*pulse_len);
data2_w = data2.*win;
data2_w = fft(data2_w,8*pulse_len);

pulse_len = pulse_len*8;
f = (0:pulse_len-1)'/pulse_len*Fsr*1e-6;
data_log = 20*log10(abs(data_w));
data_log = data_log-max(data_log);
data2_log = 20*log10(abs(data2_w));
data2_log = data2_log-max(data2_log);
figure
plot(f,data_log,'r',f,data2_log,'b')
ylim([-100 0])