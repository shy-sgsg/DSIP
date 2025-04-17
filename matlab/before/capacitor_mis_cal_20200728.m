clc;
clear ;
close all;
global fname;
global fclk;
%%%%%%%%%%%%%%%%%%%%configurtion%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
fclk =2e9/4;
len=8192;
channel_1_key=1;%p6,ADC1   J14 J10 J6 J2
channel_2_key=0;%p3,ADC2;0:disable cap J16 J12 J8 J4  
cap_cal_MDAC1_key=1;%1:enable cap cal ;0:dis  �Ƿ��MDAC1����У׼
% able cap cal
cap_cal_MDAC2_key=1;%1:enable  �Ƿ��MDAC2����У׼
cap_cal_key=1;%1:enable cap cal cap cal ;0:disable cap cal  �������ͳ���1�ĸ���
cap_cal_MDAC3_key=1;%1:enable cap cal ;0:disable cap cal  �Ƿ��MDAC3����У׼
TI_key=0;%1:enable TI(data mux) ;0:disable TI
Vres_trans_key=1;%1:plot Vres trans figure ;0:don't plot Vres trans figure
save_cap_value_key=1;
%ʵ�ַ���У׼����һ������DAC3 -> MDAC2 -> MDAC1 -> MDAC2 -> MDAC3
%ʵ�ַ���У׼������������MDAC1 -> MDAC2 -> MDAC3 -> MDAC2 -> MDAC1
case_choose=1;
search_cycle=3;
%%%%%%%%%%%%%%%%%%%%configurtion%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
ADC1_raw_data=zeros(4*len,1);
ADC2_raw_data=zeros(4*len,1);
ADC3_raw_data=zeros(4*len,1);
ADC4_raw_data=zeros(4*len,1);
% --------- read data -------------------------------
[fname,path] = uigetfile('.csv','���ļ�');
fid = fopen([path fname]);
data_begin=1;
%data_begin=8200+8192+1965;
for i=1:data_begin
    line=fgetl(fid);
end
jj=1;
for i=1:len
    line=fgetl(fid);  %���У�ѭ������ʱ�Զ�����һ��
    s_data=regexp(line, ',', 'split');    
    char_data=char(s_data(6));     %�޸ĸ��������Զ�Ӧ���ɼ���CSV����
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%    

%   channel 1    
    if (sscanf(char_data(63),'%x'))<8   %����63���ַ�ת��Ϊʮ�������� �Ƿ�<8
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

%% ��δ���Ϊֱ�ӽ������ݵ���ȡ����
% 
% 
% ADC1_1=zeros(length(ADC1_raw_data)/2,1);
% ADC2_1=zeros(length(ADC1_raw_data)/2,1);
% ADC1_2=zeros(length(ADC1_raw_data)/2,1);
% ADC2_2=zeros(length(ADC1_raw_data)/2,1);
% ADC1_3=zeros(length(ADC1_raw_data)/2,1);
% ADC2_3=zeros(length(ADC1_raw_data)/2,1);
% ADC1_4=zeros(length(ADC1_raw_data)/2,1);
% ADC2_4=zeros(length(ADC1_raw_data)/2,1);
% 
% % ADC1_1=ADC1(1:2:end,:);
% % ADC2_1=ADC1(2:2:end,:);
% % ADC1_2=ADC2(1:2:end,:);
% % ADC2_2=ADC2(2:2:end,:);
% % ADC1_3=ADC3(1:2:end,:);
% % ADC2_3=ADC3(2:2:end,:);
% % ADC1_4=ADC4(1:2:end,:);
% % ADC2_4=ADC4(2:2:end,:);
% 
% 
% ADC1_1=ADC1_raw_data(1:2:end,:);
% ADC2_1=ADC1_raw_data(2:2:end,:);
% ADC1_2=ADC2_raw_data(1:2:end,:);
% ADC2_2=ADC2_raw_data(2:2:end,:);
% ADC1_3=ADC3_raw_data(1:2:end,:);
% ADC2_3=ADC3_raw_data(2:2:end,:);
% ADC1_4=ADC4_raw_data(1:2:end,:);
% ADC2_4=ADC4_raw_data(2:2:end,:);
% 
% % fclose(fid);
% % figure;
% % plot(ADC1_1,'r');
% % hold on;
% % plot(ADC1_2,'g');
% % hold on;
% % plot(ADC1_3,'b');
% % hold on;
% % plot(ADC1_4,'y');
% % grid on; 
% % title(' ADC1 DATA'); 
% % xlabel('SAMPLES');
% % ylabel('CODE');
% % legend('AD1','AD2','AD3','AD4'); 
% % figure;
% % plot(ADC2_1,'r');
% % hold on;
% % plot(ADC2_2,'g');
% % hold on;
% % plot(ADC2_3,'b');
% % hold on;
% % plot(ADC2_4,'y');
% % grid on; 
% % title(' ADC2 DATA'); 
% % xlabel('SAMPLES');
% % ylabel('CODE');
% % legend('AD1','AD2','AD3','AD4'); 
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% % adc_data_mux=zeros(16*len,1);
% % adc_data_mux(1:4:end)=raw_data;
% % adc_data_mux(2:4:end)=raw_data1;
% % adc_data_mux(3:4:end)=raw_data2;
% % adc_data_mux(4:4:end)=raw_data3;
% % fclk=3e9;
% % SFDR_Calc_new();
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% fclk=2e9/4;
% adc_data_mux=ADC1_1;
% % DNL_INL_sin();
% sub_title='AD1';
% SFDR_Calc_new();
% adc_data_mux=ADC1_2;
% sub_title='AD2';
% SFDR_Calc_new();
% adc_data_mux=ADC1_3;
% sub_title='AD3';
% SFDR_Calc_new();
% adc_data_mux=ADC1_4;
% sub_title='AD4';
% SFDR_Calc_new();
% % figure;20211119
% % plot(hist(raw_data2,[0:4095]));
% % 
% adc_data_mux=zeros(8*len,1);
% adc_data_mux(1:4:end)=ADC1_1;
% adc_data_mux(2:4:end)=ADC1_2;
% adc_data_mux(3:4:end)=ADC1_3;
% adc_data_mux(4:4:end)=ADC1_4;
% fclk=2e9;
% sub_title='MUX';
% SFDR_Calc_new();
% ADC1_FINAL=zeros(8*len,1);
% ADC1_FINAL=adc_data_mux;
%%











%��ȡ��һƬADC����ADC1 2 3 4��ԭʼ����   ��1234�ڻ�����������ͨ��������Ҫ�ָ�����ͨ��
c1 = ADC1_raw_data;
c2 = ADC2_raw_data;
c3 = ADC3_raw_data;
c4 = ADC4_raw_data;


ADC1_raw_data_bin=zeros(4*len,16);
ADC2_raw_data_bin=zeros(4*len,16);
ADC3_raw_data_bin=zeros(4*len,16);
ADC4_raw_data_bin=zeros(4*len,16);

%���ĸ�ͨ����ԭʼ����ʮ����ת��Ϊ2���ƣ�
% ����ADC_raw_data_bin ÿһ�д�����ADC_raw_data�е����ݵĶ�������ʽ

for jj=1:len*4
    for q=1:16
        %mod(ADC1_raw_data(jj), 2) �Ľ���� ADC1_raw_data(jj) ����2���������� ADC1_raw_data(jj) �����λ��LSB����
%��� ADC1_raw_data(jj) ��ż����mod(ADC1_raw_data(jj), 2) �Ľ����0��
%��� ADC1_raw_data(jj) ��������mod(ADC1_raw_data(jj), 2) �Ľ����1��
        ADC1_raw_data_bin(jj,q)=mod(ADC1_raw_data(jj),2);                  %%二进制解耦后（裸）数�?
        ADC1_raw_data(jj)=(ADC1_raw_data(jj)-ADC1_raw_data_bin(jj,q))/2;
    end
    for q=1:16
        ADC2_raw_data_bin(jj,q)=mod(ADC2_raw_data(jj),2);
        ADC2_raw_data(jj)=(ADC2_raw_data(jj)-ADC2_raw_data_bin(jj,q))/2;
    end
    for q=1:16
        ADC3_raw_data_bin(jj,q)=mod(ADC3_raw_data(jj),2);
        ADC3_raw_data(jj)=(ADC3_raw_data(jj)-ADC3_raw_data_bin(jj,q))/2;
    end
    for q=1:16
        ADC4_raw_data_bin(jj,q)=mod(ADC4_raw_data(jj),2);
        ADC4_raw_data(jj)=(ADC4_raw_data(jj)-ADC4_raw_data_bin(jj,q))/2;
    end
end



% ADC1_1_raw_data_bin=zeros(2*len,16);
% ADC1_2_raw_data_bin=zeros(2*len,16);
% ADC1_3_raw_data_bin=zeros(2*len,16);
% ADC1_4_raw_data_bin=zeros(2*len,16);
% 
% ADC2_1_raw_data_bin=zeros(2*len,16);
% ADC2_2_raw_data_bin=zeros(2*len,16);
% ADC2_3_raw_data_bin=zeros(2*len,16);
% ADC2_4_raw_data_bin=zeros(2*len,16);

%��δ���������ǽ��ĸ�ͨ����ADC1��ADC2��ADC3��ADC4���Ķ��������ݽ�һ�����Ϊ������ͨ����1��2����
% ������Щ��ͨ�������ݷֱ�洢���µı����С�������˵����ͨ��ѡ��ż���к���������ʵ����һĿ��
ADC1_1_raw_data_bin=ADC1_raw_data_bin(1:2:end,:); %������
ADC2_1_raw_data_bin=ADC1_raw_data_bin(2:2:end,:); % ż����
ADC1_2_raw_data_bin=ADC2_raw_data_bin(1:2:end,:);
ADC2_2_raw_data_bin=ADC2_raw_data_bin(2:2:end,:);
ADC1_3_raw_data_bin=ADC3_raw_data_bin(1:2:end,:);
ADC2_3_raw_data_bin=ADC3_raw_data_bin(2:2:end,:);
ADC1_4_raw_data_bin=ADC4_raw_data_bin(1:2:end,:);
ADC2_4_raw_data_bin=ADC4_raw_data_bin(2:2:end,:);


ADC1_1_data=zeros(len*2,4);%% ͨ��1 ADC1 ������
ADC1_2_data=zeros(len*2,4);%% ͨ��1 ADC2 ������
ADC1_3_data=zeros(len*2,4);%% ͨ��1 ADC3 ������
ADC1_4_data=zeros(len*2,4);%% ͨ��1 ADC4 ������
ADC2_1_data=zeros(len*2,4);%% ͨ��2 ADC1 ������
ADC2_2_data=zeros(len*2,4);% ͨ��2 ADC2 ������
ADC2_3_data=zeros(len*2,4);% ͨ��2 ADC3 ������
ADC2_4_data=zeros(len*2,4);% ͨ��2 ADC4 ������

E5=zeros(len*4,1);


%��δ���������ǽ�����������
%���洢�� ADC1_1_raw_data_bin��ADC1_2_raw_data_bin��ADC1_3_raw_data_bin �� ADC1_4_raw_data_bin �У�
%ת��Ϊʮ�������ݣ���������洢�ڶ�Ӧ�� ADC1_1_data��ADC1_2_data��ADC1_3_data �� ADC1_4_data �С�
%������˵����ͨ����Ȩ��͵ķ�ʽ��������λ��ϳ�ʮ������ֵ��

%������������ÿһλ���в�ͬ��Ȩ�أ�����Ȩ�ػ����ADC1_1

for jj=1:len*2
    ADC1_1_data(jj,1)=ADC1_1_raw_data_bin(jj,15)*4+ADC1_1_raw_data_bin(jj,14)*2+ADC1_1_raw_data_bin(jj,13)*1;
    ADC1_1_data(jj,2)=ADC1_1_raw_data_bin(jj,12)*4+ADC1_1_raw_data_bin(jj,11)*2+ADC1_1_raw_data_bin(jj,10)*1;
    ADC1_1_data(jj,3)=ADC1_1_raw_data_bin(jj,9) *4+ADC1_1_raw_data_bin(jj,8) *2+ADC1_1_raw_data_bin(jj,7) *1;
    ADC1_1_data(jj,4)=ADC1_1_raw_data_bin(jj,6) *32+ADC1_1_raw_data_bin(jj,5)*16+ADC1_1_raw_data_bin(jj,4)*8+ADC1_1_raw_data_bin(jj,3)*4+ADC1_1_raw_data_bin(jj,2)*2+ADC1_1_raw_data_bin(jj,1)*1;

    ADC1_2_data(jj,1)=ADC1_2_raw_data_bin(jj,15)*4+ADC1_2_raw_data_bin(jj,14)*2+ADC1_2_raw_data_bin(jj,13)*1;
    ADC1_2_data(jj,2)=ADC1_2_raw_data_bin(jj,12)*4+ADC1_2_raw_data_bin(jj,11)*2+ADC1_2_raw_data_bin(jj,10)*1;
    ADC1_2_data(jj,3)=ADC1_2_raw_data_bin(jj,9) *4+ADC1_2_raw_data_bin(jj,8) *2+ADC1_2_raw_data_bin(jj,7) *1;
    ADC1_2_data(jj,4)=ADC1_2_raw_data_bin(jj,6) *32+ADC1_2_raw_data_bin(jj,5)*16+ADC1_2_raw_data_bin(jj,4)*8+ADC1_2_raw_data_bin(jj,3)*4+ADC1_2_raw_data_bin(jj,2)*2+ADC1_2_raw_data_bin(jj,1)*1;

    ADC1_3_data(jj,1)=ADC1_3_raw_data_bin(jj,15)*4+ADC1_3_raw_data_bin(jj,14)*2+ADC1_3_raw_data_bin(jj,13)*1;
    ADC1_3_data(jj,2)=ADC1_3_raw_data_bin(jj,12)*4+ADC1_3_raw_data_bin(jj,11)*2+ADC1_3_raw_data_bin(jj,10)*1;
    ADC1_3_data(jj,3)=ADC1_3_raw_data_bin(jj,9) *4+ADC1_3_raw_data_bin(jj,8) *2+ADC1_3_raw_data_bin(jj,7) *1;
    ADC1_3_data(jj,4)=ADC1_3_raw_data_bin(jj,6) *32+ADC1_3_raw_data_bin(jj,5)*16+ADC1_3_raw_data_bin(jj,4) *8+ADC1_3_raw_data_bin(jj,3)*4+ADC1_3_raw_data_bin(jj,2)*2+ADC1_3_raw_data_bin(jj,1)*1;

    ADC1_4_data(jj,1)=ADC1_4_raw_data_bin(jj,15)*4+ADC1_4_raw_data_bin(jj,14)*2+ADC1_4_raw_data_bin(jj,13)*1;
    ADC1_4_data(jj,2)=ADC1_4_raw_data_bin(jj,12)*4+ADC1_4_raw_data_bin(jj,11)*2+ADC1_4_raw_data_bin(jj,10)*1;
    ADC1_4_data(jj,3)=ADC1_4_raw_data_bin(jj,9) *4+ADC1_4_raw_data_bin(jj,8) *2+ADC1_4_raw_data_bin(jj,7) *1;
    ADC1_4_data(jj,4)=ADC1_4_raw_data_bin(jj,6) *32+ADC1_4_raw_data_bin(jj,5)*16+ADC1_4_raw_data_bin(jj,4)*8+ADC1_4_raw_data_bin(jj,3)*4+ADC1_4_raw_data_bin(jj,2)*2+ADC1_4_raw_data_bin(jj,1)*1;
