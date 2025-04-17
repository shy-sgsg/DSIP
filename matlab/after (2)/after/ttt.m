load code1
%%
Fsr = 2e9;
code1(1:5e3) = [];
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
return