clc
clear 
close all
global fname;    
global fclk;
len=8192*4;
% len=8192;
ADC1=zeros(4*len,1);
ADC2=zeros(4*len,1);
ADC3=zeros(4*len,1);
ADC4=zeros(4*len,1);


%%%%%%%%%%%%%%%%%%%%configurtion%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
ADC1_raw_data=zeros(4*len,1);
ADC2_raw_data=zeros(4*len,1);
ADC3_raw_data=zeros(4*len,1);
ADC4_raw_data=zeros(4*len,1);
% --------- read data -------------------------------
[fname,path] = uigetfile('.csv','打开文件');
fid = fopen([path fname]);
data_begin=1;
% data_begin=8200+8192+1965;
for i=1:data_begin
    line=fgetl(fid);
end
jj=1;
for i=1:len
    line=fgetl(fid);
    s_data=regexp(line, ',', 'split');    
    char_data=char(s_data(4));   %4代表CSV文件中第4列数据，对应于ADC1
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%    
%   channel 1     
    if (sscanf(char_data(63),'%x'))<8
    ADC1_raw_data(jj)=sscanf(char_data(61:62),'%x')+256*16*abs(8+sscanf(char_data(63),'%x'))+256*sscanf(char_data(64),'%x');
    else
    ADC1_raw_data(jj)=sscanf(char_data(61:62),'%x')+256*16*abs(-8+sscanf(char_data(63),'%x'))+256*sscanf(char_data(64),'%x');
    end
%   jj=jj+1;
%   channel 2
    if (sscanf(char_data(63-8),'%x'))<8
    ADC2_raw_data(jj)=sscanf(char_data(61-8:62-8),'%x')+256*16*abs(8+sscanf(char_data(63-8),'%x'))+256*sscanf(char_data(64-8),'%x');
    else
    ADC2_raw_data(jj)=sscanf(char_data(61-8:62-8),'%x')+256*16*abs(-8+sscanf(char_data(63-8),'%x'))+256*sscanf(char_data(64-8),'%x');
    end
%   jj=jj+1;
%   channel 3
    if (sscanf(char_data(63-16),'%x'))<8
    ADC3_raw_data(jj)=sscanf(char_data(61-16:62-16),'%x')+256*16*abs(8+sscanf(char_data(63-16),'%x'))+256*sscanf(char_data(64-16),'%x');
    else
    ADC3_raw_data(jj)=sscanf(char_data(61-16:62-16),'%x')+256*16*abs(-8+sscanf(char_data(63-16),'%x'))+256*sscanf(char_data(64-16),'%x');
    end
%     jj=jj+1;
%   channel 4
    if (sscanf(char_data(63-24),'%x'))<8
    ADC4_raw_data(jj)=sscanf(char_data(61-24:62-24),'%x')+256*16*abs(8+sscanf(char_data(63-24),'%x'))+256*sscanf(char_data(64-24),'%x');
    else
    ADC4_raw_data(jj)=sscanf(char_data(61-24:62-24),'%x')+256*16*abs(-8+sscanf(char_data(63-24),'%x'))+256*sscanf(char_data(64-24),'%x');
    end
    jj=jj+1;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    if (sscanf(char_data(63-32),'%x'))<8
    ADC1_raw_data(jj)=sscanf(char_data(61-32:62-32),'%x')+256*16*abs(8+sscanf(char_data(63-32),'%x'))+256*sscanf(char_data(64-32),'%x');
    else
    ADC1_raw_data(jj)=sscanf(char_data(61-32:62-32),'%x')+256*16*abs(-8+sscanf(char_data(63-32),'%x'))+256*sscanf(char_data(64-32),'%x');
    end
%    jj=jj+1;
   if (sscanf(char_data(63-40),'%x'))<8
    ADC2_raw_data(jj)=sscanf(char_data(61-40:62-40),'%x')+256*16*abs(8+sscanf(char_data(63-40),'%x'))+256*sscanf(char_data(64-40),'%x');
    else
    ADC2_raw_data(jj)=sscanf(char_data(61-40:62-40),'%x')+256*16*abs(-8+sscanf(char_data(63-40),'%x'))+256*sscanf(char_data(64-40),'%x');
    end