end

for jj=1:len*2
    ADC2_1_data(jj,1)=ADC2_1_raw_data_bin(jj,15)*4+ADC2_1_raw_data_bin(jj,14)*2+ADC2_1_raw_data_bin(jj,13)*1;
    ADC2_1_data(jj,2)=ADC2_1_raw_data_bin(jj,12)*4+ADC2_1_raw_data_bin(jj,11)*2+ADC2_1_raw_data_bin(jj,10)*1;
    ADC2_1_data(jj,3)=ADC2_1_raw_data_bin(jj,9)*4+ADC2_1_raw_data_bin(jj,8)*2+ADC2_1_raw_data_bin(jj,7)*1;
    ADC2_1_data(jj,4)=ADC2_1_raw_data_bin(jj,6)*32+ADC2_1_raw_data_bin(jj,5)*16+ADC2_1_raw_data_bin(jj,4)*8+ADC2_1_raw_data_bin(jj,3)*4+ADC2_1_raw_data_bin(jj,2)*2+ADC2_1_raw_data_bin(jj,1)*1;

    ADC2_2_data(jj,1)=ADC2_2_raw_data_bin(jj,15)*4+ADC2_2_raw_data_bin(jj,14)*2+ADC2_2_raw_data_bin(jj,13)*1;
    ADC2_2_data(jj,2)=ADC2_2_raw_data_bin(jj,12)*4+ADC2_2_raw_data_bin(jj,11)*2+ADC2_2_raw_data_bin(jj,10)*1;
    ADC2_2_data(jj,3)=ADC2_2_raw_data_bin(jj,9)*4+ADC2_2_raw_data_bin(jj,8)*2+ADC2_2_raw_data_bin(jj,7)*1;
    ADC2_2_data(jj,4)=ADC2_2_raw_data_bin(jj,6)*32+ADC2_2_raw_data_bin(jj,5)*16+ADC2_2_raw_data_bin(jj,4)*8+ADC2_2_raw_data_bin(jj,3)*4+ADC2_2_raw_data_bin(jj,2)*2+ADC2_2_raw_data_bin(jj,1)*1;

    ADC2_3_data(jj,1)=ADC2_3_raw_data_bin(jj,15)*4+ADC2_3_raw_data_bin(jj,14)*2+ADC2_3_raw_data_bin(jj,13)*1;
    ADC2_3_data(jj,2)=ADC2_3_raw_data_bin(jj,12)*4+ADC2_3_raw_data_bin(jj,11)*2+ADC2_3_raw_data_bin(jj,10)*1;
    ADC2_3_data(jj,3)=ADC2_3_raw_data_bin(jj,9)*4+ADC2_3_raw_data_bin(jj,8)*2+ADC2_3_raw_data_bin(jj,7)*1;
    ADC2_3_data(jj,4)=ADC2_3_raw_data_bin(jj,6)*32+ADC2_3_raw_data_bin(jj,5)*16+ADC2_3_raw_data_bin(jj,4)*8+ADC2_3_raw_data_bin(jj,3)*4+ADC2_3_raw_data_bin(jj,2)*2+ADC2_3_raw_data_bin(jj,1)*1;

    ADC2_4_data(jj,1)=ADC2_4_raw_data_bin(jj,15)*4+ADC2_4_raw_data_bin(jj,14)*2+ADC2_4_raw_data_bin(jj,13)*1;
    ADC2_4_data(jj,2)=ADC2_4_raw_data_bin(jj,12)*4+ADC2_4_raw_data_bin(jj,11)*2+ADC2_4_raw_data_bin(jj,10)*1;
    ADC2_4_data(jj,3)=ADC2_4_raw_data_bin(jj,9)*4+ADC2_4_raw_data_bin(jj,8)*2+ADC2_4_raw_data_bin(jj,7)*1;
    ADC2_4_data(jj,4)=ADC2_4_raw_data_bin(jj,6)*32+ADC2_4_raw_data_bin(jj,5)*16+ADC2_4_raw_data_bin(jj,4)*8+ADC2_4_raw_data_bin(jj,3)*4+ADC2_4_raw_data_bin(jj,2)*2+ADC2_4_raw_data_bin(jj,1)*1;
end


% --------- read data -------------------------------
ADC1_1_initial=zeros((len-1)*2,1);
ADC1_2_initial=zeros((len-1)*2,1);
ADC1_3_initial=zeros((len-1)*2,1);
ADC1_4_initial=zeros((len-1)*2,1);
ADC2_1_initial=zeros((len-1)*2,1);
ADC2_2_initial=zeros((len-1)*2,1);
ADC2_3_initial=zeros((len-1)*2,1);
ADC2_4_initial=zeros((len-1)*2,1);

% ������ת��Ϊ10��������  ͨ����Ȩ��͵ķ�ʽ����������λ��ϳ�ʮ������ֵ���Ӷ�����������ݵ�ת�����̡�
%�öδ��������δ����У׼����£��ɼ���������Ҫ����Ȩ�ر������ԭʼ���ADC1_1_initial��
for i=1:(len-1)*2
    ADC1_1_initial(i,1)=ADC1_1_data(i,4)+ADC1_1_data(i,3)*32+ADC1_1_data(i,2)*128+ADC1_1_data(i,1)*512;
    ADC1_2_initial(i,1)=ADC1_2_data(i,4)+ADC1_2_data(i,3)*32+ADC1_2_data(i,2)*128+ADC1_2_data(i,1)*512;  
    ADC1_3_initial(i,1)=ADC1_3_data(i,4)+ADC1_3_data(i,3)*32+ADC1_3_data(i,2)*128+ADC1_3_data(i,1)*512;
    ADC1_4_initial(i,1)=ADC1_4_data(i,4)+ADC1_4_data(i,3)*32+ADC1_4_data(i,2)*128+ADC1_4_data(i,1)*512;
end

for i=1:(len-1)*2
    ADC2_1_initial(i,1)=ADC2_1_data(i,4)+ADC2_1_data(i,3)*32+ADC2_1_data(i,2)*128+ADC2_1_data(i,1)*512;
    ADC2_2_initial(i,1)=ADC2_2_data(i,4)+ADC2_2_data(i,3)*32+ADC2_2_data(i,2)*128+ADC2_2_data(i,1)*512;  
    ADC2_3_initial(i,1)=ADC2_3_data(i,4)+ADC2_3_data(i,3)*32+ADC2_3_data(i,2)*128+ADC2_3_data(i,1)*512;
    ADC2_4_initial(i,1)=ADC2_4_data(i,4)+ADC2_4_data(i,3)*32+ADC2_4_data(i,2)*128+ADC2_4_data(i,1)*512;
end




%ADC1_1_initial Ϊ���ղɼ����ĸ�����ADC��ԭʼ����  
%ADC1_2_initial Ϊ���ղɼ����ĸ�����ADC��ԭʼ����
%ADC1_3_initial Ϊ���ղɼ����ĸ�����ADC��ԭʼ����
%ADC1_4_initial Ϊ���ղɼ����ĸ�����ADC��ԭʼ����
%ADC2_1_initial Ϊ���ղɼ����ĸ�����ADC��ԭʼ����
%ADC2_2_initial Ϊ���ղɼ����ĸ�����ADC��ԭʼ����
%ADC2_3_initial Ϊ���ղɼ����ĸ�����ADC��ԭʼ����
%ADC2_4_initial Ϊ���ղɼ����ĸ�����ADC��ԭʼ����

% code=double(ADC1_1_initial);
% numpt=length(code);   
% numbit=12; %ADCλ��
% harm_nums=15; %���ǵ�г������
% N=length(code);  %���ݵ������
% %%plot results in time domain 
% figure; %%%%%%%%%%%%%%%%%%%%%%
% plot([1:N],code); %%%%%%%%%%%%%%%%%%%%%%%
% title('TIME DOMAIN') 
% xlabel('SAMPLES'); 
% ylabel('DIGITAL OUTPUT CODE'); 
% zoom xon; 
% Dout_spect = fft(code, numpt);
% % �� FFT ���ת��Ϊ�ֱ���dB��
% Dout_dB = 20 * log10(abs(Dout_spect));
% % ������СֵΪ -200 dB
% for i = 1:numpt
%     if Dout_dB(i) < -200
%         Dout_dB(i) = -200;
%     end
% end
% % ����Ƶ��ͼ
% figure;
% maxdB = max(Dout_dB(2:numpt/2));
% plot([0:numpt/2-1] * fclk / numpt, Dout_dB(1:numpt/2) - maxdB);
% grid on;
% title('FFT PLOT');
% xlabel('ANALOG INPUT FREQUENCY (MHz)');
% ylabel('AMPLITUDE (dB)');
% axis([0 fclk/2 -110 0]); % ����Ƶ�ʷ�ΧΪ 0 �� fclk/2��NyquistƵ�ʣ�����λΪ MHz



% �����渵��Ҷ�任
% Dout_time_domain = ifft(Dout_spect);
% 
% % Dout_time_domain = real(Dout_spect);
% % ����ʱ��ͼ
% figure;
% plot([1:length(Dout_time_domain)], Dout_time_domain);
% title('TIME DOMAIN SIGNAL');
% xlabel('SAMPLES');
% ylabel('AMPLITUDE');
% grid on;



