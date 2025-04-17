% global c_x_first;
% c_x_first = c_x;

% clc
% clear 
close all
global fname;    
global fclk;
%find a test file to caculate parameter
% [fname,path] = uigetfile('.csv','打开文件');
% len=8192;
% len=8192*4;
len=8192;
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
    char_data=char(s_data(7));   %4代表CSV文件中第4列数据，对应于ADC1
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

% fclose(fid);
% figure;
% plot(ADC1_1,'r');
% hold on;
% plot(ADC1_2,'g');
% hold on;
% plot(ADC1_3,'b');
% hold on;
% plot(ADC1_4,'y');
% grid on; 
% title(' ADC1 DATA'); 
% xlabel('SAMPLES');
% ylabel('CODE');
% legend('AD1','AD2','AD3','AD4'); 
% figure;
% plot(ADC2_1,'r');
% hold on;
% plot(ADC2_2,'g');
% hold on;
% plot(ADC2_3,'b');
% hold on;
% plot(ADC2_4,'y');
% grid on; 
% title(' ADC2 DATA'); 
% xlabel('SAMPLES');
% ylabel('CODE');
% legend('AD1','AD2','AD3','AD4'); 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% adc_data_mux=zeros(16*len,1);
% adc_data_mux(1:4:end)=raw_data;
% adc_data_mux(2:4:end)=raw_data1;
% adc_data_mux(3:4:end)=raw_data2;
% adc_data_mux(4:4:end)=raw_data3;
% fclk=3e9;
% SFDR_Calc_new();
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
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
% figure;20211119
% plot(hist(raw_data2,[0:4095]));
% 
adc_data_mux=zeros(8*len,1);
adc_data_mux(1:4:end)=ADC1_1;
adc_data_mux(2:4:end)=ADC1_2;
adc_data_mux(3:4:end)=ADC1_3;
adc_data_mux(4:4:end)=ADC1_4;  %四个子ADC的拼接
fclk=2e9;
sub_title='MUX';
SFDR_Calc_new();    %%%%这个位置是获取最终的的图像












c_x_first = c_x;
ADC1_FINAL=zeros(8*len,1);      
ADC1_FINAL=adc_data_mux;
fclk=2e9/4;
adc_data_mux=ADC2_1;
% DNL_INL_sin();
sub_title='AD1';
% SFDR_Calc_new();
adc_data_mux=ADC2_2;
sub_title='AD2';
% SFDR_Calc_new();
adc_data_mux=ADC2_3;
% sub_title='AD3';
% SFDR_Calc_new();
adc_data_mux=ADC2_4;
% sub_title='AD4';
% SFDR_Calc_new();
% figure;20211119
% plot(hist(raw_data2,[0:4095]));
% 
adc_data_mux=zeros(8*len,1);
adc_data_mux(1:4:end)=ADC2_1;
adc_data_mux(2:4:end)=ADC2_2;
adc_data_mux(3:4:end)=ADC2_3;
adc_data_mux(4:4:end)=ADC2_4;  %%通道2的合并
ADC2_FINAL = zeros(8*len,1);
ADC2_FINAL = adc_data_mux;

% adc_data_mux=zeros(16*len,1);
% adc_data_mux(1:4:end)=raw_data;
% adc_data_mux(2:4:end)=raw_data3;
% adc_data_mux(3:4:end)=raw_data2;
% adc_data_mux(4:4:end)=raw_data1;
% fclk=2e9;
% sub_title='MUX';
% % SFDR_Calc_new();
% 
%  mid = mean(ADC2_FINAL);
%  ADC2_FINAL = ADC2_FINAL - mid; 
%  ADC2_FINAL = -ADC2_FINAL;
%  ADC2_FINAL = ADC2_FINAL + mid;

% phase1 = get_phase(ADC1_FINAL);
% phase2 = get_phase(ADC2_FINAL);
% 
% 
% delta_phase = abs(phase1-phase2);
% delta_samples = round(delta_phase / 360 * 100 / 0.5);
% fprintf('delta_phase = %g\ndelta_samples = %g\n',delta_phase,delta_samples);
% d = ADC1_FINAL - ADC2_FINAL;
% figure;
% plot(ADC1_FINAL,'r');
% hold on;
% plot(ADC2_FINAL,'b');