%     jj=jj+1;
    if (sscanf(char_data(63-48),'%x'))<8
    ADC3_raw_data(jj)=sscanf(char_data(61-48:62-48),'%x')+256*16*abs(8+sscanf(char_data(63-48),'%x'))+256*sscanf(char_data(64-48),'%x');
    else
    ADC3_raw_data(jj)=sscanf(char_data(61-48:62-48),'%x')+256*16*abs(-8+sscanf(char_data(63-48),'%x'))+256*sscanf(char_data(64-48),'%x');
    end
%     jj=jj+1;       
    if (sscanf(char_data(63-56),'%x'))<8
    ADC4_raw_data(jj)=sscanf(char_data(61-56:62-56),'%x')+256*16*abs(8+sscanf(char_data(63-56),'%x'))+256*sscanf(char_data(64-56),'%x');
    else
    ADC4_raw_data(jj)=sscanf(char_data(61-56:62-56),'%x')+256*16*abs(-8+sscanf(char_data(63-56),'%x'))+256*sscanf(char_data(64-56),'%x');
    end
    jj=jj+1;   
    
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

    if (sscanf(char_data(63-4),'%x'))<8
    ADC1_raw_data(jj)=sscanf(char_data(61-4:62-4),'%x')+256*16*abs(8+sscanf(char_data(63-4),'%x'))+256*sscanf(char_data(64-4),'%x');
    else
    ADC1_raw_data(jj)=sscanf(char_data(61-4:62-4),'%x')+256*16*abs(-8+sscanf(char_data(63-4),'%x'))+256*sscanf(char_data(64-4),'%x');
    end
%   jj=jj+1;    
    if (sscanf(char_data(63-12),'%x'))<8
    ADC2_raw_data(jj)=sscanf(char_data(61-12:62-12),'%x')+256*16*abs(8+sscanf(char_data(63-12),'%x'))+256*sscanf(char_data(64-12),'%x');
    else
    ADC2_raw_data(jj)=sscanf(char_data(61-12:62-12),'%x')+256*16*abs(-8+sscanf(char_data(63-12),'%x'))+256*sscanf(char_data(64-12),'%x');
    end
%   jj=jj+1;   
    if (sscanf(char_data(63-20),'%x'))<8
    ADC3_raw_data(jj)=sscanf(char_data(61-20:62-20),'%x')+256*16*abs(8+sscanf(char_data(63-20),'%x'))+256*sscanf(char_data(64-20),'%x');
    else
    ADC3_raw_data(jj)=sscanf(char_data(61-20:62-20),'%x')+256*16*abs(-8+sscanf(char_data(63-20),'%x'))+256*sscanf(char_data(64-20),'%x');
    end
%     jj=jj+1; 
    if (sscanf(char_data(63-28),'%x'))<8
    ADC4_raw_data(jj)=sscanf(char_data(61-28:62-28),'%x')+256*16*abs(8+sscanf(char_data(63-28),'%x'))+256*sscanf(char_data(64-28),'%x');
    else
    ADC4_raw_data(jj)=sscanf(char_data(61-28:62-28),'%x')+256*16*abs(-8+sscanf(char_data(63-28),'%x'))+256*sscanf(char_data(64-28),'%x');
    end
    jj=jj+1;     
    
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    if (sscanf(char_data(63-36),'%x'))<8
    ADC1_raw_data(jj)=sscanf(char_data(61-36:62-36),'%x')+256*16*abs(8+sscanf(char_data(63-36),'%x'))+256*sscanf(char_data(64-36),'%x');
    else
    ADC1_raw_data(jj)=sscanf(char_data(61-36:62-36),'%x')+256*16*abs(-8+sscanf(char_data(63-36),'%x'))+256*sscanf(char_data(64-36),'%x');
    end
%     jj=jj+1;
    if (sscanf(char_data(63-44),'%x'))<8
    ADC2_raw_data(jj)=sscanf(char_data(61-44:62-44),'%x')+256*16*abs(8+sscanf(char_data(63-44),'%x'))+256*sscanf(char_data(64-44),'%x');
    else
    ADC2_raw_data(jj)=sscanf(char_data(61-44:62-44),'%x')+256*16*abs(-8+sscanf(char_data(63-44),'%x'))+256*sscanf(char_data(64-44),'%x');
    end