if(channel_1_key)
	% if(cap_cal_key==0)
	% %%%%%%%%%%%%%%%%%%%ADC1_1%%%%%%%%%%%%%%%%%%%%%%%
	% 	%---Optimization--%
	% 	ADC1_1_cor_T_MDAC11=ones(6,1);
	% 	ADC1_1_cor_T_MDAC22=ones(6,1);
	% 	ADC1_1_cor_T_MDAC33=ones(6,1);
	% 	%---Optimization--%
	% 	ADC1_2_cor_T_MDAC11=ones(6,1);
	% 	ADC1_2_cor_T_MDAC22=ones(6,1);
	% 	ADC1_2_cor_T_MDAC33=ones(6,1);
	% 	%---Optimization--%
	% 	ADC1_3_cor_T_MDAC11=ones(6,1);
	% 	ADC1_3_cor_T_MDAC22=ones(6,1);
	% 	ADC1_3_cor_T_MDAC33=ones(6,1);
	% 	%---Optimization--%
	% 	ADC1_4_cor_T_MDAC11=ones(6,1);
	% 	ADC1_4_cor_T_MDAC22=ones(6,1);
	% 	ADC1_4_cor_T_MDAC33=ones(6,1);
	% for i=1:(len-1)*2
	% %   二进制码转换为温度计�?   
	% 	ADC1_1_T_MDAC1(i,:)=therm_to_binary(ADC1_1_data(i,1),i);
	% 	ADC1_1_T_MDAC2(i,:)=therm_to_binary(ADC1_1_data(i,2),i);
	% 	ADC1_1_T_MDAC3(i,:)=therm_to_binary(ADC1_1_data(i,3),i);  
	% end
	% for i=1:(len-1)*2
	% %   二进制码转换为温度计�?   
	% 	ADC1_2_T_MDAC1(i,:)=therm_to_binary(ADC1_2_data(i,1),i);
	% 	ADC1_2_T_MDAC2(i,:)=therm_to_binary(ADC1_2_data(i,2),i);
	% 	ADC1_2_T_MDAC3(i,:)=therm_to_binary(ADC1_2_data(i,3),i);  
    % end
	% for i=1:(len-1)*2
	% %   二进制码转换为温度计�?   
	% 	ADC1_3_T_MDAC1(i,:)=therm_to_binary(ADC1_3_data(i,1),i);
	% 	ADC1_3_T_MDAC2(i,:)=therm_to_binary(ADC1_3_data(i,2),i);
	% 	ADC1_3_T_MDAC3(i,:)=therm_to_binary(ADC1_3_data(i,3),i);  
    % end
	% for i=1:(len-1)*2
	% %   二进制码转换为温度计�?   
	% 	ADC1_4_T_MDAC1(i,:)=therm_to_binary(ADC1_4_data(i,1),i);
	% 	ADC1_4_T_MDAC2(i,:)=therm_to_binary(ADC1_4_data(i,2),i);
	% 	ADC1_4_T_MDAC3(i,:)=therm_to_binary(ADC1_4_data(i,3),i);  
	% end
	% %校准后的数据
    % 
	% 	[ADC1_1_cal]=cap_cal_performance_case1(ADC1_1_data,ADC1_1_initial,ADC1_1_T_MDAC1,ADC1_1_T_MDAC2,ADC1_1_T_MDAC3,ADC1_1_cor_T_MDAC11,ADC1_1_cor_T_MDAC22,ADC1_1_cor_T_MDAC33,len);  
    % 
    % 
	% % ADC1__data_mux=ADC1_1_initial(1000:(len-1)*4-999,1);
	% % SFDR_Calc_new;
    % 
	% %校准后的数据
	% 	[ADC1_2_cal]=cap_cal_performance_case1(ADC1_2_data,ADC1_2_initial,ADC1_2_T_MDAC1,ADC1_2_T_MDAC2,ADC1_2_T_MDAC3,ADC1_2_cor_T_MDAC11,ADC1_2_cor_T_MDAC22,ADC1_2_cor_T_MDAC33,len);  
    % 
	% % ADC1__data_mux=ADC1_2_initial(1000:(len-1)*4-999,1);
	% % SFDR_Calc_new;
    % 
	% %校准后的数据 
	% 	[ADC1_3_cal]=cap_cal_performance_case1(ADC1_3_data,ADC1_3_initial,ADC1_3_T_MDAC1,ADC1_3_T_MDAC2,ADC1_3_T_MDAC3,ADC1_3_cor_T_MDAC11,ADC1_3_cor_T_MDAC22,ADC1_3_cor_T_MDAC33,len);  
    % 
	% % ADC1__data_mux=ADC1_3_initial(1000:(len-1)*4-999,1);
	% % SFDR_Calc_new;
    % 
	% %校准后的数据
	% 	[ADC1_4_cal]=cap_cal_performance_case1(ADC1_4_data,ADC1_4_initial,ADC1_4_T_MDAC1,ADC1_4_T_MDAC2,ADC1_4_T_MDAC3,ADC1_4_cor_T_MDAC11,ADC1_4_cor_T_MDAC22,ADC1_4_cor_T_MDAC33,len);  
    % 
	% % ADC1__data_mux=ADC1_4_initial(1000:(len-1)*4-999,1);
	% % SFDR_Calc_new;
	% if(Vres_trans_key)
	% 	Vres_trans(ADC1_1_data,ADC1_1_initial,ADC1_1_T_MDAC2,ADC1_1_T_MDAC3,ADC1_1_cor_T_MDAC22,ADC1_1_cor_T_MDAC33,4,4,4,len,'ADC1_1');
	% 	Vres_trans(ADC1_2_data,ADC1_2_initial,ADC1_2_T_MDAC2,ADC1_2_T_MDAC3,ADC1_2_cor_T_MDAC22,ADC1_2_cor_T_MDAC33,4,4,4,len,'ADC1_2');
	% 	Vres_trans(ADC1_3_data,ADC1_3_initial,ADC1_3_T_MDAC2,ADC1_3_T_MDAC3,ADC1_3_cor_T_MDAC22,ADC1_3_cor_T_MDAC33,4,4,4,len,'ADC1_3');
	% 	Vres_trans(ADC1_4_data,ADC1_4_initial,ADC1_4_T_MDAC2,ADC1_4_T_MDAC3,ADC1_4_cor_T_MDAC22,ADC1_4_cor_T_MDAC33,4,4,4,len,'ADC1_4');
	% end
	% end
	
	
	
	if(cap_cal_key)
      %%%%%%%%%%%%%%%%%%%ADC1_1%%%%%%%%%%%%%%%%%%%%%%%
	for i=1:(len-1)*2
	%   ���루Thermometer Code������ת��Ϊ�����Ʊ�ʾ?  
    % 0����000000��1����100000��2����110000��3����111000��4����111100��5����111100��6Ϊ1111111
	%ADC1_1_T_MDAC1 �ͱ�ʾ��ADC1_1_data��һ�еĶ�����������
    %ADC1_1_T_MDAC2 �ͱ�ʾ��ADC1_1_data�ڶ��еĶ�����������
    %ADC1_1_T_MDAC3 �ͱ�ʾ��ADC1_1_data�����еĶ�����������
        ADC1_1_T_MDAC1(i,:)=therm_to_binary(ADC1_1_data(i,1),i);
		ADC1_1_T_MDAC2(i,:)=therm_to_binary(ADC1_1_data(i,2),i);
		ADC1_1_T_MDAC3(i,:)=therm_to_binary(ADC1_1_data(i,3),i);  
	end
	for i=1:6  %����ÿ��������λ�ġ�1�����ָ���  
               % ��ADC1_1_T_MDAC1��ADC1_1_T_MDAC2��ADC1_1_T_MDAC3��ÿһ�и��Զ�Ӧ1���ֵĸ���
		RATES_AD1(1,i) = 100*sum(ADC1_1_T_MDAC1(:,i))/length(ADC1_1_T_MDAC1(:,i));
		RATES_AD1(2,i) = 100*sum(ADC1_1_T_MDAC2(:,i))/length(ADC1_1_T_MDAC2(:,i));
		RATES_AD1(3,i) = 100*sum(ADC1_1_T_MDAC3(:,i))/length(ADC1_1_T_MDAC3(:,i));
    end



	%----------analog output code transfer to 0or1__to decimalism%

%����������ȷ��MDAC������׼ȷ������в��źŵķŴ���ƫ�����ֵ��
%����ʧ��������MDAC�е�ֱ��ʧ����ȷ���в��źŵ����׼ȷ��
%����������������DAC�ͷŴ����ķ����ԣ�ȷ���в��źŵ����Զȡ�
%�Ż���̬��Χ��ͨ��У׼��ȷ��MDAC�ܹ������Χ�����źţ������źű��ͻ�ʧ�档

	stages=3; %ADC��ģ��ת���������ж��ٸ�����Stage��
	stage_cali=3; %��ʾ��ҪУ׼�ļ���
	%--intial---%
	cal_npts=3;  %У׼������ ��ÿ��У׼�����У���ʹ��3����ͬ��У׼�����Ż�У׼����
	NN=10;    %У׼���� ��У׼�����У�ÿ�ε���У׼����ʱ���᳢��10����ͬ��ֵ
	%---Optimization--%
	ADC1_1_cor_T_MDAC11=ones(6,1); %��һ��MDACģ���У׼����
	ADC1_1_cor_T_MDAC22=ones(6,1); %�ڶ���MDACģ���У׼����
	ADC1_1_cor_T_MDAC33=ones(6,1); %������MDACģ���У׼����
	
	
	for a=1:search_cycle 
 %ʵ����һ����׶ε��Ż�У׼���̣����ڵ���ģ��ת������ADC���еĶ��MDAC���༶����ģ��ת������ģ���У׼����
 %��������
		if(case_choose==1)          %case_choose=1  
% 1 2 3��stage��У׼������ÿһ��stage��Ӧ��������  
% ��ͨ����Ȩ��͵ķ�ʽ��������λ��ϳ�ʮ������ֵ 
%У׼������ 

