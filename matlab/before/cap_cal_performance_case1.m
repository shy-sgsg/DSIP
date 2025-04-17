%������ˮ��ADC��Pipeline ADC����MDAC���˷���ģת�������ĵ���ʧ��У׼��������У׼�������ָ��
% E δ���м�Ȩ֮ǰ��ԭʼ����
% E1_initial ��Ȩ֮����ADC�е�ԭʼ���
% T_MDAC1 ��E�е�һ�ж�Ӧ��������
% T_MDAC2 ��E�еڶ��ж�Ӧ��������
% T_MDAC3 ��E�е����ж�Ӧ��������
% cor_T_MDAC11 ��һ��stage������У׼����
% cor_T_MDAC11 �ڶ���stage������У׼����
% cor_T_MDAC11 ������stage������У׼����

function [E_MDAC321_cal]=cap_cal_performance_case1(E,E1_initial,T_MDAC1,T_MDAC2,T_MDAC3,cor_T_MDAC11,cor_T_MDAC22,cor_T_MDAC33,len)

%��ʼ������У׼ϵ������ COR1��COR2 �� COR3��ÿ��������6��Ԫ�أ����ڴ洢ÿ��MDAC��У׼ϵ����
COR1 = zeros(6,1);
COR2 = zeros(6,1);
COR3 = zeros(6,1);
%����У���������ϵ��
%����ÿ��MDAC������ G1��G2 �� G3����Щ������ͨ����У׼���� cor_T_MDAC11��cor_T_MDAC22 �� cor_T_MDAC33 ���ض��н��м�Ȩ��͵õ���
G1 = ((cor_T_MDAC11(2,1)+cor_T_MDAC11(3,1)+cor_T_MDAC11(4,1)+cor_T_MDAC11(5,1))*1.5+2)/2;
G2 = ((cor_T_MDAC22(2,1)+cor_T_MDAC22(3,1)+cor_T_MDAC22(4,1)+cor_T_MDAC22(5,1))*1.5+2)/2;
G3 = ((cor_T_MDAC33(2,1)+cor_T_MDAC33(3,1)+cor_T_MDAC33(4,1)+cor_T_MDAC33(5,1))*1.5+2)/2;

%��ʼ���������� E_MDAC3_cal��E_MDAC32_cal �� E_MDAC321_cal�����ڴ洢У׼�������
datalen = length(T_MDAC1);
E_MDAC3_cal = zeros(datalen,1);
E_MDAC32_cal = zeros(datalen,1);
E_MDAC321_cal = zeros(datalen,1);

%����ÿ��MDAC��У׼ϵ������Щϵ�����ں�����У׼����
COR1 = 8*G1*G2*G3*cor_T_MDAC11;
COR2 = 8*G2*G3*cor_T_MDAC22;
COR3 = 8*G3*cor_T_MDAC33;
% У׼MDAC3 �������
a = T_MDAC3*COR3 ;

E_MDAC3_cal = T_MDAC3*COR3 + E(1:datalen,4);
%    for i=1:(len-1)*4
%       E_MDAC3_cal(i,1)=E(i,4)+(cor_T_MDAC33(1,1).*T_MDAC3(i,1)+cor_T_MDAC33(2,1).*T_MDAC3(i,2)+cor_T_MDAC33(3,1).*T_MDAC3(i,3)+cor_T_MDAC33(4,1).*T_MDAC3(i,4)+cor_T_MDAC33(5,1).*T_MDAC3(i,5)+cor_T_MDAC33(6,1).*T_MDAC3(i,6)).*32+(T_MDAC2(i,1)+T_MDAC2(i,2)+T_MDAC2(i,3)+T_MDAC2(i,4)+T_MDAC2(i,5)+T_MDAC2(i,6)).*128+(T_MDAC1(i,1)+T_MDAC1(i,2)+T_MDAC1(i,3)+T_MDAC1(i,4)+T_MDAC1(i,5)+T_MDAC1(i,6)).*512;
%    end    
% У׼MDAC3+MDAC2 �������
E_MDAC32_cal = T_MDAC2*COR2 + T_MDAC3*COR3 + E(1:datalen,4);
%    for i=1:(len-1)*4
%       E_MDAC32_cal(i,1)=E(i,4)+(cor_T_MDAC33(1,1).*T_MDAC3(i,1)+cor_T_MDAC33(2,1).*T_MDAC3(i,2)+cor_T_MDAC33(3,1).*T_MDAC3(i,3)+cor_T_MDAC33(4,1).*T_MDAC3(i,4)+cor_T_MDAC33(5,1).*T_MDAC3(i,5)+cor_T_MDAC33(6,1).*T_MDAC3(i,6)).*32+(cor_T_MDAC22(1,1).*T_MDAC2(i,1)+cor_T_MDAC22(2,1).*T_MDAC2(i,2)+cor_T_MDAC22(3,1).*T_MDAC2(i,3)+cor_T_MDAC22(4,1).*T_MDAC2(i,4)+cor_T_MDAC22(5,1).*T_MDAC2(i,5)+cor_T_MDAC22(6,1).*T_MDAC2(i,6)).*128+(T_MDAC1(i,1)+T_MDAC1(i,2)+T_MDAC1(i,3)+T_MDAC1(i,4)+T_MDAC1(i,5)+T_MDAC1(i,6)).*512;
%    end    
% У׼MDAC3+MDAC2+MDAC1�������   
%E_MDAC321_calΪ�Ż�����õĽ�������ȡE1_initial�ķ�ʽһֱ������E�ļ�Ȩ���
%COR1 COR2 COR3 �����ϲ������κ�У׼ʱӦ��Ϊ512 128 32