%     jj=jj+1;
    if (sscanf(char_data(63-52),'%x'))<8
    ADC3_raw_data(jj)=sscanf(char_data(61-52:62-52),'%x')+256*16*abs(8+sscanf(char_data(63-52),'%x'))+256*sscanf(char_data(64-52),'%x');
    else
    ADC3_raw_data(jj)=sscanf(char_data(61-52:62-52),'%x')+256*16*abs(-8+sscanf(char_data(63-52),'%x'))+256*sscanf(char_data(64-52),'%x');
    end
%     jj=jj+1;
    if (sscanf(char_data(63-60),'%x'))<8
    ADC4_raw_data(jj)=sscanf(char_data(61-60:62-60),'%x')+256*16*abs(8+sscanf(char_data(63-60),'%x'))+256*sscanf(char_data(64-60),'%x');
    else
    ADC4_raw_data(jj)=sscanf(char_data(61-60:62-60),'%x')+256*16*abs(-8+sscanf(char_data(63-60),'%x'))+256*sscanf(char_data(64-60),'%x');
    end
    jj=jj+1;    
end

ADC1=ADC1_raw_data/16;
ADC2=ADC2_raw_data/16;
ADC3=ADC3_raw_data/16;
ADC4=ADC4_raw_data/16;


ADC1_1=zeros(length(ADC1_raw_data)/2,1);
ADC2_1=zeros(length(ADC1_raw_data)/2,1);
ADC1_2=zeros(length(ADC1_raw_data)/2,1);
ADC2_2=zeros(length(ADC1_raw_data)/2,1);
ADC1_3=zeros(length(ADC1_raw_data)/2,1);
ADC2_3=zeros(length(ADC1_raw_data)/2,1);
ADC1_4=zeros(length(ADC1_raw_data)/2,1);
ADC2_4=zeros(length(ADC1_raw_data)/2,1);

ADC1_1=ADC1(1:2:end,:);
ADC2_1=ADC1(2:2:end,:);
ADC1_2=ADC2(1:2:end,:);
ADC2_2=ADC2(2:2:end,:);
ADC1_3=ADC3(1:2:end,:);
ADC2_3=ADC3(2:2:end,:);
ADC1_4=ADC4(1:2:end,:);
ADC2_4=ADC4(2:2:end,:);

fclk=2e9/4;
adc_data_mux=ADC1_1;
% DNL_INL_sin();
sub_title='AD1';
% SFDR_Calc_new();
adc_data_mux=ADC1_2;
sub_title='AD2';
% SFDR_Calc_new();
adc_data_mux=ADC1_3;
sub_title='AD3';
% SFDR_Calc_new();
adc_data_mux=ADC1_4;
sub_title='AD4';
% SFDR_Calc_new();

adc_data_mux=zeros(8*len,1);
adc_data_mux(1:4:end)=ADC1_1;
adc_data_mux(2:4:end)=ADC1_2;
adc_data_mux(3:4:end)=ADC1_3;
adc_data_mux(4:4:end)=ADC1_4;  %四个子ADC的拼接
fclk=2e9;
sub_title='MUX';









%%%%%%%%%%%%%%%%%%%%%%%%%%%%进行数据处理%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
code=double(adc_data_mux);
% code = code(5001:55000,:);
% code = code(40001:240000,:);
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

% code2 = zeros(length(code)*32,1);
% code2(1:length(code)) = code;
% figure; %%%%%%%%%%%%%%%%%%%%%%
% plot(length(code2),code2); %%%%%%%%%%%%%%%%%%%%%%%
% title('TIME DOMAIN') 
% xlabel('SAMPLES'); 
% ylabel('DIGITAL OUTPUT CODE'); 
% zoom xon; 

% code = code(1:200000,:);
% 
% % % % % 定义保存路径（例如：D:\data\output.csv）
% output_path = 'D:\DSIP\DSIP_EB_banji_kaifa\chengdu_BIT\chengdu_BIT\matlab\1800_32768\output_code.csv';  % 替换成你的目标路径
% 
% % 保存到指定路径
% writematrix(code, output_path); 
% 
% % 可选参数：控制分隔符、是否覆盖等
% writematrix(code, output_path, 'Delimiter', ',', 'WriteMode', 'overwrite');