%�ò���ΪУ׼�㷨������ĵĲ��裬ͨ�����ϵ�����ȡ���ENOB�ķ�ʽ�������stage��ÿ��stage��6��У׼����
%��������������ʧ���ADC���ܡ�ENOBԽ�ߣ���ʾADC�ܹ�����ȷ�ر�ʾ�����źŵķ��ȱ仯���Ӷ��ṩ���ߵķֱ��ʺ͸��͵���������
%FDRԽ�ߣ�˵��ϵͳ�е���������ɢ�ź�ԽС���źŴ��������Խ��
%��ENOB����ʱ����ζ��ADC��������ʧ��ˮƽ���͡���ֱ�ӵ���SFDR����ߣ���ΪSFDR��Ҫ����������ɢ�źŵ�Ӱ��
			if(cap_cal_MDAC3_key==1) ADC1_1_cor_T_MDAC33=cap_search_MDAC3(ADC1_1_cor_T_MDAC11,ADC1_1_cor_T_MDAC22,ADC1_1_cor_T_MDAC33,ADC1_1_T_MDAC1,ADC1_1_T_MDAC2,ADC1_1_T_MDAC3,ADC1_1_data,cal_npts,NN,len); end
			if(cap_cal_MDAC2_key==1) ADC1_1_cor_T_MDAC22=cap_search_MDAC2(ADC1_1_cor_T_MDAC11,ADC1_1_cor_T_MDAC22,ADC1_1_cor_T_MDAC33,ADC1_1_T_MDAC1,ADC1_1_T_MDAC2,ADC1_1_T_MDAC3,ADC1_1_data,cal_npts,NN,len); end
			if(cap_cal_MDAC1_key==1) ADC1_1_cor_T_MDAC11=cap_search_MDAC1(ADC1_1_cor_T_MDAC11,ADC1_1_cor_T_MDAC22,ADC1_1_cor_T_MDAC33,ADC1_1_T_MDAC1,ADC1_1_T_MDAC2,ADC1_1_T_MDAC3,ADC1_1_data,cal_npts,NN,len); end
			if(cap_cal_MDAC2_key==1) ADC1_1_cor_T_MDAC22=cap_search_MDAC2(ADC1_1_cor_T_MDAC11,ADC1_1_cor_T_MDAC22,ADC1_1_cor_T_MDAC33,ADC1_1_T_MDAC1,ADC1_1_T_MDAC2,ADC1_1_T_MDAC3,ADC1_1_data,cal_npts,NN,len); end
			if(cap_cal_MDAC3_key==1) ADC1_1_cor_T_MDAC33=cap_search_MDAC3(ADC1_1_cor_T_MDAC11,ADC1_1_cor_T_MDAC22,ADC1_1_cor_T_MDAC33,ADC1_1_T_MDAC1,ADC1_1_T_MDAC2,ADC1_1_T_MDAC3,ADC1_1_data,cal_npts,NN,len); end
    	end    
	
		if(case_choose==2)  
			if(cap_cal_MDAC1_key==1) ADC1_1_cor_T_MDAC11=cap_search_MDAC1(ADC1_1_cor_T_MDAC11,ADC1_1_cor_T_MDAC22,ADC1_1_cor_T_MDAC33,ADC1_1_T_MDAC1,ADC1_1_T_MDAC2,ADC1_1_T_MDAC3,ADC1_1_data,cal_npts,NN,len); end
			if(cap_cal_MDAC2_key==1) ADC1_1_cor_T_MDAC22=cap_search_MDAC2(ADC1_1_cor_T_MDAC11,ADC1_1_cor_T_MDAC22,ADC1_1_cor_T_MDAC33,ADC1_1_T_MDAC1,ADC1_1_T_MDAC2,ADC1_1_T_MDAC3,ADC1_1_data,cal_npts,NN,len); end
			if(cap_cal_MDAC3_key==1) ADC1_1_cor_T_MDAC33=cap_search_MDAC3(ADC1_1_cor_T_MDAC11,ADC1_1_cor_T_MDAC22,ADC1_1_cor_T_MDAC33,ADC1_1_T_MDAC1,ADC1_1_T_MDAC2,ADC1_1_T_MDAC3,ADC1_1_data,cal_npts,NN,len); end
			if(cap_cal_MDAC2_key==1) ADC1_1_cor_T_MDAC22=cap_search_MDAC2(ADC1_1_cor_T_MDAC11,ADC1_1_cor_T_MDAC22,ADC1_1_cor_T_MDAC33,ADC1_1_T_MDAC1,ADC1_1_T_MDAC2,ADC1_1_T_MDAC3,ADC1_1_data,cal_npts,NN,len); end
			if(cap_cal_MDAC1_key==1) ADC1_1_cor_T_MDAC11=cap_search_MDAC1(ADC1_1_cor_T_MDAC11,ADC1_1_cor_T_MDAC22,ADC1_1_cor_T_MDAC33,ADC1_1_T_MDAC1,ADC1_1_T_MDAC2,ADC1_1_T_MDAC3,ADC1_1_data,cal_npts,NN,len); end
		end
	end
	
	%�ò����������ͼ ǰ����ͼ��û�о���У׼��ԭʼ�źŵ�ʱ���Ƶ��ͼ 
    %������ͼ�Ǿ���У׼�㷨�Ժ��ԭʼ�źŵ�ʱ���Ƶ��ͼ

    %ADC1_1_data δ���м�Ȩ֮ǰ��ԭʼ����
    %ADC1_1_initial ��Ȩ֮����ADC�е�ԭʼ���
    %ADC1_1_T_MDAC1 ��ADC1_1_data�е�һ�ж�Ӧ��������
    %ADC1_1_T_MDAC2 ��ADC1_1_data�еڶ��ж�Ӧ��������
    %ADC1_1_T_MDAC3 ��ADC1_1_data�е����ж�Ӧ��������
    %ADC1_1_cor_T_MDAC11 ��һ��stage������У׼����
    %ADC1_1_cor_T_MDAC22 �ڶ���stage������У׼����
    %ADC1_1_cor_T_MDAC33 ������stage������У׼����
		[ADC1_1_cal]=cap_cal_performance_case1(ADC1_1_data,ADC1_1_initial,ADC1_1_T_MDAC1,ADC1_1_T_MDAC2,ADC1_1_T_MDAC3,ADC1_1_cor_T_MDAC11,ADC1_1_cor_T_MDAC22,ADC1_1_cor_T_MDAC33,len);  
	

	%��������DAC1 2 3������ֵ У׼֮��ĸ�����ADC��ʵ������ֵ
	ADC1_1_Gain_MDAC1=(ADC1_1_cor_T_MDAC11(1,1)+ADC1_1_cor_T_MDAC11(2,1)+ADC1_1_cor_T_MDAC11(3,1)+ADC1_1_cor_T_MDAC11(4,1)+ADC1_1_cor_T_MDAC11(5,1)+ADC1_1_cor_T_MDAC11(6,1)+2)/2;
	ADC1_1_Gain_MDAC2=(ADC1_1_cor_T_MDAC22(1,1)+ADC1_1_cor_T_MDAC22(2,1)+ADC1_1_cor_T_MDAC22(3,1)+ADC1_1_cor_T_MDAC22(4,1)+ADC1_1_cor_T_MDAC22(5,1)+ADC1_1_cor_T_MDAC22(6,1)+2)/2;
	ADC1_1_Gain_MDAC3=(ADC1_1_cor_T_MDAC33(1,1)+ADC1_1_cor_T_MDAC33(2,1)+ADC1_1_cor_T_MDAC33(3,1)+ADC1_1_cor_T_MDAC33(4,1)+ADC1_1_cor_T_MDAC33(5,1)+ADC1_1_cor_T_MDAC33(6,1)+2)/2;
	% figure;
	% plot(hist(ADC1_1_initial,[0:4095]));




	%%%%%%%%%%%%%%%%%%%ADC1_2%%%%%%%%%%%%%%%%%%%%%%%
	for i=1:(len-1)*2
	%   ����������ת��Ϊ����������   
		ADC1_2_T_MDAC1(i,:)=therm_to_binary(ADC1_2_data(i,1),i);
		ADC1_2_T_MDAC2(i,:)=therm_to_binary(ADC1_2_data(i,2),i);
		ADC1_2_T_MDAC3(i,:)=therm_to_binary(ADC1_2_data(i,3),i);  
    end
    %����ÿ��λ�ġ�1�����ֵĸ��ʣ��԰ٷֱȱ�ʾ��
	for i=1:6
		RATES_AD2(1,i) = 100*sum(ADC1_2_T_MDAC1(:,i))/length(ADC1_2_T_MDAC1(:,i));
		RATES_AD2(2,i) = 100*sum(ADC1_2_T_MDAC2(:,i))/length(ADC1_2_T_MDAC2(:,i));
		RATES_AD2(3,i) = 100*sum(ADC1_2_T_MDAC3(:,i))/length(ADC1_2_T_MDAC3(:,i));
    end  
    %----------analog output code transfer to 0or1__to decimalism%
	stages=3;
	stage_cali=3;
	%--intial---%
	cal_npts=3;
	NN=10;
	%---Optimization--%
	ADC1_2_cor_T_MDAC11=ones(6,1);
	ADC1_2_cor_T_MDAC22=ones(6,1);
	ADC1_2_cor_T_MDAC33=ones(6,1);
	
	for a=1:search_cycle %
		if(case_choose==1)          
			if(cap_cal_MDAC3_key==1) ADC1_2_cor_T_MDAC33=cap_search_MDAC3(ADC1_2_cor_T_MDAC11,ADC1_2_cor_T_MDAC22,ADC1_2_cor_T_MDAC33,ADC1_2_T_MDAC1,ADC1_2_T_MDAC2,ADC1_2_T_MDAC3,ADC1_2_data,cal_npts,NN,len);  end 
			if(cap_cal_MDAC2_key==1) ADC1_2_cor_T_MDAC22=cap_search_MDAC2(ADC1_2_cor_T_MDAC11,ADC1_2_cor_T_MDAC22,ADC1_2_cor_T_MDAC33,ADC1_2_T_MDAC1,ADC1_2_T_MDAC2,ADC1_2_T_MDAC3,ADC1_2_data,cal_npts,NN,len);  end
			if(cap_cal_MDAC1_key==1) ADC1_2_cor_T_MDAC11=cap_search_MDAC1(ADC1_2_cor_T_MDAC11,ADC1_2_cor_T_MDAC22,ADC1_2_cor_T_MDAC33,ADC1_2_T_MDAC1,ADC1_2_T_MDAC2,ADC1_2_T_MDAC3,ADC1_2_data,cal_npts,NN,len);  end
			if(cap_cal_MDAC2_key==1) ADC1_2_cor_T_MDAC22=cap_search_MDAC2(ADC1_2_cor_T_MDAC11,ADC1_2_cor_T_MDAC22,ADC1_2_cor_T_MDAC33,ADC1_2_T_MDAC1,ADC1_2_T_MDAC2,ADC1_2_T_MDAC3,ADC1_2_data,cal_npts,NN,len);  end
			if(cap_cal_MDAC3_key==1) ADC1_2_cor_T_MDAC33=cap_search_MDAC3(ADC1_2_cor_T_MDAC11,ADC1_2_cor_T_MDAC22,ADC1_2_cor_T_MDAC33,ADC1_2_T_MDAC1,ADC1_2_T_MDAC2,ADC1_2_T_MDAC3,ADC1_2_data,cal_npts,NN,len);  end
       end    
	
		if(case_choose==2)  
			if(cap_cal_MDAC1_key==1) ADC1_2_cor_T_MDAC11=cap_search_MDAC1(ADC1_2_cor_T_MDAC11,ADC1_2_cor_T_MDAC22,ADC1_2_cor_T_MDAC33,ADC1_2_T_MDAC1,ADC1_2_T_MDAC2,ADC1_2_T_MDAC3,ADC1_2_data,cal_npts,NN,len);  end
			if(cap_cal_MDAC2_key==1) ADC1_2_cor_T_MDAC22=cap_search_MDAC2(ADC1_2_cor_T_MDAC11,ADC1_2_cor_T_MDAC22,ADC1_2_cor_T_MDAC33,ADC1_2_T_MDAC1,ADC1_2_T_MDAC2,ADC1_2_T_MDAC3,ADC1_2_data,cal_npts,NN,len);  end
			if(cap_cal_MDAC3_key==1) ADC1_2_cor_T_MDAC33=cap_search_MDAC3(ADC1_2_cor_T_MDAC11,ADC1_2_cor_T_MDAC22,ADC1_2_cor_T_MDAC33,ADC1_2_T_MDAC1,ADC1_2_T_MDAC2,ADC1_2_T_MDAC3,ADC1_2_data,cal_npts,NN,len);  end
			if(cap_cal_MDAC2_key==1) ADC1_2_cor_T_MDAC22=cap_search_MDAC2(ADC1_2_cor_T_MDAC11,ADC1_2_cor_T_MDAC22,ADC1_2_cor_T_MDAC33,ADC1_2_T_MDAC1,ADC1_2_T_MDAC2,ADC1_2_T_MDAC3,ADC1_2_data,cal_npts,NN,len);  end
			if(cap_cal_MDAC1_key==1) ADC1_2_cor_T_MDAC11=cap_search_MDAC1(ADC1_2_cor_T_MDAC11,ADC1_2_cor_T_MDAC22,ADC1_2_cor_T_MDAC33,ADC1_2_T_MDAC1,ADC1_2_T_MDAC2,ADC1_2_T_MDAC3,ADC1_2_data,cal_npts,NN,len);  end
		end
	end
	
	%校准后的数据
		[ADC1_2_cal]=cap_cal_performance_case1(ADC1_2_data,ADC1_2_initial,ADC1_2_T_MDAC1,ADC1_2_T_MDAC2,ADC1_2_T_MDAC3,ADC1_2_cor_T_MDAC11,ADC1_2_cor_T_MDAC22,ADC1_2_cor_T_MDAC33,len);  
	
	
	ADC1_2_Gain_MDAC1=(ADC1_2_cor_T_MDAC11(1,1)+ADC1_2_cor_T_MDAC11(2,1)+ADC1_2_cor_T_MDAC11(3,1)+ADC1_2_cor_T_MDAC11(4,1)+ADC1_2_cor_T_MDAC11(5,1)+ADC1_2_cor_T_MDAC11(6,1)+2)/2;
	ADC1_2_Gain_MDAC2=(ADC1_2_cor_T_MDAC22(1,1)+ADC1_2_cor_T_MDAC22(2,1)+ADC1_2_cor_T_MDAC22(3,1)+ADC1_2_cor_T_MDAC22(4,1)+ADC1_2_cor_T_MDAC22(5,1)+ADC1_2_cor_T_MDAC22(6,1)+2)/2;
	ADC1_2_Gain_MDAC3=(ADC1_2_cor_T_MDAC33(1,1)+ADC1_2_cor_T_MDAC33(2,1)+ADC1_2_cor_T_MDAC33(3,1)+ADC1_2_cor_T_MDAC33(4,1)+ADC1_2_cor_T_MDAC33(5,1)+ADC1_2_cor_T_MDAC33(6,1)+2)/2;
	% figure;
	% plot(hist(ADC1_2_initial,[0:4095]));
	


	%%%%%%%%%%%%%%%%%%%ADC1_3%%%%%%%%%%%%%%%%%%%%%%%
	for i=1:(len-1)*2
	%   二进制码转换为温度计�?   
		ADC1_3_T_MDAC1(i,:)=therm_to_binary(ADC1_3_data(i,1),i);
		ADC1_3_T_MDAC2(i,:)=therm_to_binary(ADC1_3_data(i,2),i);
		ADC1_3_T_MDAC3(i,:)=therm_to_binary(ADC1_3_data(i,3),i);  
	end
	for i=1:6
		RATES_AD3(1,i) = 100*sum(ADC1_3_T_MDAC1(:,i))/length(ADC1_3_T_MDAC1(:,i));
		RATES_AD3(2,i) = 100*sum(ADC1_3_T_MDAC2(:,i))/length(ADC1_3_T_MDAC2(:,i));
		RATES_AD3(3,i) = 100*sum(ADC1_3_T_MDAC3(:,i))/length(ADC1_3_T_MDAC3(:,i));
	end
	%----------analog output code transfer to 0or1__to decimalism%
	stages=3;
	stage_cali=3;
	%--intial---%
	cal_npts=3;
	NN=10;
	%---Optimization--%
	ADC1_3_cor_T_MDAC11=ones(6,1);
	ADC1_3_cor_T_MDAC22=ones(6,1);
	ADC1_3_cor_T_MDAC33=ones(6,1);
	
	
	for a=1:search_cycle %反复校准次数
		if(case_choose==1)          
			if(cap_cal_MDAC3_key==1) ADC1_3_cor_T_MDAC33=cap_search_MDAC3(ADC1_3_cor_T_MDAC11,ADC1_3_cor_T_MDAC22,ADC1_3_cor_T_MDAC33,ADC1_3_T_MDAC1,ADC1_3_T_MDAC2,ADC1_3_T_MDAC3,ADC1_3_data,cal_npts,NN,len);  end
			if(cap_cal_MDAC2_key==1) ADC1_3_cor_T_MDAC22=cap_search_MDAC2(ADC1_3_cor_T_MDAC11,ADC1_3_cor_T_MDAC22,ADC1_3_cor_T_MDAC33,ADC1_3_T_MDAC1,ADC1_3_T_MDAC2,ADC1_3_T_MDAC3,ADC1_3_data,cal_npts,NN,len);  end
			if(cap_cal_MDAC1_key==1) ADC1_3_cor_T_MDAC11=cap_search_MDAC1(ADC1_3_cor_T_MDAC11,ADC1_3_cor_T_MDAC22,ADC1_3_cor_T_MDAC33,ADC1_3_T_MDAC1,ADC1_3_T_MDAC2,ADC1_3_T_MDAC3,ADC1_3_data,cal_npts,NN,len);  end
			if(cap_cal_MDAC2_key==1) ADC1_3_cor_T_MDAC22=cap_search_MDAC2(ADC1_3_cor_T_MDAC11,ADC1_3_cor_T_MDAC22,ADC1_3_cor_T_MDAC33,ADC1_3_T_MDAC1,ADC1_3_T_MDAC2,ADC1_3_T_MDAC3,ADC1_3_data,cal_npts,NN,len);  end
			if(cap_cal_MDAC3_key==1) ADC1_3_cor_T_MDAC33=cap_search_MDAC3(ADC1_3_cor_T_MDAC11,ADC1_3_cor_T_MDAC22,ADC1_3_cor_T_MDAC33,ADC1_3_T_MDAC1,ADC1_3_T_MDAC2,ADC1_3_T_MDAC3,ADC1_3_data,cal_npts,NN,len);  end
		end    
	
		if(case_choose==2)  
			if(cap_cal_MDAC1_key==1) ADC1_3_cor_T_MDAC11=cap_search_MDAC1(ADC1_3_cor_T_MDAC11,ADC1_3_cor_T_MDAC22,ADC1_3_cor_T_MDAC33,ADC1_3_T_MDAC1,ADC1_3_T_MDAC2,ADC1_3_T_MDAC3,ADC1_3_data,cal_npts,NN,len); end
			if(cap_cal_MDAC2_key==1) ADC1_3_cor_T_MDAC22=cap_search_MDAC2(ADC1_3_cor_T_MDAC11,ADC1_3_cor_T_MDAC22,ADC1_3_cor_T_MDAC33,ADC1_3_T_MDAC1,ADC1_3_T_MDAC2,ADC1_3_T_MDAC3,ADC1_3_data,cal_npts,NN,len); end
			if(cap_cal_MDAC3_key==1) ADC1_3_cor_T_MDAC33=cap_search_MDAC3(ADC1_3_cor_T_MDAC11,ADC1_3_cor_T_MDAC22,ADC1_3_cor_T_MDAC33,ADC1_3_T_MDAC1,ADC1_3_T_MDAC2,ADC1_3_T_MDAC3,ADC1_3_data,cal_npts,NN,len); end
			if(cap_cal_MDAC2_key==1) ADC1_3_cor_T_MDAC22=cap_search_MDAC2(ADC1_3_cor_T_MDAC11,ADC1_3_cor_T_MDAC22,ADC1_3_cor_T_MDAC33,ADC1_3_T_MDAC1,ADC1_3_T_MDAC2,ADC1_3_T_MDAC3,ADC1_3_data,cal_npts,NN,len); end
			if(cap_cal_MDAC1_key==1) ADC1_3_cor_T_MDAC11=cap_search_MDAC1(ADC1_3_cor_T_MDAC11,ADC1_3_cor_T_MDAC22,ADC1_3_cor_T_MDAC33,ADC1_3_T_MDAC1,ADC1_3_T_MDAC2,ADC1_3_T_MDAC3,ADC1_3_data,cal_npts,NN,len); end
		end
	end
	
	
	%校准后的数据
		[ADC1_3_cal]=cap_cal_performance_case1(ADC1_3_data,ADC1_3_initial,ADC1_3_T_MDAC1,ADC1_3_T_MDAC2,ADC1_3_T_MDAC3,ADC1_3_cor_T_MDAC11,ADC1_3_cor_T_MDAC22,ADC1_3_cor_T_MDAC33,len);  
	
	
	ADC1_3_Gain_MDAC1=(ADC1_3_cor_T_MDAC11(1,1)+ADC1_3_cor_T_MDAC11(2,1)+ADC1_3_cor_T_MDAC11(3,1)+ADC1_3_cor_T_MDAC11(4,1)+ADC1_3_cor_T_MDAC11(5,1)+ADC1_3_cor_T_MDAC11(6,1)+2)/2;
	ADC1_3_Gain_MDAC2=(ADC1_3_cor_T_MDAC22(1,1)+ADC1_3_cor_T_MDAC22(2,1)+ADC1_3_cor_T_MDAC22(3,1)+ADC1_3_cor_T_MDAC22(4,1)+ADC1_3_cor_T_MDAC22(5,1)+ADC1_3_cor_T_MDAC22(6,1)+2)/2;
	ADC1_3_Gain_MDAC3=(ADC1_3_cor_T_MDAC33(1,1)+ADC1_3_cor_T_MDAC33(2,1)+ADC1_3_cor_T_MDAC33(3,1)+ADC1_3_cor_T_MDAC33(4,1)+ADC1_3_cor_T_MDAC33(5,1)+ADC1_3_cor_T_MDAC33(6,1)+2)/2;
	% figure;
	%plot(hist(ADC1_3_initial,[0:4095]));
	%ADC1__data_mux=ADC1_3_initial;
	%DNL_INL_sin;
	




	%%%%%%%%%%%%%%%%%%%ADC1_4%%%%%%%%%%%%%%%%%%%%%%%
	for i=1:(len-1)*2
	%   二进制码转换为温度计�?   
		ADC1_4_T_MDAC1(i,:)=therm_to_binary(ADC1_4_data(i,1),i);
		ADC1_4_T_MDAC2(i,:)=therm_to_binary(ADC1_4_data(i,2),i);
		ADC1_4_T_MDAC3(i,:)=therm_to_binary(ADC1_4_data(i,3),i);  
	end
	for i=1:6
		RATES_AD4(1,i) = 100*sum(ADC1_4_T_MDAC1(:,i))/length(ADC1_4_T_MDAC1(:,i));
		RATES_AD4(2,i) = 100*sum(ADC1_4_T_MDAC2(:,i))/length(ADC1_4_T_MDAC2(:,i));
		RATES_AD4(3,i) = 100*sum(ADC1_4_T_MDAC3(:,i))/length(ADC1_4_T_MDAC3(:,i));
	end
	%----------analog output code transfer to 0or1__to decimalism%
	stages=3;
	stage_cali=3;
	%--intial---%
	cal_npts=3;
	NN=10;
	%---Optimization--%
	ADC1_4_cor_T_MDAC11=ones(6,1);
	ADC1_4_cor_T_MDAC22=ones(6,1);
	ADC1_4_cor_T_MDAC33=ones(6,1);
	
	
	for a=1:search_cycle %反复校准次数
		if(case_choose==1)          
			if(cap_cal_MDAC3_key==1) ADC1_4_cor_T_MDAC33=cap_search_MDAC3(ADC1_4_cor_T_MDAC11,ADC1_4_cor_T_MDAC22,ADC1_4_cor_T_MDAC33,ADC1_4_T_MDAC1,ADC1_4_T_MDAC2,ADC1_4_T_MDAC3,ADC1_4_data,cal_npts,NN,len);  end
			if(cap_cal_MDAC2_key==1) ADC1_4_cor_T_MDAC22=cap_search_MDAC2(ADC1_4_cor_T_MDAC11,ADC1_4_cor_T_MDAC22,ADC1_4_cor_T_MDAC33,ADC1_4_T_MDAC1,ADC1_4_T_MDAC2,ADC1_4_T_MDAC3,ADC1_4_data,cal_npts,NN,len);  end
			if(cap_cal_MDAC1_key==1) ADC1_4_cor_T_MDAC11=cap_search_MDAC1(ADC1_4_cor_T_MDAC11,ADC1_4_cor_T_MDAC22,ADC1_4_cor_T_MDAC33,ADC1_4_T_MDAC1,ADC1_4_T_MDAC2,ADC1_4_T_MDAC3,ADC1_4_data,cal_npts,NN,len);  end
			if(cap_cal_MDAC2_key==1) ADC1_4_cor_T_MDAC22=cap_search_MDAC2(ADC1_4_cor_T_MDAC11,ADC1_4_cor_T_MDAC22,ADC1_4_cor_T_MDAC33,ADC1_4_T_MDAC1,ADC1_4_T_MDAC2,ADC1_4_T_MDAC3,ADC1_4_data,cal_npts,NN,len);  end
			if(cap_cal_MDAC3_key==1) ADC1_4_cor_T_MDAC33=cap_search_MDAC3(ADC1_4_cor_T_MDAC11,ADC1_4_cor_T_MDAC22,ADC1_4_cor_T_MDAC33,ADC1_4_T_MDAC1,ADC1_4_T_MDAC2,ADC1_4_T_MDAC3,ADC1_4_data,cal_npts,NN,len);  end
		end    
	
		if(case_choose==2)  
			if(cap_cal_MDAC1_key==1) ADC1_4_cor_T_MDAC11=cap_search_MDAC1(ADC1_4_cor_T_MDAC11,ADC1_4_cor_T_MDAC22,ADC1_4_cor_T_MDAC33,ADC1_4_T_MDAC1,ADC1_4_T_MDAC2,ADC1_4_T_MDAC3,ADC1_4_data,cal_npts,NN,len);  end
			if(cap_cal_MDAC2_key==1) ADC1_4_cor_T_MDAC22=cap_search_MDAC2(ADC1_4_cor_T_MDAC11,ADC1_4_cor_T_MDAC22,ADC1_4_cor_T_MDAC33,ADC1_4_T_MDAC1,ADC1_4_T_MDAC2,ADC1_4_T_MDAC3,ADC1_4_data,cal_npts,NN,len);  end
			if(cap_cal_MDAC3_key==1) ADC1_4_cor_T_MDAC33=cap_search_MDAC3(ADC1_4_cor_T_MDAC11,ADC1_4_cor_T_MDAC22,ADC1_4_cor_T_MDAC33,ADC1_4_T_MDAC1,ADC1_4_T_MDAC2,ADC1_4_T_MDAC3,ADC1_4_data,cal_npts,NN,len);  end
			if(cap_cal_MDAC2_key==1) ADC1_4_cor_T_MDAC22=cap_search_MDAC2(ADC1_4_cor_T_MDAC11,ADC1_4_cor_T_MDAC22,ADC1_4_cor_T_MDAC33,ADC1_4_T_MDAC1,ADC1_4_T_MDAC2,ADC1_4_T_MDAC3,ADC1_4_data,cal_npts,NN,len);  end
			if(cap_cal_MDAC1_key==1) ADC1_4_cor_T_MDAC11=cap_search_MDAC1(ADC1_4_cor_T_MDAC11,ADC1_4_cor_T_MDAC22,ADC1_4_cor_T_MDAC33,ADC1_4_T_MDAC1,ADC1_4_T_MDAC2,ADC1_4_T_MDAC3,ADC1_4_data,cal_npts,NN,len);  end
		end
	end
	
	
	
	
	%校准后的数据
		[ADC1_4_cal]=cap_cal_performance_case1(ADC1_4_data,ADC1_4_initial,ADC1_4_T_MDAC1,ADC1_4_T_MDAC2,ADC1_4_T_MDAC3,ADC1_4_cor_T_MDAC11,ADC1_4_cor_T_MDAC22,ADC1_4_cor_T_MDAC33,len);    
		
	
	ADC1_4_Gain_MDAC1=(ADC1_4_cor_T_MDAC11(1,1)+ADC1_4_cor_T_MDAC11(2,1)+ADC1_4_cor_T_MDAC11(3,1)+ADC1_4_cor_T_MDAC11(4,1)+ADC1_4_cor_T_MDAC11(5,1)+ADC1_4_cor_T_MDAC11(6,1)+2)/2;
	ADC1_4_Gain_MDAC2=(ADC1_4_cor_T_MDAC22(1,1)+ADC1_4_cor_T_MDAC22(2,1)+ADC1_4_cor_T_MDAC22(3,1)+ADC1_4_cor_T_MDAC22(4,1)+ADC1_4_cor_T_MDAC22(5,1)+ADC1_4_cor_T_MDAC22(6,1)+2)/2;
	ADC1_4_Gain_MDAC3=(ADC1_4_cor_T_MDAC33(1,1)+ADC1_4_cor_T_MDAC33(2,1)+ADC1_4_cor_T_MDAC33(3,1)+ADC1_4_cor_T_MDAC33(4,1)+ADC1_4_cor_T_MDAC33(5,1)+ADC1_4_cor_T_MDAC33(6,1)+2)/2;
	% figure;
	% plot(hist(ADC1_4_initial,[0:4095]));
	