E_MDAC321_cal = T_MDAC1*COR1 + T_MDAC2*COR2 + T_MDAC3*COR3 + E(1:datalen,4);

%         for i=1:(len-1)*4
%             E_MDAC321_cal(i,1)=E(i,4)+(cor_T_MDAC33(1,1).*T_MDAC3(i,1)+cor_T_MDAC33(2,1).*T_MDAC3(i,2)+cor_T_MDAC33(3,1).*T_MDAC3(i,3)+cor_T_MDAC33(4,1).*T_MDAC3(i,4)...
%                 +cor_T_MDAC33(5,1).*T_MDAC3(i,5)+cor_T_MDAC33(6,1).*T_MDAC3(i,6)).*32+...
%                 (cor_T_MDAC22(1,1).*T_MDAC2(i,1)+cor_T_MDAC22(2,1).*T_MDAC2(i,2)+cor_T_MDAC22(3,1).*T_MDAC2(i,3)+cor_T_MDAC22(4,1).*T_MDAC2(i,4)+cor_T_MDAC22(5,1).*T_MDAC2(i,5)+cor_T_MDAC22(6,1).*T_MDAC2(i,6)).*128+...
%                 (cor_T_MDAC11(1,1).*T_MDAC1(i,1)+cor_T_MDAC11(2,1).*T_MDAC1(i,2)+cor_T_MDAC11(3,1).*T_MDAC1(i,3)+cor_T_MDAC11(4,1).*T_MDAC1(i,4)+cor_T_MDAC11(5,1).*T_MDAC1(i,5)+cor_T_MDAC11(6,1).*T_MDAC1(i,6)).*512;
%         end  


%E1_initialΪ�������ADC�Ĳɼ����
adc_data_mux=E1_initial;
SFDR_Calc_new;



% DNL_INL_sin;
% figure;
% plot(hist(adc_data_mux,[0:4095]));
% sum(hist(adc_data_mux,[0:4095])==0);

% adc_data_mux=E_MDAC3_cal(1000:(len-1)*4-999,1);
% ENOB_Calc_1110;
% fprintf('MDAC3 capacity calibration\n'); 
% fprintf('SINAD=%g dB \n',SINAD); 
% fprintf('ENOB=%g bit \n',ENOB);
% % DNL_INL_sin();
% % figure;
% % plot(hist(adc_data_mux,[0:4095]));
% % sum(hist(adc_data_mux,[0:4095])==0);
% 
% adc_data_mux=E_MDAC32_cal(1000:(len-1)*4-999,1);
% ENOB_Calc_1110;
% fprintf('MDAC3/2 capacity calibration\n'); 
% fprintf('SINAD=%g dB \n',SINAD); 
% fprintf('ENOB=%g bit \n',ENOB);
% DNL_INL_sin();
% figure;
% plot(hist(adc_data_mux,[0:4095]));
% sum(hist(adc_data_mux,[0:4095])==0);
% fprintf('filename=%s\n',fname);
fprintf('C_MDAC1=%6.4f %6.4f %6.4f %6.4f %6.4f %6.4f\n',cor_T_MDAC11(1:6,1)); 
fprintf('C_MDAC2=%6.4f %6.4f %6.4f %6.4f %6.4f %6.4f\n',cor_T_MDAC22(1:6,1)); 
fprintf('C_MDAC3=%6.4f %6.4f %6.4f %6.4f %6.4f %6.4f\n',cor_T_MDAC33(1:6,1)); 
% fprintf('Normalized Cap_value and Gain:\n');
% fprintf('C_MDAC1=%6.4f %6.4f %6.4f %6.4f %6.4f %6.4f\n',cor_T_MDAC11(1:6,1)/cor_T_MDAC11(1,1));
% fprintf('C_MDAC2=%6.4f %6.4f %6.4f %6.4f %6.4f %6.4f\n',cor_T_MDAC22(1:6,1)/cor_T_MDAC22(1,1));
% fprintf('C_MDAC3=%6.4f %6.4f %6.4f %6.4f %6.4f %6.4f\n',cor_T_MDAC33(1:6,1)/cor_T_MDAC33(1,1));
fprintf('Gain1 2 3=%6.4f %6.4f %6.4f\n',G1,G2,G3);
adc_data_mux=E_MDAC321_cal;
SFDR_Calc_new;
% DNL_INL_sin;
% 
% figure;
% plot(hist(adc_data_mux,[0:4095]));
% sum(hist(adc_data_mux,[0:4095])==0);