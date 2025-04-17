function [cor_T_MDAC33]=cap_search_MDAC3(cor_T_MDAC11,cor_T_MDAC22,cor_T_MDAC33,T_MDAC1,T_MDAC2,T_MDAC3,E1,cal_npts,NN,len)
%cor_T_MDAC11、cor_T_MDAC22、cor_T_MDAC33：当前的校准参数，分别对应MDAC1、MDAC2和MDAC3的校准系数。
%T_MDAC1、T_MDAC2、T_MDAC3：热码数据，分别对应MDAC1、MDAC2和MDAC3的输入
%E1：ADC加权后的十进制原始数据或误差数据
%------------------------------------MDAC3--------------------------------------------%
%初始化了一些用于计算的变量。
%G1 和 G2 是基于MDAC1和MDAC2的校准参数计算的增益值。
%G3 初始化为0，将在后续计算中更新。
%datalen 是热码数据的长度。
%E5 用于存储计算后的误差数据。
%cor_T1_MDAC3_in 用于存储MDAC3的候选校准参数。
COR1 = zeros(6,1);
COR2 = zeros(6,1);
COR3 = zeros(6,1);
% G1 = (cor_T_MDAC11(1,1)+cor_T_MDAC11(2,1)+cor_T_MDAC11(3,1)+cor_T_MDAC11(4,1)+cor_T_MDAC11(5,1)+cor_T_MDAC11(6,1)+2)/2;
G1 = ((cor_T_MDAC11(2,1)+cor_T_MDAC11(3,1)+cor_T_MDAC11(4,1)+cor_T_MDAC11(5,1))*1.5+2)/2;
% G2 = (cor_T_MDAC22(1,1)+cor_T_MDAC22(2,1)+cor_T_MDAC22(3,1)+cor_T_MDAC22(4,1)+cor_T_MDAC22(5,1)+cor_T_MDAC22(6,1)+2)/2;
G2 = ((cor_T_MDAC22(2,1)+cor_T_MDAC22(3,1)+cor_T_MDAC22(4,1)+cor_T_MDAC22(5,1))*1.5+2)/2;
G3 = 0;
datalen = length(T_MDAC1);
E5 = zeros(datalen,1);
cor_T1_MDAC3_in = zeros(6,20);
%作用：MDAC3 有 6 个校准参数（cor_T_MDAC33(j,1)，其中 j=1,2,...,6），分别对应 MDAC3 的不同位（bit）。
%目标：逐个优化这 6 个参数。
for j=1:6
    for k=1:cal_npts  %cal_npts控制搜索的精度
        prec=10^(-k); %prec=10^(-k) 是当前搜索的精度。随着 k 的增加，prec 逐渐减小，搜索范围逐渐缩小
        for p=1:NN
            cor_T1_MDAC3_in(j,p)=cor_T_MDAC33(j,1)+(p-round(NN/2)-1)*prec;
            %(p-round(NN/2)-1)*prec 生成一个以当前校准参数为中心、范围为 ±(NN/2)*prec 的候选值
        end
        for m=1:NN  %评估每个候选参数
%             cor_T1_MDAC3=cor_T1_MDAC3_in(j,m);
            % calc actual weight
            cor_T_MDAC33_tmp = cor_T_MDAC33; %cor_T_MDAC33_tmp 是临时存储的 MDAC3 校准参数                                           
            cor_T_MDAC33_tmp(j,1) = cor_T1_MDAC3_in(j,m);%在不修改原始校准参数的情况下，测试候选值的效果
%             G3 = (cor_T_MDAC33_tmp(1,1)+cor_T_MDAC33_tmp(2,1)+cor_T_MDAC33_tmp(3,1)+cor_T_MDAC33_tmp(4,1)+cor_T_MDAC33_tmp(5,1)+cor_T_MDAC33_tmp(6,1)+2)/2;
            G3 = ((cor_T_MDAC33_tmp(2,1)+cor_T_MDAC33_tmp(3,1)+cor_T_MDAC33_tmp(4,1)+cor_T_MDAC33_tmp(5,1))*1.5+2)/2;    
            %   COR1, COR2, COR3 是基于增益值和校准参数计算的权重。
            %8 是一个缩放因子，可能与 MDAC 的设计或校准策略有关。
            %目标：将校准参数和增益值结合起来，计算实际的权重。
            COR1 = 8*G1*G2*G3*cor_T_MDAC11;
            COR2 = 8*G2*G3*cor_T_MDAC22;
            COR3 = 8*G3*cor_T_MDAC33_tmp;
            % 计算误差数据
            %作用：基于 MDAC1、MDAC2 和 MDAC3 的输入数据（T_MDAC1, T_MDAC2, T_MDAC3）以及权重（COR1, COR2, COR3），计算新的误差数据 E5。
            %E1(1:datalen,4) 是原始的误差数据。
            %目标：模拟当前校准参数下的 ADC 输出。
            E5 = T_MDAC1*COR1 + T_MDAC2*COR2 + T_MDAC3*COR3 + E1(1:datalen,4);
            adc_data_mux=E5;
            ENOB_Calc();
            enobE(m)=ENOB;
            %选择最优校准参数  如果enob的变化小于0.00001，那么就取距离1最近的数值
            if ((max(enobE)-min(enobE))<0.0000001)
                cor_T1=find(abs(cor_T1_MDAC3_in(j,1:end)-1)==min(abs(cor_T1_MDAC3_in(j,1:end)-1)));
            else
                cor_T1=find(enobE==max(enobE));
            end
        end
        %作用：将第 j 个校准参数更新为最优值。
        %目标：逐步优化 MDAC3 的校准参数
        cor_T_MDAC33(j,1)=cor_T1_MDAC3_in(j,cor_T1(1));
    end