% Hd = filter
Fs = 2000000000;  % Sampling Frequency
Fstop1 = 150000000;   % First Stopband Frequency
Fpass1 = 190000000;   % First Passband Frequency
Fpass2 = 210000000;   % Second Passband Frequency
Fstop2 = 250000000;   % Second Stopband Frequency
Astop1 = 60;          % First Stopband Attenuation (dB)
Apass  = 1;           % Passband Ripple (dB)
Astop2 = 80;          % Second Stopband Attenuation (dB)
match  = 'passband';  % Band to match exactly

% Construct an FDESIGN object and call its BUTTER method.
h  = fdesign.bandpass(Fstop1, Fpass1, Fpass2, Fstop2, Astop1, Apass, ...
                      Astop2, Fs);
Hd = design(h, 'butter', 'MatchExactly', match);
code = filter(Hd, code);    % 注意转置为列向量



% code_h = hilbert(code);  %对原始信号进行希尔伯特变化


code = hilbert(code);  %对原始信号进行希尔伯特变化




% Hd = filter
% Fs = 2000000000;  % Sampling Frequency
% Fstop1 = 850000000;   % First Stopband Frequency
% Fpass1 = 890000000;   % First Passband Frequency
% Fpass2 = 910000000;   % Second Passband Frequency
% Fstop2 = 950000000;   % Second Stopband Frequency
% Astop1 = 60;          % First Stopband Attenuation (dB)
% Apass  = 1;           % Passband Ripple (dB)
% Astop2 = 80;          % Second Stopband Attenuation (dB)
% match  = 'passband';  % Band to match exactly
% 
% % Construct an FDESIGN object and call its BUTTER method.
% h  = fdesign.bandpass(Fstop1, Fpass1, Fpass2, Fstop2, Astop1, Apass, ...
%                       Astop2, Fs);
% Hd = design(h, 'butter', 'MatchExactly', match);
% code = filter(Hd, code);    % 注意转置为列向量
% 
% code = hilbert(code);  %对原始信号进行希尔伯特变化






% return
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%计算理想正弦波的功率%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%原始信号加窗处理后的时域信号图%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

Dout=code-mean(code);
% Doutw=Dout.*(blackmanharris(numpt));
 Doutw=Dout.*(chebwin(numpt));
% 
figure;plot(Doutw);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%原始信号加窗处理后的频域图%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%performing FFT 
Dout_spect=fft(Doutw,numpt); 
% numpt = length(code2)
% Dout_spect=fft(code2,numpt); 
%recalculate to dB 
Dout_dB=20*log10(abs(Dout_spect)); 

for i=1:numpt
    if Dout_dB(i)<-200
        Dout_dB(i)=-200;
    end
end
maxdB=max(Dout_dB(2:numpt/2)); 
x_initial = [0:numpt/2-1].*fclk/numpt;
y_initial = Dout_dB(1:numpt/2)-maxdB;
%plot([0:numpt/2-1].*fclk/numpt,Dout_dB(1:numpt/2)-maxdB); 

x_initial_1 = [1:numpt].*fclk/numpt;
y_initial_1 = Dout_dB(1:numpt)-maxdB;

figure;plot(x_initial,y_initial)
grid on; 
title(['FFT PLOT ']); 
xlabel('ANALOG INPUT FREQUENCY(MHz)'); 
ylabel('AMPLITUDE(dB)'); 
axis([0 inf -110 0]);







kkk = [];


%%%%%%%%%%%%%%%%%%%%%%%%判断突起的两个峰是不是残差的正弦特性所导致的（用的code = 262144）…%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%频域上手动剔除窄带SFDR高的指标%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
x_xiufu = 1:1:262144;
% f = linspace(-1e9,1e9,262144);

