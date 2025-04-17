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

% phase error fitting -----------------------------------------------------
ph = fft(ph_err)*2;
ph(end/2+1:end) = 0;
ph = ifft(ph);

A = mean(abs(ph));
P = polyfit(tr,unwrap(angle(ph)),1);
omega = P(1);
ph0   = P(2);
ph_cos = A*cos(omega*tr+ph0);

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
plot(tr,ph_d,tr,ph_lp)

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
plot(tr,ph_d,tr,ph_hp)
% -------------------------------------------------------------------------
ph_est = 1*ph_cos+ph_lp+1*ph_hp;
save ph_est ph_est;

return
%% phase error compensation
data2 = data.*exp(-1j*ph_est);
%%
% win = blackmanharris(pulse_len);
win = ones(pulse_len,1);
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