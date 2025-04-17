%�Ż���ˮ����ADC��Pipelined ADC����MDAC1ģ���У׼�����ĺ��� cap_search_MDAC1��
% �����Ŀ����ͨ���������ŵ�У׼���������ADC������
%----�������---
%cor_T_MDAC11��cor_T_MDAC22��cor_T_MDAC33����ǰ��У׼�������ֱ��ӦMDAC1��MDAC2��MDAC3��У׼ϵ����
%T_MDAC1��T_MDAC2��T_MDAC3���������ݣ��ֱ��ӦMDAC1��MDAC2��MDAC3�����롣
%E1��ADC��ԭʼ���ݻ�������ݡ�
%cal_npts��У׼������������ڿ���У׼���ȡ�
%NN��ÿ�������Ĳ�����Χ��
%len�����ݳ��ȡ�

%----�������---
%cor_T_MDAC11
function [cor_T_MDAC11]=cap_search_MDAC1(cor_T_MDAC11,cor_T_MDAC22,cor_T_MDAC33,T_MDAC1,T_MDAC2,T_MDAC3,E1,cal_npts,NN,len)
%------------------------------------MDAC1--------------------------------------------%  
COR1 = zeros(6,1);
COR2 = zeros(6,1);
COR3 = zeros(6,1);

%G1 G2 G3Ϊ��Ӧ�Ļ���MDAC1��MDAC2��MDAC3��У׼�������������ֵ
G1 = 0;
% G2 = (cor_T_MDAC22(1,1)+cor_T_MDAC22(2,1)+cor_T_MDAC22(3,1)+cor_T_MDAC22(4,1)+cor_T_MDAC22(5,1)+cor_T_MDAC22(6,1)+2)/2;
G2 = ((cor_T_MDAC22(2,1)+cor_T_MDAC22(3,1)+cor_T_MDAC22(4,1)+cor_T_MDAC22(5,1))*1.5+2)/2;
% G3 = (cor_T_MDAC33(1,1)+cor_T_MDAC33(2,1)+cor_T_MDAC33(3,1)+cor_T_MDAC33(4,1)+cor_T_MDAC33(5,1)+cor_T_MDAC33(6,1)+2)/2;
G3 = ((cor_T_MDAC33(2,1)+cor_T_MDAC33(3,1)+cor_T_MDAC33(4,1)+cor_T_MDAC33(5,1))*1.5+2)/2;



datalen = length(T_MDAC1);
E5 = zeros(datalen,1);
cor_T1_MDAC1_in = zeros(6,20);
for j=1:6
    for k=1:cal_npts
        prec=10^(-k);
        for p=1:NN
            cor_T1_MDAC1_in(j,p)=cor_T_MDAC11(j,1)+(p-round(NN/2)-1)*prec;
        end
        for m=1:NN
%             cor_T1_MDAC1=cor_T1_MDAC1_in(j,m);
            % calc actual weight
            cor_T_MDAC11_tmp = cor_T_MDAC11;
            cor_T_MDAC11_tmp(j,1) = cor_T1_MDAC1_in(j,m);
%             G1 = (cor_T_MDAC11_tmp(1,1)+cor_T_MDAC11_tmp(2,1)+cor_T_MDAC11_tmp(3,1)+cor_T_MDAC11_tmp(4,1)+cor_T_MDAC11_tmp(5,1)+cor_T_MDAC11_tmp(6,1)+2)/2;
            G1 = ((cor_T_MDAC11_tmp(2,1)+cor_T_MDAC11_tmp(3,1)+cor_T_MDAC11_tmp(4,1)+cor_T_MDAC11_tmp(5,1))*1.5+2)/2;
            COR1 = 8*G1*G2*G3*cor_T_MDAC11_tmp;
            COR2 = 8*G2*G3*cor_T_MDAC22;
            COR3 = 8*G3*cor_T_MDAC33;
            % calc data
            E5 = T_MDAC1*COR1 + T_MDAC2*COR2 + T_MDAC3*COR3 + E1(1:datalen,4);

            adc_data_mux=E5;
            ENOB_Calc();
            enobE(m)=ENOB;
            %���enob�ı仯С��0.00001����ô��ȡ����1�������ֵ
            if ((max(enobE)-min(enobE))<0.000001)
                cor_T1=find(abs(cor_T1_MDAC1_in(j,1:end)-1)==min(abs(cor_T1_MDAC1_in(j,1:end)-1)));
            else
                cor_T1=find(enobE==max(enobE));
            end
        end
        cor_T_MDAC11(j,1)=cor_T1_MDAC1_in(j,cor_T1);
    end
end
%------------------------------------MDAC1--------------------------------------------%  
end
%ͨ������ÿ��У׼������ֵ�������Ӧ��������ݺ���Чλ����ENOB������ѡ��ʹENOB���Ĳ���ֵ��