f = linspace(0,2e9,262144);
% figure;plot(f',y_initial_1)
figure;plot(x_xiufu,y_initial_1)

grid on; 
title(['FFT PLOT ']); 
xlabel('ANALOG INPUT FREQUENCY(MHz)'); 
ylabel('AMPLITUDE(dB)'); 
axis([0 inf -110 0]);
% xlim([1.795e9 1.805e9])





% y_initial_1(1:25500,:) = y_initial_1(1:25500,:)-100;
% y_initial_1(27000:235000,:) = y_initial_1(27000:235000,:) -100;
% y_initial_1(236800:262144,:) = y_initial_1(236800:262144,:)-100;




plot(x_xiufu,y_initial_1)
grid on; 
title(['FFT PLOT ']); 
xlabel('ANALOG INPUT FREQUENCY(MHz)'); 
ylabel('AMPLITUDE(dB)'); 
axis([0 inf -110 0]);

%%%%%%%%%%%%%%%%%%%剔除窄带全部%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
y_initial_xiufu = [];
y_initial_xiufu=  y_initial_1;
y_initial_xiufu(26000:26206,:) = y_initial_xiufu(26000:26206,:) -15;
y_initial_xiufu(26226:26427,:) = y_initial_xiufu(26226:26427,:) -15;
y_initial_xiufu(235718:235920,:) = y_initial_xiufu(235718:235920,:)-15;
y_initial_xiufu(235941:236138,:) = y_initial_xiufu(235941:236138,:) -15;


%%%%%%%%%%%%%%%%%%%剔除窄带内除了两个对称峰以外的部分%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% y_initial_xiufu = [];
% y_initial_xiufu=  y_initial_1;
% y_initial_xiufu(26040:26206,:) = y_initial_xiufu(26040:26206,:) -15;
% y_initial_xiufu(26226:26360,:) = y_initial_xiufu(26226:26360,:) -15;
% y_initial_xiufu(235759:235920,:) = y_initial_xiufu(235759:235920,:)-15;
% y_initial_xiufu(235941:236103,:) = y_initial_xiufu(235941:236103,:) -15;


%%%%%%%%%%%%%%%%%%%剔除窄带内两个对称峰%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% y_initial_xiufu = [];
% y_initial_xiufu=  y_initial_1;
% y_initial_xiufu(26000:26040,:) = y_initial_xiufu(26000:26040,:) -20;
% y_initial_xiufu(26360:26427,:) = y_initial_xiufu(26360:26427,:) -20;
% y_initial_xiufu(235718:235759,:) = y_initial_xiufu(235718:235759,:)-20;
% y_initial_xiufu(236103:236138,:) = y_initial_xiufu(236103:236138,:) -20;




figure;
plot(x_xiufu,y_initial_xiufu)
grid on; 
title(['FFT PLOT ']); 
xlabel('ANALOG INPUT FREQUENCY(MHz)'); 
ylabel('AMPLITUDE(dB)'); 
axis([0 inf -110 0]);

%%%%%%%%%%%%%%%%%%%%%观察剔除后的残差曲线%%%%%%%%%%%%%%%%%%%%%%%%%
x_w = unwrap(angle(Dout_spect));
x_w_x = 1:1:262144;
% plot(x_w)
Dout_spect_modified = 10.^(y_initial_xiufu / 20).* exp(1j*x_w);
y_initial_xiufu_time = ifft(Dout_spect_modified);
figure;plot(x_xiufu,y_initial_xiufu_time)

an_sig_xiufu = hilbert(real(y_initial_xiufu_time));
%figure;plot(phase(an_sig))
hle_xiufu = unwrap(angle(an_sig_xiufu));
% hle = angle(an_sig);
figure;
x_hm_xiufu = 1:1:262144;
% x_hm = 1:1:50000;
plot(x_hm_xiufu,hle_xiufu)

px_hm = polyfit(x_hm_xiufu,hle_xiufu,1);%求多项式系数
hle_linear = polyval(px_hm,x_hm_xiufu); %多项式计算
c_x_xiufu = hle_xiufu - hle_linear.'; %计算残差
figure;plot(x_hm_xiufu,c_x_xiufu);%获取残差曲线



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 手动剔除获取差值c_x_cha（c_x_ys-c_x_xiufu_ys） 数据点40000——2400000%%%%%%%%%%%
an_sig = hilbert(Doutw);
%figure;plot(phase(an_sig))
hle = unwrap(angle(an_sig));
% hle = angle(an_sig);
% figure;
x_hm = 1:1:262144;
% x_hm = 1:1:200000;
figure;plot(x_hm,hle)

px_hm = polyfit(x_hm,hle,1);%求多项式系数
hle_linear = polyval(px_hm,x_hm); %多项式计算

c_x = hle - hle_linear.'; %计算残差
figure;plot(x_hm,c_x);%获取残差曲线

c_x_ys = c_x(40001:240000,:);
c_x_xiufu_ys = c_x_xiufu(40001:240000,:);
x_cha = 1:1:200000;
figure;plot(x_cha,c_x_ys,x_cha,c_x_xiufu_ys)
c_x_cha = c_x_ys - c_x_xiufu_ys;
% x_cha = 1:1:200000;
figure;plot(x_cha,c_x_cha)


%%%%%%%%%%%%%%%%%%%%%%%%%补偿临近部分的地方的线性拟合%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
a1 = -1.545e-07;
b1 = 0.01183;
y_data = a1*x_cha +b1;
figure;plot(x_cha,y_data)
y_data = y_data';

%%%%%%%%%%%%%%%观察c_x_cha部分的频率分量%%%%%%%%%%%%%%%%%%%
Fs = 2e9; % 采样频率
T = 1/Fs; % 采样周期
L = 200000; % 信号长度
t = (0:L-1)*T; % 时间向量
c_x_cha_fft = fft(c_x_cha);
% 计算频率向量
f = Fs*(0:(L/2))/L;
plot(f, abs(c_x_cha_fft(1:L/2+1)))
title('单边幅度频谱')
xlabel('频率 (Hz)')
ylabel('幅度')
P2 = abs(c_x_cha_fft/L);
P1 = P2(1:L/2+1);
P1(2:end-1) = 2*P1(2:end-1);
P1_dB = 20*log10(P1); % 转换为分贝
% 绘制单边幅度频谱（dB）
figure;
plot(f, P1_dB);
title('单边幅度频谱（dB）');
xlabel('频率 (Hz)');
ylabel('幅度 (dB)');
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


numpt = 200000;
code_cx = code(40001:240000,:).* exp(-1j*c_x_cha);  %补偿回原始信号复数域
code_cpst = real(code_cx); %获取实部信号
figure;plot(code_cpst) %绘制补偿后的结果


% % % % 定义保存路径（例如：D:\data\output.csv）
% output_path = 'D:\DSIP\DSIP_EB_banji_kaifa\chengdu_BIT\chengdu_BIT\matlab\1800_32768\output_total.csv';  % 替换成你的目标路径
% 
% % 保存到指定路径
% writematrix(code_cpst, output_path); 
% 
% % 可选参数：控制分隔符、是否覆盖等
% writematrix(code, output_path, 'Delimiter', ',', 'WriteMode', 'overwrite');




numpt = 200000;
code_cx = code(40001:240000,:).* exp(-1j*y_data);  %补偿回原始信号复数域
code_cpst = real(code_cx); %获取实部信号
figure;plot(code_cpst) %绘制补偿后的结果




%%%%%%%%%%%%%%%%%%对原始残差进行拟合并求差获得y%%%%%%%%%%%%%%%%%%%%%%%%%
y = c_x_ys - fittedData;
figure;plot(x_cha,y)

numpt = 200000;
code_cx = code(40001:240000,:).* exp(-1j*y);  %补偿回原始信号复数域
code_cpst = real(code_cx); %获取实部信号
figure;plot(code_cpst) %绘制补偿后的结果


%%%%%%%%%%%%%%%%%%%%%%%%改幅值%%%%%%%%%%%%%%%%%%%%%%%
% c_x = c_x*0.9;
% xlim([4000 46000])
% c_x_1 = c_x(10000:250000,:);


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%补原始未平滑残差曲线%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
numpt = 262144;
code_cx = code.* exp(-1j*c_x);  %补偿回原始信号复数域
code_cpst = real(code_cx); %获取实部信号
figure;plot(code_cpst) %绘制补偿后的结果

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%平滑验证%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
c_x_1 = smooth(c_x,100);
c_x_1 = smooth(c_x_1,100);
c_x_1_smt = c_x_1(40001:240000,:)
x_hm_smt = 1:1:200000;
figure;plot(x_hm_smt,c_x_1_smt);%获取残差曲线
% c_x_1_smt = c_x_1_smt*0.5;
%%%%%%%%%%%%%%%%%%%%%%%%补c_x_1_smt（原始平滑曲线）%%%%%%%%%%%%%%%%%%%%%
code_cx = code_h(40001:240000,:).* exp(-1j*c_x_1_smt);  %补偿回原始信号复数域
code_cpst = real(code_cx); %获取实部信号
figure;plot(code_cpst) %绘制补偿后的结果
y = c_x_1_smt - fittedData;
figure;plot(x_hm_smt,y)
%%%%%%%%%%%%%%%%%%%%%%%%补fittedData（二阶正弦拟合曲线）%%%%%%%%%%%%%%%%%%%%%
numpt = 200000;
code_cx = code_h(40001:240000,:).* exp(-1j*fittedData);  %补偿回原始信号复数域
code_cpst = real(code_cx); %获取实部信号
figure;plot(code_cpst) %绘制补偿后的结果
%%%%%%%%            补y（c_x_1_smt与fittedData的差值）           %%%%%%%%%%%%%%%%%%
numpt = 200000;
code_cx = code_h(40001:240000,:).* exp(-1j*y);  %补偿回原始信号复数域
code_cpst = real(code_cx); %获取实部信号
figure;plot(code_cpst) %绘制补偿后的结果
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%





%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%code_cpst补偿后加窗处理后的时域信号图%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%计算理想正弦波的功率   加窗处理后的时域信号图  该部分为公共部分
idea_dout=(2^numbit)/2*sin((0:(2*pi/124.6427):(numpt-1)*2*pi/124.6427)')+(2^numbit-1)/2;
idea_dout=round(idea_dout)-(2^numbit-1)/2;
idea_doutw=idea_dout.*blackmanharris(length(idea_dout));
idea_spect=fft(idea_doutw,length(idea_dout));
idea_dB=20*log10(abs(idea_spect));
idea_spectP=(abs(idea_spect)).*(abs(idea_spect));
idea_power=sum(idea_spectP(1:length(idea_dout)/2));

Dout_cpst=code_cpst-mean(code_cpst);
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

figure; 
maxdB_cpst=max(Dout_dB_cpst(2:numpt/2)); 
plot([0:numpt/2-1].*fclk/numpt,Dout_dB_cpst(1:numpt/2)-maxdB_cpst); 
grid on; 
title(['FFT PLOT ']); 
xlabel('ANALOG INPUT FREQUENCY(MHz)'); 
ylabel('AMPLITUDE(dB)'); 
axis([0 inf -110 0]);



x_xiufu = 1:1:200000;
f = linspace(0,2e9,200000);
y1 = Dout_dB_cpst(1:numpt/2)-maxdB_cpst;
y2 = Dout_dB_cpst-maxdB_cpst;
figure;plot(f',y2)
% figure;plot(x_xiufu,y_initial_1)
grid on; 
title(['FFT PLOT ']); 
xlabel('ANALOG INPUT FREQUENCY(MHz)'); 
ylabel('AMPLITUDE(dB)'); 
axis([0 inf -110 0]);
xlim([1.795e9 1.805e9])



%%%%%获取补偿后的信号的残差曲线…%%%%%%%%%%%%%%%%%%%%%%%
an_sig_cpst = hilbert(Doutw_cpst);
hle_cpst = unwrap(angle(an_sig_cpst));
% hle = angle(an_sig);
figure;
% x_hm_cpst = 1:1:262144;
x_hm_cpst = 1:1:200000;
% x_hm = 1:1:50000;
plot(x_hm_cpst,hle_cpst)

px_hm_cpst = polyfit(x_hm_cpst,hle_cpst,1);%求多项式系数
hle_linear_cpst = polyval(px_hm_cpst,x_hm_cpst); %多项式计算

c_x_cpst = hle_cpst - hle_linear_cpst.'; %计算残差

figure;plot(x_hm_cpst,c_x_cpst);%获取残差曲线

kk = [];







%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%多组数据记录%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
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

% c_total = c_x_1+c_x_2+c_x_3+c_x_4+c_x_5+c_x_6+c_x_7+c_x_8+c_x_9+c_x_10+c_x_11+c_x_12+c_x_13+c_x_14+c_x_15+c_x_16+c_x_17+c_x_18+c_x_19+c_x_20;
% 
% c_average = c_total/20;

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