end
end
%------------------------------------MDAC3--------------------------------------------% 
%             if(j==1)
%                 for i=1:(len-1)*4
%                     E5(i,1)=E1(i,4)+(cor_T1_MDAC3.*T_MDAC3(i,1)+cor_T_MDAC33(2,1).*T_MDAC3(i,2)+cor_T_MDAC33(3,1).*T_MDAC3(i,3)+cor_T_MDAC33(4,1).*T_MDAC3(i,4)...
%                             +cor_T_MDAC33(5,1).*T_MDAC3(i,5)+cor_T_MDAC33(6,1).*T_MDAC3(i,6)).*32+...
%                             (cor_T_MDAC22(1,1).*T_MDAC2(i,1)+cor_T_MDAC22(2,1).*T_MDAC2(i,2)+cor_T_MDAC22(3,1).*T_MDAC2(i,3)+cor_T_MDAC22(4,1).*T_MDAC2(i,4)+cor_T_MDAC22(5,1).*T_MDAC2(i,5)+cor_T_MDAC22(6,1).*T_MDAC2(i,6)).*128+...
%                             (cor_T_MDAC11(1,1).*T_MDAC1(i,1)+cor_T_MDAC11(2,1).*T_MDAC1(i,2)+cor_T_MDAC11(3,1).*T_MDAC1(i,3)+cor_T_MDAC11(4,1).*T_MDAC1(i,4)+cor_T_MDAC11(5,1).*T_MDAC1(i,5)+cor_T_MDAC11(6,1).*T_MDAC1(i,6)).*512;
%                 end
%             elseif(j==2)
%                 for i=1:(len-1)*4
%                     E5(i,1)=E1(i,4)+(cor_T_MDAC33(1,1).*T_MDAC3(i,1)+cor_T1_MDAC3.*T_MDAC3(i,2)+cor_T_MDAC33(3,1).*T_MDAC3(i,3)+cor_T_MDAC33(4,1).*T_MDAC3(i,4)...
%                             +cor_T_MDAC33(5,1).*T_MDAC3(i,5)+cor_T_MDAC33(6,1).*T_MDAC3(i,6)).*32+...
%                             (cor_T_MDAC22(1,1).*T_MDAC2(i,1)+cor_T_MDAC22(2,1).*T_MDAC2(i,2)+cor_T_MDAC22(3,1).*T_MDAC2(i,3)+cor_T_MDAC22(4,1).*T_MDAC2(i,4)+cor_T_MDAC22(5,1).*T_MDAC2(i,5)+cor_T_MDAC22(6,1).*T_MDAC2(i,6)).*128+...
%                             (cor_T_MDAC11(1,1).*T_MDAC1(i,1)+cor_T_MDAC11(2,1).*T_MDAC1(i,2)+cor_T_MDAC11(3,1).*T_MDAC1(i,3)+cor_T_MDAC11(4,1).*T_MDAC1(i,4)+cor_T_MDAC11(5,1).*T_MDAC1(i,5)+cor_T_MDAC11(6,1).*T_MDAC1(i,6)).*512;                end
%             elseif(j==3)
%                 for i=1:(len-1)*4
%                     E5(i,1)=E1(i,4)+(cor_T_MDAC33(1,1).*T_MDAC3(i,1)+cor_T_MDAC33(2,1).*T_MDAC3(i,2)+cor_T1_MDAC3.*T_MDAC3(i,3)+cor_T_MDAC33(4,1).*T_MDAC3(i,4)...
%                             +cor_T_MDAC33(5,1).*T_MDAC3(i,5)+cor_T_MDAC33(6,1).*T_MDAC3(i,6)).*32+...
%                             (cor_T_MDAC22(1,1).*T_MDAC2(i,1)+cor_T_MDAC22(2,1).*T_MDAC2(i,2)+cor_T_MDAC22(3,1).*T_MDAC2(i,3)+cor_T_MDAC22(4,1).*T_MDAC2(i,4)+cor_T_MDAC22(5,1).*T_MDAC2(i,5)+cor_T_MDAC22(6,1).*T_MDAC2(i,6)).*128+...
%                             (cor_T_MDAC11(1,1).*T_MDAC1(i,1)+cor_T_MDAC11(2,1).*T_MDAC1(i,2)+cor_T_MDAC11(3,1).*T_MDAC1(i,3)+cor_T_MDAC11(4,1).*T_MDAC1(i,4)+cor_T_MDAC11(5,1).*T_MDAC1(i,5)+cor_T_MDAC11(6,1).*T_MDAC1(i,6)).*512;                end
%             elseif(j==4)
%                 for i=1:(len-1)*4
%                     E5(i,1)=E1(i,4)+(cor_T_MDAC33(1,1).*T_MDAC3(i,1)+cor_T_MDAC33(2,1).*T_MDAC3(i,2)+cor_T_MDAC33(3,1).*T_MDAC3(i,3)+cor_T1_MDAC3.*T_MDAC3(i,4)...
%                             +cor_T_MDAC33(5,1).*T_MDAC3(i,5)+cor_T_MDAC33(6,1).*T_MDAC3(i,6)).*32+...
%                             (cor_T_MDAC22(1,1).*T_MDAC2(i,1)+cor_T_MDAC22(2,1).*T_MDAC2(i,2)+cor_T_MDAC22(3,1).*T_MDAC2(i,3)+cor_T_MDAC22(4,1).*T_MDAC2(i,4)+cor_T_MDAC22(5,1).*T_MDAC2(i,5)+cor_T_MDAC22(6,1).*T_MDAC2(i,6)).*128+...
%                             (cor_T_MDAC11(1,1).*T_MDAC1(i,1)+cor_T_MDAC11(2,1).*T_MDAC1(i,2)+cor_T_MDAC11(3,1).*T_MDAC1(i,3)+cor_T_MDAC11(4,1).*T_MDAC1(i,4)+cor_T_MDAC11(5,1).*T_MDAC1(i,5)+cor_T_MDAC11(6,1).*T_MDAC1(i,6)).*512;                end
%             elseif(j==5)
%                 for i=1:(len-1)*4
%                     E5(i,1)=E1(i,4)+(cor_T_MDAC33(1,1).*T_MDAC3(i,1)+cor_T_MDAC33(2,1).*T_MDAC3(i,2)+cor_T_MDAC33(3,1).*T_MDAC3(i,3)+cor_T_MDAC33(4,1).*T_MDAC3(i,4)...
%                             +cor_T1_MDAC3.*T_MDAC3(i,5)+cor_T_MDAC33(6,1).*T_MDAC3(i,6)).*32+...
%                             (cor_T_MDAC22(1,1).*T_MDAC2(i,1)+cor_T_MDAC22(2,1).*T_MDAC2(i,2)+cor_T_MDAC22(3,1).*T_MDAC2(i,3)+cor_T_MDAC22(4,1).*T_MDAC2(i,4)+cor_T_MDAC22(5,1).*T_MDAC2(i,5)+cor_T_MDAC22(6,1).*T_MDAC2(i,6)).*128+...
%                             (cor_T_MDAC11(1,1).*T_MDAC1(i,1)+cor_T_MDAC11(2,1).*T_MDAC1(i,2)+cor_T_MDAC11(3,1).*T_MDAC1(i,3)+cor_T_MDAC11(4,1).*T_MDAC1(i,4)+cor_T_MDAC11(5,1).*T_MDAC1(i,5)+cor_T_MDAC11(6,1).*T_MDAC1(i,6)).*512;                end
%             elseif(j==6)  
%                 for i=1:(len-1)*4
%                     E5(i,1)=E1(i,4)+(cor_T_MDAC33(1,1).*T_MDAC3(i,1)+cor_T_MDAC33(2,1).*T_MDAC3(i,2)+cor_T_MDAC33(3,1).*T_MDAC3(i,3)+cor_T_MDAC33(4,1).*T_MDAC3(i,4)...
%                             +cor_T_MDAC33(5,1).*T_MDAC3(i,5)+cor_T1_MDAC3.*T_MDAC3(i,6)).*32+...
%                             (cor_T_MDAC22(1,1).*T_MDAC2(i,1)+cor_T_MDAC22(2,1).*T_MDAC2(i,2)+cor_T_MDAC22(3,1).*T_MDAC2(i,3)+cor_T_MDAC22(4,1).*T_MDAC2(i,4)+cor_T_MDAC22(5,1).*T_MDAC2(i,5)+cor_T_MDAC22(6,1).*T_MDAC2(i,6)).*128+...
%                             (cor_T_MDAC11(1,1).*T_MDAC1(i,1)+cor_T_MDAC11(2,1).*T_MDAC1(i,2)+cor_T_MDAC11(3,1).*T_MDAC1(i,3)+cor_T_MDAC11(4,1).*T_MDAC1(i,4)+cor_T_MDAC11(5,1).*T_MDAC1(i,5)+cor_T_MDAC11(6,1).*T_MDAC1(i,6)).*512;              end
%             end
            