%��ѹ�в�ת�� �����ѹ�в�
	if(Vres_trans_key)  
		Vres_trans(ADC1_1_data,ADC1_1_cal,ADC1_1_T_MDAC2,ADC1_1_T_MDAC3,ADC1_1_cor_T_MDAC22,ADC1_1_cor_T_MDAC33,ADC1_1_Gain_MDAC1,ADC1_1_Gain_MDAC2,ADC1_1_Gain_MDAC3,len/2,'ADC1_1');
		Vres_trans(ADC1_2_data,ADC1_2_cal,ADC1_2_T_MDAC2,ADC1_2_T_MDAC3,ADC1_2_cor_T_MDAC22,ADC1_2_cor_T_MDAC33,ADC1_2_Gain_MDAC1,ADC1_2_Gain_MDAC2,ADC1_2_Gain_MDAC3,len/2,'ADC1_2');
		Vres_trans(ADC1_3_data,ADC1_3_cal,ADC1_3_T_MDAC2,ADC1_3_T_MDAC3,ADC1_3_cor_T_MDAC22,ADC1_3_cor_T_MDAC33,ADC1_3_Gain_MDAC1,ADC1_3_Gain_MDAC2,ADC1_3_Gain_MDAC3,len/2,'ADC1_3');
		Vres_trans(ADC1_4_data,ADC1_4_cal,ADC1_4_T_MDAC2,ADC1_4_T_MDAC3,ADC1_4_cor_T_MDAC22,ADC1_4_cor_T_MDAC33,ADC1_4_Gain_MDAC1,ADC1_4_Gain_MDAC2,ADC1_4_Gain_MDAC3,len/2,'ADC1_4');
	end
end
	if(TI_key)  %TI_key=0 ��˸öδ��벻����
		for i=0:(len-1)*2-1
			ADC1_data_mux(4*i+1) = ADC1_1_cal(i+1);
			ADC1_data_mux(4*i+2) = ADC1_2_cal(i+1);
			ADC1_data_mux(4*i+3) = ADC1_3_cal(i+1);
			ADC1_data_mux(4*i+4) = ADC1_4_cal(i+1);
		end
		ADC1_data_mux=ADC1_data_mux';
		SFDR_Calc_new;
	end
	

% �洢����
	save_cap_value_ADC1;


	
	fprintf('RATES_AD1 MDAC1 = 1 (%%): %6.2f %6.2f %6.2f %6.2f %6.2f %6.2f\n',RATES_AD1(1,1),RATES_AD1(1,2),RATES_AD1(1,3),RATES_AD1(1,4),RATES_AD1(1,5),RATES_AD1(1,6));
	fprintf('RATES_AD1 MDAC2 = 1 (%%): %6.2f %6.2f %6.2f %6.2f %6.2f %6.2f\n',RATES_AD1(2,1),RATES_AD1(2,2),RATES_AD1(2,3),RATES_AD1(2,4),RATES_AD1(2,5),RATES_AD1(2,6));
	fprintf('RATES_AD1 MDAC3 = 1 (%%): %6.2f %6.2f %6.2f %6.2f %6.2f %6.2f\n',RATES_AD1(3,1),RATES_AD1(3,2),RATES_AD1(3,3),RATES_AD1(3,4),RATES_AD1(3,5),RATES_AD1(3,6));
	fprintf('\n');
	fprintf('RATES_AD2 MDAC1 = 1 (%%): %6.2f %6.2f %6.2f %6.2f %6.2f %6.2f\n',RATES_AD2(1,1),RATES_AD2(1,2),RATES_AD2(1,3),RATES_AD2(1,4),RATES_AD2(1,5),RATES_AD2(1,6));
	fprintf('RATES_AD2 MDAC2 = 1 (%%): %6.2f %6.2f %6.2f %6.2f %6.2f %6.2f\n',RATES_AD2(2,1),RATES_AD2(2,2),RATES_AD2(2,3),RATES_AD2(2,4),RATES_AD2(2,5),RATES_AD2(2,6));
	fprintf('RATES_AD2 MDAC3 = 1 (%%): %6.2f %6.2f %6.2f %6.2f %6.2f %6.2f\n',RATES_AD2(3,1),RATES_AD2(3,2),RATES_AD2(3,3),RATES_AD2(3,4),RATES_AD2(3,5),RATES_AD2(3,6));
	fprintf('\n');
	fprintf('RATES_AD3 MDAC1 = 1 (%%): %6.2f %6.2f %6.2f %6.2f %6.2f %6.2f\n',RATES_AD3(1,1),RATES_AD3(1,2),RATES_AD3(1,3),RATES_AD3(1,4),RATES_AD3(1,5),RATES_AD3(1,6));
	fprintf('RATES_AD3 MDAC2 = 1 (%%): %6.2f %6.2f %6.2f %6.2f %6.2f %6.2f\n',RATES_AD3(2,1),RATES_AD3(2,2),RATES_AD3(2,3),RATES_AD3(2,4),RATES_AD3(2,5),RATES_AD3(2,6));
	fprintf('RATES_AD3 MDAC3 = 1 (%%): %6.2f %6.2f %6.2f %6.2f %6.2f %6.2f\n',RATES_AD3(3,1),RATES_AD3(3,2),RATES_AD3(3,3),RATES_AD3(3,4),RATES_AD3(3,5),RATES_AD3(3,6));
	fprintf('\n');
	fprintf('RATES_AD4 MDAC1 = 1 (%%): %6.2f %6.2f %6.2f %6.2f %6.2f %6.2f\n',RATES_AD4(1,1),RATES_AD4(1,2),RATES_AD4(1,3),RATES_AD4(1,4),RATES_AD4(1,5),RATES_AD4(1,6));
	fprintf('RATES_AD4 MDAC2 = 1 (%%): %6.2f %6.2f %6.2f %6.2f %6.2f %6.2f\n',RATES_AD4(2,1),RATES_AD4(2,2),RATES_AD4(2,3),RATES_AD4(2,4),RATES_AD4(2,5),RATES_AD4(2,6));
	fprintf('RATES_AD4 MDAC3 = 1 (%%): %6.2f %6.2f %6.2f %6.2f %6.2f %6.2f\n',RATES_AD4(3,1),RATES_AD4(3,2),RATES_AD4(3,3),RATES_AD4(3,4),RATES_AD4(3,5),RATES_AD4(3,6));
