clear, clc, close all
%% loading data
load ph_est;
%% parameter
Fsr = 2e9;
pulse_len = length(ph_est);
fc1 = 200e6;
fc2 = 300e6;
%% signal generation
tr = (0:pulse_len-1).'/Fsr;
s1 = exp(1j*2*pi*fc1*tr);
s2 = exp(1j*2*pi*fc2*tr);

s = (s1+s2).*exp(1j*ph_est);
s = s1.*exp(1j*ph_est)+s2.*exp(1j*ph_est);
%% signal analysis
win = blackmanharris(pulse_len);

s = s.*win;
S = fft(s,8*pulse_len);
figure
plot(db(S))