clear, clc, close all
%% 
load code
%%
Fsr = 2e9;
code(1:5e3) = [];
code(end-5e3+1:end) = [];
pulse_len = length(code);
%% phase error estimation
data = code;
ph_err = unwrap(angle(data));
tr = (0:pulse_len-1)'/Fsr;
P = polyfit(tr,ph_err,1);
ph_err = ph_err-polyval(P,tr);
figure
plot(ph_err)

% Fourier series expression -----------------------------------------------
ph_f = fft(ph_err,pulse_len*8);
figure
plot(abs(ph_f))
return;
mask = abs(ph_f)>40;
ph_f = ph_f.*mask;
ph_est = ifft(ph_f);

figure
plot(tr,ph_err,tr,ph_est)
%% phase error compensation
data2 = data.*exp(-1j*ph_est);
%%
win = blackmanharris(pulse_len);
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
plot(f,data_log,f,data2_log)