end








%%%%%%%%%%%%%%%%%channel_2_key = 1�������%%%%%%%%%%%%%%%%%%%%%%%%%%%%%




if(channel_2_key)
	if(cap_cal_key==0)
	%%%%%%%%%%%%%%%%%%%ADC2_1%%%%%%%%%%%%%%%%%%%%%%%
		%---Optimization--%
		ADC2_1_cor_T_MDAC11=ones(6,1);
		ADC2_1_cor_T_MDAC22=ones(6,1);
		ADC2_1_cor_T_MDAC33=ones(6,1);
		%---Optimization--%
		ADC2_2_cor_T_MDAC11=ones(6,1);
		ADC2_2_cor_T_MDAC22=ones(6,1);
		ADC2_2_cor_T_MDAC33=ones(6,1);
		%---Optimization--%
		ADC2_3_cor_T_MDAC11=ones(6,1);
		ADC2_3_cor_T_MDAC22=ones(6,1);
		ADC2_3_cor_T_MDAC33=ones(6,1);
		%---Optimization--%
		ADC2_4_cor_T_MDAC11=ones(6,1);
		ADC2_4_cor_T_MDAC22=ones(6,1);
		ADC2_4_cor_T_MDAC33=ones(6,1);
	for i=1:(len-1)*4
	
	%   二进制码转换为温度计�?  
		ADC2_1_T_MDAC1(i,:)=therm_to_binary(ADC2_1_data(i,1),i);
		ADC2_1_T_MDAC2(i,:)=therm_to_binary(ADC2_1_data(i,2),i);
		ADC2_1_T_MDAC3(i,:)=therm_to_binary(ADC2_1_data(i,3),i);  
	end
	
	%校准后的数据
	
		[ADC2_1_cal]=cap_cal_performance_case1(ADC2_1_data,ADC2_1_initial,ADC2_1_T_MDAC1,ADC2_1_T_MDAC2,ADC2_1_T_MDAC3,ADC2_1_cor_T_MDAC11,ADC2_1_cor_T_MDAC22,ADC2_1_cor_T_MDAC33,len);  
	
	
	% ADC2__data_mux=ADC2_1_initial(1000:(len-1)*4-999,1);
	% SFDR_Calc_new;
	
	%校准后的数据
		[ADC2_2_cal]=cap_cal_performance_case1(ADC2_2_data,ADC2_2_initial,ADC2_2_T_MDAC1,ADC2_2_T_MDAC2,ADC2_2_T_MDAC3,ADC2_2_cor_T_MDAC11,ADC2_2_cor_T_MDAC22,ADC2_2_cor_T_MDAC33,len);  
	
	% ADC2__data_mux=ADC2_2_initial(1000:(len-1)*4-999,1);
	% SFDR_Calc_new;
	
	%校准后的数据 
		[ADC2_3_cal]=cap_cal_performance_case1(ADC2_3_data,ADC2_3_initial,ADC2_3_T_MDAC1,ADC2_3_T_MDAC2,ADC2_3_T_MDAC3,ADC2_3_cor_T_MDAC11,ADC2_3_cor_T_MDAC22,ADC2_3_cor_T_MDAC33,len);  
	
	% ADC2__data_mux=ADC2_3_initial(1000:(len-1)*4-999,1);
	% SFDR_Calc_new;
	
	%校准后的数据
		[ADC2_4_cal]=cap_cal_performance_case1(ADC2_4_data,ADC2_4_initial,ADC2_4_T_MDAC1,ADC2_4_T_MDAC2,ADC2_4_T_MDAC3,ADC2_4_cor_T_MDAC11,ADC2_4_cor_T_MDAC22,ADC2_4_cor_T_MDAC33,len);  
	
	% ADC2__data_mux=ADC2_4_initial(1000:(len-1)*4-999,1);
	% SFDR_Calc_new;
	if(Vres_trans_key)
		Vres_trans(ADC2_1_data,ADC2_1_initial,ADC2_1_T_MDAC2,ADC2_1_T_MDAC3,ADC2_1_cor_T_MDAC22,ADC2_1_cor_T_MDAC33,4,4,4,len,'ADC2_1');
		Vres_trans(ADC2_2_data,ADC2_2_initial,ADC2_2_T_MDAC2,ADC2_2_T_MDAC3,ADC2_2_cor_T_MDAC22,ADC2_2_cor_T_MDAC33,4,4,4,len,'ADC2_2');
		Vres_trans(ADC2_3_data,ADC2_3_initial,ADC2_3_T_MDAC2,ADC2_3_T_MDAC3,ADC2_3_cor_T_MDAC22,ADC2_3_cor_T_MDAC33,4,4,4,len,'ADC2_3');
		Vres_trans(ADC2_4_data,ADC2_4_initial,ADC2_4_T_MDAC2,ADC2_4_T_MDAC3,ADC2_4_cor_T_MDAC22,ADC2_4_cor_T_MDAC33,4,4,4,len,'ADC2_4');
	end
    end
	
	
	
	if(cap_cal_key)
	for i=1:(len-1)*2
	%   二进制码转换为温度计�?  
		ADC2_1_T_MDAC1(i,:)=therm_to_binary(ADC2_1_data(i,1),i);
		ADC2_1_T_MDAC2(i,:)=therm_to_binary(ADC2_1_data(i,2),i);
		ADC2_1_T_MDAC3(i,:)=therm_to_binary(ADC2_1_data(i,3),i);  
	end
	for i=1:6
		RATES_AD1(1,i) = 100*sum(ADC2_1_T_MDAC1(:,i))/length(ADC2_1_T_MDAC1(:,i));
		RATES_AD1(2,i) = 100*sum(ADC2_1_T_MDAC2(:,i))/length(ADC2_1_T_MDAC2(:,i));
		RATES_AD1(3,i) = 100*sum(ADC2_1_T_MDAC3(:,i))/length(ADC2_1_T_MDAC3(:,i));
	end
	%----------analog output code transfer to 0or1__to decimalism%
	stages=3;
	stage_cali=3;
	%--intial---%
	cal_npts=3;
	NN=10;
	%---Optimization--%
	ADC2_1_cor_T_MDAC11=ones(6,1);
	ADC2_1_cor_T_MDAC22=ones(6,1);
	ADC2_1_cor_T_MDAC33=ones(6,1);
	
	
	for a=1:search_cycle %反复校准次数
		if(case_choose==1)          
			if(cap_cal_MDAC3_key==1) ADC2_1_cor_T_MDAC33=cap_search_MDAC3(ADC2_1_cor_T_MDAC11,ADC2_1_cor_T_MDAC22,ADC2_1_cor_T_MDAC33,ADC2_1_T_MDAC1,ADC2_1_T_MDAC2,ADC2_1_T_MDAC3,ADC2_1_data,cal_npts,NN,len); end
			if(cap_cal_MDAC2_key==1) ADC2_1_cor_T_MDAC22=cap_search_MDAC2(ADC2_1_cor_T_MDAC11,ADC2_1_cor_T_MDAC22,ADC2_1_cor_T_MDAC33,ADC2_1_T_MDAC1,ADC2_1_T_MDAC2,ADC2_1_T_MDAC3,ADC2_1_data,cal_npts,NN,len); end
			if(cap_cal_MDAC1_key==1) ADC2_1_cor_T_MDAC11=cap_search_MDAC1(ADC2_1_cor_T_MDAC11,ADC2_1_cor_T_MDAC22,ADC2_1_cor_T_MDAC33,ADC2_1_T_MDAC1,ADC2_1_T_MDAC2,ADC2_1_T_MDAC3,ADC2_1_data,cal_npts,NN,len); end
			if(cap_cal_MDAC2_key==1) ADC2_1_cor_T_MDAC22=cap_search_MDAC2(ADC2_1_cor_T_MDAC11,ADC2_1_cor_T_MDAC22,ADC2_1_cor_T_MDAC33,ADC2_1_T_MDAC1,ADC2_1_T_MDAC2,ADC2_1_T_MDAC3,ADC2_1_data,cal_npts,NN,len); end
			if(cap_cal_MDAC3_key==1) ADC2_1_cor_T_MDAC33=cap_search_MDAC3(ADC2_1_cor_T_MDAC11,ADC2_1_cor_T_MDAC22,ADC2_1_cor_T_MDAC33,ADC2_1_T_MDAC1,ADC2_1_T_MDAC2,ADC2_1_T_MDAC3,ADC2_1_data,cal_npts,NN,len); end
		end    
	
		if(case_choose==2)  
			if(cap_cal_MDAC1_key==1) ADC2_1_cor_T_MDAC11=cap_search_MDAC1(ADC2_1_cor_T_MDAC11,ADC2_1_cor_T_MDAC22,ADC2_1_cor_T_MDAC33,ADC2_1_T_MDAC1,ADC2_1_T_MDAC2,ADC2_1_T_MDAC3,ADC2_1_data,cal_npts,NN,len); end
			if(cap_cal_MDAC2_key==1) ADC2_1_cor_T_MDAC22=cap_search_MDAC2(ADC2_1_cor_T_MDAC11,ADC2_1_cor_T_MDAC22,ADC2_1_cor_T_MDAC33,ADC2_1_T_MDAC1,ADC2_1_T_MDAC2,ADC2_1_T_MDAC3,ADC2_1_data,cal_npts,NN,len); end
			if(cap_cal_MDAC3_key==1) ADC2_1_cor_T_MDAC33=cap_search_MDAC3(ADC2_1_cor_T_MDAC11,ADC2_1_cor_T_MDAC22,ADC2_1_cor_T_MDAC33,ADC2_1_T_MDAC1,ADC2_1_T_MDAC2,ADC2_1_T_MDAC3,ADC2_1_data,cal_npts,NN,len); end
			if(cap_cal_MDAC2_key==1) ADC2_1_cor_T_MDAC22=cap_search_MDAC2(ADC2_1_cor_T_MDAC11,ADC2_1_cor_T_MDAC22,ADC2_1_cor_T_MDAC33,ADC2_1_T_MDAC1,ADC2_1_T_MDAC2,ADC2_1_T_MDAC3,ADC2_1_data,cal_npts,NN,len); end
			if(cap_cal_MDAC1_key==1) ADC2_1_cor_T_MDAC11=cap_search_MDAC1(ADC2_1_cor_T_MDAC11,ADC2_1_cor_T_MDAC22,ADC2_1_cor_T_MDAC33,ADC2_1_T_MDAC1,ADC2_1_T_MDAC2,ADC2_1_T_MDAC3,ADC2_1_data,cal_npts,NN,len); end
		end
	end
	
	%校准后的数据
		[ADC2_1_cal]=cap_cal_performance_case1(ADC2_1_data,ADC2_1_initial,ADC2_1_T_MDAC1,ADC2_1_T_MDAC2,ADC2_1_T_MDAC3,ADC2_1_cor_T_MDAC11,ADC2_1_cor_T_MDAC22,ADC2_1_cor_T_MDAC33,len);  
	
	
		
	
	ADC2_1_Gain_MDAC1=(ADC2_1_cor_T_MDAC11(1,1)+ADC2_1_cor_T_MDAC11(2,1)+ADC2_1_cor_T_MDAC11(3,1)+ADC2_1_cor_T_MDAC11(4,1)+ADC2_1_cor_T_MDAC11(5,1)+ADC2_1_cor_T_MDAC11(6,1)+2)/2;
	ADC2_1_Gain_MDAC2=(ADC2_1_cor_T_MDAC22(1,1)+ADC2_1_cor_T_MDAC22(2,1)+ADC2_1_cor_T_MDAC22(3,1)+ADC2_1_cor_T_MDAC22(4,1)+ADC2_1_cor_T_MDAC22(5,1)+ADC2_1_cor_T_MDAC22(6,1)+2)/2;
	ADC2_1_Gain_MDAC3=(ADC2_1_cor_T_MDAC33(1,1)+ADC2_1_cor_T_MDAC33(2,1)+ADC2_1_cor_T_MDAC33(3,1)+ADC2_1_cor_T_MDAC33(4,1)+ADC2_1_cor_T_MDAC33(5,1)+ADC2_1_cor_T_MDAC33(6,1)+2)/2;
	% figure;
	% plot(hist(ADC2_1_initial,[0:4095]));
	



	%%%%%%%%%%%%%%%%%%%ADC2_2%%%%%%%%%%%%%%%%%%%%%%%
	for i=1:(len-1)*2
	%   二进制码转换为温度计�?  
		ADC2_2_T_MDAC1(i,:)=therm_to_binary(ADC2_2_data(i,1),i);
		ADC2_2_T_MDAC2(i,:)=therm_to_binary(ADC2_2_data(i,2),i);
		ADC2_2_T_MDAC3(i,:)=therm_to_binary(ADC2_2_data(i,3),i);  
	end
	for i=1:6
		RATES_AD2(1,i) = 100*sum(ADC2_2_T_MDAC1(:,i))/length(ADC2_2_T_MDAC1(:,i));
		RATES_AD2(2,i) = 100*sum(ADC2_2_T_MDAC2(:,i))/length(ADC2_2_T_MDAC2(:,i));
		RATES_AD2(3,i) = 100*sum(ADC2_2_T_MDAC3(:,i))/length(ADC2_2_T_MDAC3(:,i));
	end
	%----------analog output code transfer to 0or1__to decimalism%
	stages=3;
	stage_cali=3;
	%--intial---%
	cal_npts=3;
	NN=10;
	%---Optimization--%
	ADC2_2_cor_T_MDAC11=ones(6,1);
	ADC2_2_cor_T_MDAC22=ones(6,1);
	ADC2_2_cor_T_MDAC33=ones(6,1);
	
	
	for a=1:search_cycle %反复校准次数
		if(case_choose==1)          
			if(cap_cal_MDAC3_key==1) ADC2_2_cor_T_MDAC33=cap_search_MDAC3(ADC2_2_cor_T_MDAC11,ADC2_2_cor_T_MDAC22,ADC2_2_cor_T_MDAC33,ADC2_2_T_MDAC1,ADC2_2_T_MDAC2,ADC2_2_T_MDAC3,ADC2_2_data,cal_npts,NN,len);  end 
			if(cap_cal_MDAC2_key==1) ADC2_2_cor_T_MDAC22=cap_search_MDAC2(ADC2_2_cor_T_MDAC11,ADC2_2_cor_T_MDAC22,ADC2_2_cor_T_MDAC33,ADC2_2_T_MDAC1,ADC2_2_T_MDAC2,ADC2_2_T_MDAC3,ADC2_2_data,cal_npts,NN,len);  end
			if(cap_cal_MDAC1_key==1) ADC2_2_cor_T_MDAC11=cap_search_MDAC1(ADC2_2_cor_T_MDAC11,ADC2_2_cor_T_MDAC22,ADC2_2_cor_T_MDAC33,ADC2_2_T_MDAC1,ADC2_2_T_MDAC2,ADC2_2_T_MDAC3,ADC2_2_data,cal_npts,NN,len);  end
			if(cap_cal_MDAC2_key==1) ADC2_2_cor_T_MDAC22=cap_search_MDAC2(ADC2_2_cor_T_MDAC11,ADC2_2_cor_T_MDAC22,ADC2_2_cor_T_MDAC33,ADC2_2_T_MDAC1,ADC2_2_T_MDAC2,ADC2_2_T_MDAC3,ADC2_2_data,cal_npts,NN,len);  end
			if(cap_cal_MDAC3_key==1) ADC2_2_cor_T_MDAC33=cap_search_MDAC3(ADC2_2_cor_T_MDAC11,ADC2_2_cor_T_MDAC22,ADC2_2_cor_T_MDAC33,ADC2_2_T_MDAC1,ADC2_2_T_MDAC2,ADC2_2_T_MDAC3,ADC2_2_data,cal_npts,NN,len);  end
		end    
	
		if(case_choose==2)  
			if(cap_cal_MDAC1_key==1) ADC2_2_cor_T_MDAC11=cap_search_MDAC1(ADC2_2_cor_T_MDAC11,ADC2_2_cor_T_MDAC22,ADC2_2_cor_T_MDAC33,ADC2_2_T_MDAC1,ADC2_2_T_MDAC2,ADC2_2_T_MDAC3,ADC2_2_data,cal_npts,NN,len);  end
			if(cap_cal_MDAC2_key==1) ADC2_2_cor_T_MDAC22=cap_search_MDAC2(ADC2_2_cor_T_MDAC11,ADC2_2_cor_T_MDAC22,ADC2_2_cor_T_MDAC33,ADC2_2_T_MDAC1,ADC2_2_T_MDAC2,ADC2_2_T_MDAC3,ADC2_2_data,cal_npts,NN,len);  end
			if(cap_cal_MDAC3_key==1) ADC2_2_cor_T_MDAC33=cap_search_MDAC3(ADC2_2_cor_T_MDAC11,ADC2_2_cor_T_MDAC22,ADC2_2_cor_T_MDAC33,ADC2_2_T_MDAC1,ADC2_2_T_MDAC2,ADC2_2_T_MDAC3,ADC2_2_data,cal_npts,NN,len);  end
			if(cap_cal_MDAC2_key==1) ADC2_2_cor_T_MDAC22=cap_search_MDAC2(ADC2_2_cor_T_MDAC11,ADC2_2_cor_T_MDAC22,ADC2_2_cor_T_MDAC33,ADC2_2_T_MDAC1,ADC2_2_T_MDAC2,ADC2_2_T_MDAC3,ADC2_2_data,cal_npts,NN,len);  end
			if(cap_cal_MDAC1_key==1) ADC2_2_cor_T_MDAC11=cap_search_MDAC1(ADC2_2_cor_T_MDAC11,ADC2_2_cor_T_MDAC22,ADC2_2_cor_T_MDAC33,ADC2_2_T_MDAC1,ADC2_2_T_MDAC2,ADC2_2_T_MDAC3,ADC2_2_data,cal_npts,NN,len);  end
		end
	end
	
	%校准后的数据
    [ADC2_2_cal]=cap_cal_performance_case1(ADC2_2_data,ADC2_2_initial,ADC2_2_T_MDAC1,ADC2_2_T_MDAC2,ADC2_2_T_MDAC3,ADC2_2_cor_T_MDAC11,ADC2_2_cor_T_MDAC22,ADC2_2_cor_T_MDAC33,len);  
	
	
	ADC2_2_Gain_MDAC1=(ADC2_2_cor_T_MDAC11(1,1)+ADC2_2_cor_T_MDAC11(2,1)+ADC2_2_cor_T_MDAC11(3,1)+ADC2_2_cor_T_MDAC11(4,1)+ADC2_2_cor_T_MDAC11(5,1)+ADC2_2_cor_T_MDAC11(6,1)+2)/2;
	ADC2_2_Gain_MDAC2=(ADC2_2_cor_T_MDAC22(1,1)+ADC2_2_cor_T_MDAC22(2,1)+ADC2_2_cor_T_MDAC22(3,1)+ADC2_2_cor_T_MDAC22(4,1)+ADC2_2_cor_T_MDAC22(5,1)+ADC2_2_cor_T_MDAC22(6,1)+2)/2;
	ADC2_2_Gain_MDAC3=(ADC2_2_cor_T_MDAC33(1,1)+ADC2_2_cor_T_MDAC33(2,1)+ADC2_2_cor_T_MDAC33(3,1)+ADC2_2_cor_T_MDAC33(4,1)+ADC2_2_cor_T_MDAC33(5,1)+ADC2_2_cor_T_MDAC33(6,1)+2)/2;
	% figure;
	% plot(hist(ADC2_2_initial,[0:4095]));
	



	%%%%%%%%%%%%%%%%%%%ADC2_3%%%%%%%%%%%%%%%%%%%%%%%
	for i=1:(len-1)*2
	%   二进制码转换为温度计�?  
		ADC2_3_T_MDAC1(i,:)=therm_to_binary(ADC2_3_data(i,1),i);
		ADC2_3_T_MDAC2(i,:)=therm_to_binary(ADC2_3_data(i,2),i);
		ADC2_3_T_MDAC3(i,:)=therm_to_binary(ADC2_3_data(i,3),i);  
	end
	for i=1:6
		RATES_AD3(1,i) = 100*sum(ADC2_3_T_MDAC1(:,i))/length(ADC2_3_T_MDAC1(:,i));
		RATES_AD3(2,i) = 100*sum(ADC2_3_T_MDAC2(:,i))/length(ADC2_3_T_MDAC2(:,i));
		RATES_AD3(3,i) = 100*sum(ADC2_3_T_MDAC3(:,i))/length(ADC2_3_T_MDAC3(:,i));
	end
	%----------analog output code transfer to 0or1__to decimalism%
	stages=3;
	stage_cali=3;
	%--intial---%
	cal_npts=3;
	NN=10;
	%---Optimization--%
	ADC2_3_cor_T_MDAC11=ones(6,1);
	ADC2_3_cor_T_MDAC22=ones(6,1);
	ADC2_3_cor_T_MDAC33=ones(6,1);
	
	
	for a=1:search_cycle %反复校准次数
		if(case_choose==1)          
			if(cap_cal_MDAC3_key==1) ADC2_3_cor_T_MDAC33=cap_search_MDAC3(ADC2_3_cor_T_MDAC11,ADC2_3_cor_T_MDAC22,ADC2_3_cor_T_MDAC33,ADC2_3_T_MDAC1,ADC2_3_T_MDAC2,ADC2_3_T_MDAC3,ADC2_3_data,cal_npts,NN,len);  end
			if(cap_cal_MDAC2_key==1) ADC2_3_cor_T_MDAC22=cap_search_MDAC2(ADC2_3_cor_T_MDAC11,ADC2_3_cor_T_MDAC22,ADC2_3_cor_T_MDAC33,ADC2_3_T_MDAC1,ADC2_3_T_MDAC2,ADC2_3_T_MDAC3,ADC2_3_data,cal_npts,NN,len);  end
			if(cap_cal_MDAC1_key==1) ADC2_3_cor_T_MDAC11=cap_search_MDAC1(ADC2_3_cor_T_MDAC11,ADC2_3_cor_T_MDAC22,ADC2_3_cor_T_MDAC33,ADC2_3_T_MDAC1,ADC2_3_T_MDAC2,ADC2_3_T_MDAC3,ADC2_3_data,cal_npts,NN,len);  end
			if(cap_cal_MDAC2_key==1) ADC2_3_cor_T_MDAC22=cap_search_MDAC2(ADC2_3_cor_T_MDAC11,ADC2_3_cor_T_MDAC22,ADC2_3_cor_T_MDAC33,ADC2_3_T_MDAC1,ADC2_3_T_MDAC2,ADC2_3_T_MDAC3,ADC2_3_data,cal_npts,NN,len);  end
			if(cap_cal_MDAC3_key==1) ADC2_3_cor_T_MDAC33=cap_search_MDAC3(ADC2_3_cor_T_MDAC11,ADC2_3_cor_T_MDAC22,ADC2_3_cor_T_MDAC33,ADC2_3_T_MDAC1,ADC2_3_T_MDAC2,ADC2_3_T_MDAC3,ADC2_3_data,cal_npts,NN,len);  end
		end    
	
		if(case_choose==2)  
			if(cap_cal_MDAC1_key==1) ADC2_3_cor_T_MDAC11=cap_search_MDAC1(ADC2_3_cor_T_MDAC11,ADC2_3_cor_T_MDAC22,ADC2_3_cor_T_MDAC33,ADC2_3_T_MDAC1,ADC2_3_T_MDAC2,ADC2_3_T_MDAC3,ADC2_3_data,cal_npts,NN,len); end
			if(cap_cal_MDAC2_key==1) ADC2_3_cor_T_MDAC22=cap_search_MDAC2(ADC2_3_cor_T_MDAC11,ADC2_3_cor_T_MDAC22,ADC2_3_cor_T_MDAC33,ADC2_3_T_MDAC1,ADC2_3_T_MDAC2,ADC2_3_T_MDAC3,ADC2_3_data,cal_npts,NN,len); end
			if(cap_cal_MDAC3_key==1) ADC2_3_cor_T_MDAC33=cap_search_MDAC3(ADC2_3_cor_T_MDAC11,ADC2_3_cor_T_MDAC22,ADC2_3_cor_T_MDAC33,ADC2_3_T_MDAC1,ADC2_3_T_MDAC2,ADC2_3_T_MDAC3,ADC2_3_data,cal_npts,NN,len); end
			if(cap_cal_MDAC2_key==1) ADC2_3_cor_T_MDAC22=cap_search_MDAC2(ADC2_3_cor_T_MDAC11,ADC2_3_cor_T_MDAC22,ADC2_3_cor_T_MDAC33,ADC2_3_T_MDAC1,ADC2_3_T_MDAC2,ADC2_3_T_MDAC3,ADC2_3_data,cal_npts,NN,len); end
			if(cap_cal_MDAC1_key==1) ADC2_3_cor_T_MDAC11=cap_search_MDAC1(ADC2_3_cor_T_MDAC11,ADC2_3_cor_T_MDAC22,ADC2_3_cor_T_MDAC33,ADC2_3_T_MDAC1,ADC2_3_T_MDAC2,ADC2_3_T_MDAC3,ADC2_3_data,cal_npts,NN,len); end
		end
	end
	
	
	%校准后的数据
		[ADC2_3_cal]=cap_cal_performance_case1(ADC2_3_data,ADC2_3_initial,ADC2_3_T_MDAC1,ADC2_3_T_MDAC2,ADC2_3_T_MDAC3,ADC2_3_cor_T_MDAC11,ADC2_3_cor_T_MDAC22,ADC2_3_cor_T_MDAC33,len);  
	
	
	ADC2_3_Gain_MDAC1=(ADC2_3_cor_T_MDAC11(1,1)+ADC2_3_cor_T_MDAC11(2,1)+ADC2_3_cor_T_MDAC11(3,1)+ADC2_3_cor_T_MDAC11(4,1)+ADC2_3_cor_T_MDAC11(5,1)+ADC2_3_cor_T_MDAC11(6,1)+2)/2;
	ADC2_3_Gain_MDAC2=(ADC2_3_cor_T_MDAC22(1,1)+ADC2_3_cor_T_MDAC22(2,1)+ADC2_3_cor_T_MDAC22(3,1)+ADC2_3_cor_T_MDAC22(4,1)+ADC2_3_cor_T_MDAC22(5,1)+ADC2_3_cor_T_MDAC22(6,1)+2)/2;
	ADC2_3_Gain_MDAC3=(ADC2_3_cor_T_MDAC33(1,1)+ADC2_3_cor_T_MDAC33(2,1)+ADC2_3_cor_T_MDAC33(3,1)+ADC2_3_cor_T_MDAC33(4,1)+ADC2_3_cor_T_MDAC33(5,1)+ADC2_3_cor_T_MDAC33(6,1)+2)/2;
	% figure;
	%plot(hist(ADC2_3_initial,[0:4095]));
	%ADC2__data_mux=ADC2_3_initial;
	%DNL_INL_sin;
	





	%%%%%%%%%%%%%%%%%%%ADC2_4%%%%%%%%%%%%%%%%%%%%%%%
	for i=1:(len-1)*2
	%   二进制码转换为温度计�?  
		ADC2_4_T_MDAC1(i,:)=therm_to_binary(ADC2_4_data(i,1),i);
		ADC2_4_T_MDAC2(i,:)=therm_to_binary(ADC2_4_data(i,2),i);
		ADC2_4_T_MDAC3(i,:)=therm_to_binary(ADC2_4_data(i,3),i);  
	end
	for i=1:6
		RATES_AD4(1,i) = 100*sum(ADC2_4_T_MDAC1(:,i))/length(ADC2_4_T_MDAC1(:,i));
		RATES_AD4(2,i) = 100*sum(ADC2_4_T_MDAC2(:,i))/length(ADC2_4_T_MDAC2(:,i));
		RATES_AD4(3,i) = 100*sum(ADC2_4_T_MDAC3(:,i))/length(ADC2_4_T_MDAC3(:,i));
	end
	%----------analog output code transfer to 0or1__to decimalism%
	stages=3;
	stage_cali=3;
	%--intial---%
	cal_npts=3;
	NN=10;
	%---Optimization--%
	ADC2_4_cor_T_MDAC11=ones(6,1);
	ADC2_4_cor_T_MDAC22=ones(6,1);
	ADC2_4_cor_T_MDAC33=ones(6,1);
	
	
	for a=1:search_cycle %反复校准次数
		if(case_choose==1)          
			if(cap_cal_MDAC3_key==1) ADC2_4_cor_T_MDAC33=cap_search_MDAC3(ADC2_4_cor_T_MDAC11,ADC2_4_cor_T_MDAC22,ADC2_4_cor_T_MDAC33,ADC2_4_T_MDAC1,ADC2_4_T_MDAC2,ADC2_4_T_MDAC3,ADC2_4_data,cal_npts,NN,len);  end
			if(cap_cal_MDAC2_key==1) ADC2_4_cor_T_MDAC22=cap_search_MDAC2(ADC2_4_cor_T_MDAC11,ADC2_4_cor_T_MDAC22,ADC2_4_cor_T_MDAC33,ADC2_4_T_MDAC1,ADC2_4_T_MDAC2,ADC2_4_T_MDAC3,ADC2_4_data,cal_npts,NN,len);  end
			if(cap_cal_MDAC1_key==1) ADC2_4_cor_T_MDAC11=cap_search_MDAC1(ADC2_4_cor_T_MDAC11,ADC2_4_cor_T_MDAC22,ADC2_4_cor_T_MDAC33,ADC2_4_T_MDAC1,ADC2_4_T_MDAC2,ADC2_4_T_MDAC3,ADC2_4_data,cal_npts,NN,len);  end
			if(cap_cal_MDAC2_key==1) ADC2_4_cor_T_MDAC22=cap_search_MDAC2(ADC2_4_cor_T_MDAC11,ADC2_4_cor_T_MDAC22,ADC2_4_cor_T_MDAC33,ADC2_4_T_MDAC1,ADC2_4_T_MDAC2,ADC2_4_T_MDAC3,ADC2_4_data,cal_npts,NN,len);  end
			if(cap_cal_MDAC3_key==1) ADC2_4_cor_T_MDAC33=cap_search_MDAC3(ADC2_4_cor_T_MDAC11,ADC2_4_cor_T_MDAC22,ADC2_4_cor_T_MDAC33,ADC2_4_T_MDAC1,ADC2_4_T_MDAC2,ADC2_4_T_MDAC3,ADC2_4_data,cal_npts,NN,len);  end
		end    
	
		if(case_choose==2)  
			if(cap_cal_MDAC1_key==1) ADC2_4_cor_T_MDAC11=cap_search_MDAC1(ADC2_4_cor_T_MDAC11,ADC2_4_cor_T_MDAC22,ADC2_4_cor_T_MDAC33,ADC2_4_T_MDAC1,ADC2_4_T_MDAC2,ADC2_4_T_MDAC3,ADC2_4_data,cal_npts,NN,len);  end
			if(cap_cal_MDAC2_key==1) ADC2_4_cor_T_MDAC22=cap_search_MDAC2(ADC2_4_cor_T_MDAC11,ADC2_4_cor_T_MDAC22,ADC2_4_cor_T_MDAC33,ADC2_4_T_MDAC1,ADC2_4_T_MDAC2,ADC2_4_T_MDAC3,ADC2_4_data,cal_npts,NN,len);  end
			if(cap_cal_MDAC3_key==1) ADC2_4_cor_T_MDAC33=cap_search_MDAC3(ADC2_4_cor_T_MDAC11,ADC2_4_cor_T_MDAC22,ADC2_4_cor_T_MDAC33,ADC2_4_T_MDAC1,ADC2_4_T_MDAC2,ADC2_4_T_MDAC3,ADC2_4_data,cal_npts,NN,len);  end
			if(cap_cal_MDAC2_key==1) ADC2_4_cor_T_MDAC22=cap_search_MDAC2(ADC2_4_cor_T_MDAC11,ADC2_4_cor_T_MDAC22,ADC2_4_cor_T_MDAC33,ADC2_4_T_MDAC1,ADC2_4_T_MDAC2,ADC2_4_T_MDAC3,ADC2_4_data,cal_npts,NN,len);  end
			if(cap_cal_MDAC1_key==1) ADC2_4_cor_T_MDAC11=cap_search_MDAC1(ADC2_4_cor_T_MDAC11,ADC2_4_cor_T_MDAC22,ADC2_4_cor_T_MDAC33,ADC2_4_T_MDAC1,ADC2_4_T_MDAC2,ADC2_4_T_MDAC3,ADC2_4_data,cal_npts,NN,len);  end
		end
	end
	
	
	
	
	%校准后的数据
		[ADC2_4_cal]=cap_cal_performance_case1(ADC2_4_data,ADC2_4_initial,ADC2_4_T_MDAC1,ADC2_4_T_MDAC2,ADC2_4_T_MDAC3,ADC2_4_cor_T_MDAC11,ADC2_4_cor_T_MDAC22,ADC2_4_cor_T_MDAC33,len);    
		
	
	ADC2_4_Gain_MDAC1=(ADC2_4_cor_T_MDAC11(1,1)+ADC2_4_cor_T_MDAC11(2,1)+ADC2_4_cor_T_MDAC11(3,1)+ADC2_4_cor_T_MDAC11(4,1)+ADC2_4_cor_T_MDAC11(5,1)+ADC2_4_cor_T_MDAC11(6,1)+2)/2;
	ADC2_4_Gain_MDAC2=(ADC2_4_cor_T_MDAC22(1,1)+ADC2_4_cor_T_MDAC22(2,1)+ADC2_4_cor_T_MDAC22(3,1)+ADC2_4_cor_T_MDAC22(4,1)+ADC2_4_cor_T_MDAC22(5,1)+ADC2_4_cor_T_MDAC22(6,1)+2)/2;
	ADC2_4_Gain_MDAC3=(ADC2_4_cor_T_MDAC33(1,1)+ADC2_4_cor_T_MDAC33(2,1)+ADC2_4_cor_T_MDAC33(3,1)+ADC2_4_cor_T_MDAC33(4,1)+ADC2_4_cor_T_MDAC33(5,1)+ADC2_4_cor_T_MDAC33(6,1)+2)/2;
	% figure;
	% plot(hist(ADC2_4_initial,[0:4095]));
