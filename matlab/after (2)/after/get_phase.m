function [phase] = get_phase(data)
    ave = (max(data)+min(data))/2;
    f1 = fft(data-ave);
    amp = abs(f1);
    f2 = 20*log10(amp);
    base_frequency_amp = max(amp(1:end/2));
    base_frequency_x = find(amp==base_frequency_amp,1);
    x = real(f1(base_frequency_x));
    y = imag(f1(base_frequency_x));
    phase = atan(abs(y) / abs(x)) / pi * 180;
    if(y>=0 && x>0)
        phase = phase + 0;
    elseif(y>=0 && x<0)
        phase = 180 - phase;
    elseif(y<=0 && x<0)
        phase = 180 + phase;
    elseif(y<=0 && x>0)
        phase = 360 - phase;
    elseif(y>0 && x==0)
        phase = 90;
    elseif(y<0 && x==0)
        phase = 270;
    elseif(y==0 && x==0)
        phase = 0;
    end
end