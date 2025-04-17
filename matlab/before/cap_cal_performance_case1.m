%进行流水线ADC（Pipeline ADC）中MDAC（乘法数模转换器）的电容失配校准，并计算校准后的性能指标
% E 未进行加权之前的原始数据
% E1_initial 加权之后子ADC中的原始结果
% T_MDAC1 是E中第一列对应的热码数
% T_MDAC2 是E中第二列对应的热码数
% T_MDAC3 是E中第三列对应的热码数
% cor_T_MDAC11 第一个stage的最优校准参数
% cor_T_MDAC11 第二个stage的最优校准参数
% cor_T_MDAC11 第三个stage的最优校准参数

function [E_MDAC321_cal]=cap_cal_performance_case1(E,E1_initial,T_MDAC1,T_MDAC2,T_MDAC3,cor_T_MDAC11,cor_T_MDAC22,cor_T_MDAC33,len)

%初始化三个校准系数数组 COR1、COR2 和 COR3，每个数组有6个元素，用于存储每个MDAC的校准系数。
COR1 = zeros(6,1);
COR2 = zeros(6,1);
COR3 = zeros(6,1);
%经过校正后的增益系数
%计算每个MDAC的增益 G1、G2 和 G3。这些增益是通过对校准矩阵 cor_T_MDAC11、cor_T_MDAC22 和 cor_T_MDAC33 的特定列进行加权求和得到的
G1 = ((cor_T_MDAC11(2,1)+cor_T_MDAC11(3,1)+cor_T_MDAC11(4,1)+cor_T_MDAC11(5,1))*1.5+2)/2;
G2 = ((cor_T_MDAC22(2,1)+cor_T_MDAC22(3,1)+cor_T_MDAC22(4,1)+cor_T_MDAC22(5,1))*1.5+2)/2;
G3 = ((cor_T_MDAC33(2,1)+cor_T_MDAC33(3,1)+cor_T_MDAC33(4,1)+cor_T_MDAC33(5,1))*1.5+2)/2;

%初始化三个数组 E_MDAC3_cal、E_MDAC32_cal 和 E_MDAC321_cal，用于存储校准后的数据
datalen = length(T_MDAC1);
E_MDAC3_cal = zeros(datalen,1);
E_MDAC32_cal = zeros(datalen,1);
E_MDAC321_cal = zeros(datalen,1);

%计算每个MDAC的校准系数，这些系数用于后续的校准计算
COR1 = 8*G1*G2*G3*cor_T_MDAC11;
COR2 = 8*G2*G3*cor_T_MDAC22;
COR3 = 8*G3*cor_T_MDAC33;
% 校准MDAC3 后的数据
a = T_MDAC3*COR3 ;

E_MDAC3_cal = T_MDAC3*COR3 + E(1:datalen,4);
%    for i=1:(len-1)*4
%       E_MDAC3_cal(i,1)=E(i,4)+(cor_T_MDAC33(1,1).*T_MDAC3(i,1)+cor_T_MDAC33(2,1).*T_MDAC3(i,2)+cor_T_MDAC33(3,1).*T_MDAC3(i,3)+cor_T_MDAC33(4,1).*T_MDAC3(i,4)+cor_T_MDAC33(5,1).*T_MDAC3(i,5)+cor_T_MDAC33(6,1).*T_MDAC3(i,6)).*32+(T_MDAC2(i,1)+T_MDAC2(i,2)+T_MDAC2(i,3)+T_MDAC2(i,4)+T_MDAC2(i,5)+T_MDAC2(i,6)).*128+(T_MDAC1(i,1)+T_MDAC1(i,2)+T_MDAC1(i,3)+T_MDAC1(i,4)+T_MDAC1(i,5)+T_MDAC1(i,6)).*512;
%    end    
% 校准MDAC3+MDAC2 后的数据
E_MDAC32_cal = T_MDAC2*COR2 + T_MDAC3*COR3 + E(1:datalen,4);
%    for i=1:(len-1)*4
%       E_MDAC32_cal(i,1)=E(i,4)+(cor_T_MDAC33(1,1).*T_MDAC3(i,1)+cor_T_MDAC33(2,1).*T_MDAC3(i,2)+cor_T_MDAC33(3,1).*T_MDAC3(i,3)+cor_T_MDAC33(4,1).*T_MDAC3(i,4)+cor_T_MDAC33(5,1).*T_MDAC3(i,5)+cor_T_MDAC33(6,1).*T_MDAC3(i,6)).*32+(cor_T_MDAC22(1,1).*T_MDAC2(i,1)+cor_T_MDAC22(2,1).*T_MDAC2(i,2)+cor_T_MDAC22(3,1).*T_MDAC2(i,3)+cor_T_MDAC22(4,1).*T_MDAC2(i,4)+cor_T_MDAC22(5,1).*T_MDAC2(i,5)+cor_T_MDAC22(6,1).*T_MDAC2(i,6)).*128+(T_MDAC1(i,1)+T_MDAC1(i,2)+T_MDAC1(i,3)+T_MDAC1(i,4)+T_MDAC1(i,5)+T_MDAC1(i,6)).*512;
%    end    
% 校准MDAC3+MDAC2+MDAC1后的数据   
%E_MDAC321_cal为优化的最好的结果，与获取E1_initial的方式一直，进行E的加权求和
%COR1 COR2 COR3 理论上不进行任何校准时应该为512 128 32

E_MDAC321_cal = T_MDAC1*COR1 + T_MDAC2*COR2 + T_MDAC3*COR3 + E(1:datalen,4);

%         for i=1:(len-1)*4
%             E_MDAC321_cal(i,1)=E(i,4)+(cor_T_MDAC33(1,1).*T_MDAC3(i,1)+cor_T_MDAC33(2,1).*T_MDAC3(i,2)+cor_T_MDAC33(3,1).*T_MDAC3(i,3)+cor_T_MDAC33(4,1).*T_MDAC3(i,4)...
%                 +cor_T_MDAC33(5,1).*T_MDAC3(i,5)+cor_T_MDAC33(6,1).*T_MDAC3(i,6)).*32+...
%                 (cor_T_MDAC22(1,1).*T_MDAC2(i,1)+cor_T_MDAC22(2,1).*T_MDAC2(i,2)+cor_T_MDAC22(3,1).*T_MDAC2(i,3)+cor_T_MDAC22(4,1).*T_MDAC2(i,4)+cor_T_MDAC22(5,1).*T_MDAC2(i,5)+cor_T_MDAC22(6,1).*T_MDAC2(i,6)).*128+...
%                 (cor_T_MDAC11(1,1).*T_MDAC1(i,1)+cor_T_MDAC11(2,1).*T_MDAC1(i,2)+cor_T_MDAC11(3,1).*T_MDAC1(i,3)+cor_T_MDAC11(4,1).*T_MDAC1(i,4)+cor_T_MDAC11(5,1).*T_MDAC1(i,5)+cor_T_MDAC11(6,1).*T_MDAC1(i,6)).*512;
%         end  


%E1_initial为引入的子ADC的采集结果
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