% 
% len_new = 16382;
% adc_data_mux=zeros(4*len_new,1);
% adc_data_mux(1:4:end)=ADC2_1_cal;
% adc_data_mux(2:4:end)=ADC2_2_cal;
% adc_data_mux(3:4:end)=ADC2_3_cal;
% adc_data_mux(4:4:end)=ADC2_4_cal;
% ADC2_FINAL = zeros(4*len_new,1);
% ADC2_FINAL = adc_data_mux;
% 
% plot(ADC2_FINAL)
% Dout_spect = fft(ADC2_FINAL, numpt);
% % �� FFT ���ת��Ϊ�ֱ���dB��
% Dout_dB = 20 * log10(abs(Dout_spect));
% % ������СֵΪ -200 dB
% for i = 1:numpt
%     if Dout_dB(i) < -200
%         Dout_dB(i) = -200;
%     end
% end
% figure;
% maxdB = max(Dout_dB(2:numpt/2));
% plot([0:numpt/2-1] * fclk / numpt, Dout_dB(1:numpt/2) - maxdB);
% grid on;
% title('FFT PLOT');
% xlabel('ANALOG INPUT FREQUENCY (MHz)');
% ylabel('AMPLITUDE (dB)');
% axis([0 fclk/2 -110 0]); % ����Ƶ�ʷ�ΧΪ 0 �� fclk/2��NyquistƵ�ʣ�����λΪ MHz



	if(Vres_trans_key)
		Vres_trans(ADC2_1_data,ADC2_1_initial,ADC2_1_T_MDAC2,ADC2_1_T_MDAC3,ADC2_1_cor_T_MDAC22,ADC2_1_cor_T_MDAC33,4,4,4,len/2,'ADC2_1',fclk);
		Vres_trans(ADC2_2_data,ADC2_2_initial,ADC2_2_T_MDAC2,ADC2_2_T_MDAC3,ADC2_2_cor_T_MDAC22,ADC2_2_cor_T_MDAC33,4,4,4,len/2,'ADC2_2',fclk);
		Vres_trans(ADC2_3_data,ADC2_3_initial,ADC2_3_T_MDAC2,ADC2_3_T_MDAC3,ADC2_3_cor_T_MDAC22,ADC2_3_cor_T_MDAC33,4,4,4,len/2,'ADC2_3',fclk);
		Vres_trans(ADC2_4_data,ADC2_4_initial,ADC2_4_T_MDAC2,ADC2_4_T_MDAC3,ADC2_4_cor_T_MDAC22,ADC2_4_cor_T_MDAC33,4,4,4,len/2,'ADC2_4',fclk);
    end
	end
	if(TI_key)
		for i=0:(len-1)*2-1
			ADC2_data_mux(4*i+1) = ADC2_1_cal(i+1);
			ADC2_data_mux(4*i+2) = ADC2_2_cal(i+1);
			ADC2_data_mux(4*i+3) = ADC2_3_cal(i+1);
			ADC2_data_mux(4*i+4) = ADC2_4_cal(i+1);
		end
		ADC2_data_mux=ADC2_data_mux';
		SFDR_Calc_new;
	end
	
	save_cap_value_ADC2;
	
	fprintf('RATES_AD1 MDAC1 = 1 (%%): %6.2f %6.2f %6.2f %6.2f %6.2f %6.2f\n',RATES_AD1(1,1),RATES_AD1(1,2),RATES_AD1(1,3),RATES_AD1(1,4),RATES_AD1(1,5),RATES_AD1(1,6));
	fprintf('RATES_AD1 MDAC2 = 1 (%%): %6.2f %6.2f %6.2f %6.2f %6.2f %6.2f\n',RATES_AD1(2,1),RATES_AD1(2,2),RATES_AD1(2,3),RATES_AD1(2,4),RATES_AD1(2,5),RATES_AD1(2,6));
	fprintf('RATES_AD1 MDAC3 = 1 (%%): %6.2f %6.2f %6.2f %6.2f %6.2f %6.2f\n',RATES_AD1(3,1),RATES_AD1(3,2),RATES_AD1(3,3),RATES_AD1(3,4),RATES_AD1(3,5),RATES_AD1(3,6));
	fprintf('\n');
	fprintf('RATES_AD2 MDAC1 = 1 (%%): %6.2f %6.2f %6.2f %6.2f %6.2f %6.2f\n',RATES_AD2(1,1),RATES_AD2(1,2),RATES_AD2(1,3),RATES_AD2(1,4),RATES_AD2(1,5),RATES_AD2(1,6));
	fprintf('RATES_AD2 MDAC2 = 1 (%%): %6.2f %6.2f %6.2f %6.2f %6.2f %6.2f\n',RATES_AD2(2,1),RATES_AD2(2,2),RATES_AD2(2,3),RATES_AD2(2,4),RATES_AD2(2,5),RATES_AD2(2,6));
	fprintf('RATES_AD2 MDAC3 = 1 (%%): %6.2f %6.2f %6.2f %6.2f %6.2f %6.2f\n',RATES_AD2(3,1),RATES_AD2(3,2),RATES_AD2(3,3),RATES_AD2(3,4),RATES_AD2(3,5),RATES_AD2(3,6));
	fprintf('\n');
	fprintf('RATES_AD3 MDAC1 = 1 (%%): %6.2f %6.2f %6.2f %6.2f %6.2f %6.2f\n',RATES_AD3(1,1),RATES_AD3(1,2),RATES_AD3(1,3),RATES_AD3(1,4),RATES_AD3(1,5),RATES_AD3(1,6));
	fprintf('RATES_AD3 MDAC2 = 1 (%%): %6.2f %6.2f %6.2f %6.2f %6.2f %6.2f\n',RATES_AD3(2,1),RATES_AD3(2,2),RATES_AD3(2,3),RATES_AD3(2,4),RATES_AD3(2,5),RATES_AD3(2,6));
	fprintf('RATES_AD3 MDAC3 = 1 (%%): %6.2f %6.2f %6.2f %6.2f %6.2f %6.2f\n',RATES_AD3(3,1),RATES_AD3(3,2),RATES_AD3(3,3),RATES_AD3(3,4),RATES_AD3(3,5),RATES_AD3(3,6));
	fprintf('\n');
	fprintf('RATES_AD4 MDAC1 = 1 (%%): %6.2f %6.2f %6.2f %6.2f %6.2f %6.2f\n',RATES_AD4(1,1),RATES_AD4(1,2),RATES_AD4(1,3),RATES_AD4(1,4),RATES_AD4(1,5),RATES_AD4(1,6));
	fprintf('RATES_AD4 MDAC2 = 1 (%%): %6.2f %6.2f %6.2f %6.2f %6.2f %6.2f\n',RATES_AD4(2,1),RATES_AD4(2,2),RATES_AD4(2,3),RATES_AD4(2,4),RATES_AD4(2,5),RATES_AD4(2,6));
	fprintf('RATES_AD4 MDAC3 = 1 (%%): %6.2f %6.2f %6.2f %6.2f %6.2f %6.2f\n',RATES_AD4(3,1),RATES_AD4(3,2),RATES_AD4(3,3),RATES_AD4(3,4),RATES_AD4(3,5),RATES_AD4(3,6));
end