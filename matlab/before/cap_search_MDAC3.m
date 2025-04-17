function [cor_T_MDAC33]=cap_search_MDAC3(cor_T_MDAC11,cor_T_MDAC22,cor_T_MDAC33,T_MDAC1,T_MDAC2,T_MDAC3,E1,cal_npts,NN,len)
%cor_T_MDAC11��cor_T_MDAC22��cor_T_MDAC33����ǰ��У׼�������ֱ��ӦMDAC1��MDAC2��MDAC3��У׼ϵ����
%T_MDAC1��T_MDAC2��T_MDAC3���������ݣ��ֱ��ӦMDAC1��MDAC2��MDAC3������
%E1��ADC��Ȩ���ʮ����ԭʼ���ݻ��������
%------------------------------------MDAC3--------------------------------------------%
%��ʼ����һЩ���ڼ���ı�����
%G1 �� G2 �ǻ���MDAC1��MDAC2��У׼�������������ֵ��
%G3 ��ʼ��Ϊ0�����ں��������и��¡�
%datalen ���������ݵĳ��ȡ�
%E5 ���ڴ洢������������ݡ�
%cor_T1_MDAC3_in ���ڴ洢MDAC3�ĺ�ѡУ׼������
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
%���ã�MDAC3 �� 6 ��У׼������cor_T_MDAC33(j,1)������ j=1,2,...,6�����ֱ��Ӧ MDAC3 �Ĳ�ͬλ��bit����
%Ŀ�꣺����Ż��� 6 ��������
for j=1:6
    for k=1:cal_npts  %cal_npts���������ľ���
        prec=10^(-k); %prec=10^(-k) �ǵ�ǰ�����ľ��ȡ����� k �����ӣ�prec �𽥼�С��������Χ����С
        for p=1:NN
            cor_T1_MDAC3_in(j,p)=cor_T_MDAC33(j,1)+(p-round(NN/2)-1)*prec;
            %(p-round(NN/2)-1)*prec ����һ���Ե�ǰУ׼����Ϊ���ġ���ΧΪ ��(NN/2)*prec �ĺ�ѡֵ
        end
        for m=1:NN  %����ÿ����ѡ����
%             cor_T1_MDAC3=cor_T1_MDAC3_in(j,m);
            % calc actual weight
            cor_T_MDAC33_tmp = cor_T_MDAC33; %cor_T_MDAC33_tmp ����ʱ�洢�� MDAC3 У׼����                                           
            cor_T_MDAC33_tmp(j,1) = cor_T1_MDAC3_in(j,m);%�ڲ��޸�ԭʼУ׼����������£����Ժ�ѡֵ��Ч��
%             G3 = (cor_T_MDAC33_tmp(1,1)+cor_T_MDAC33_tmp(2,1)+cor_T_MDAC33_tmp(3,1)+cor_T_MDAC33_tmp(4,1)+cor_T_MDAC33_tmp(5,1)+cor_T_MDAC33_tmp(6,1)+2)/2;
            G3 = ((cor_T_MDAC33_tmp(2,1)+cor_T_MDAC33_tmp(3,1)+cor_T_MDAC33_tmp(4,1)+cor_T_MDAC33_tmp(5,1))*1.5+2)/2;    
            %   COR1, COR2, COR3 �ǻ�������ֵ��У׼���������Ȩ�ء�
            %8 ��һ���������ӣ������� MDAC ����ƻ�У׼�����йء�
            %Ŀ�꣺��У׼����������ֵ�������������ʵ�ʵ�Ȩ�ء�
            COR1 = 8*G1*G2*G3*cor_T_MDAC11;
            COR2 = 8*G2*G3*cor_T_MDAC22;
            COR3 = 8*G3*cor_T_MDAC33_tmp;
            % �����������
            %���ã����� MDAC1��MDAC2 �� MDAC3 ���������ݣ�T_MDAC1, T_MDAC2, T_MDAC3���Լ�Ȩ�أ�COR1, COR2, COR3���������µ�������� E5��
            %E1(1:datalen,4) ��ԭʼ��������ݡ�
            %Ŀ�꣺ģ�⵱ǰУ׼�����µ� ADC �����
            E5 = T_MDAC1*COR1 + T_MDAC2*COR2 + T_MDAC3*COR3 + E1(1:datalen,4);
            adc_data_mux=E5;
            ENOB_Calc();
            enobE(m)=ENOB;
            %ѡ������У׼����  ���enob�ı仯С��0.00001����ô��ȡ����1�������ֵ
            if ((max(enobE)-min(enobE))<0.0000001)
                cor_T1=find(abs(cor_T1_MDAC3_in(j,1:end)-1)==min(abs(cor_T1_MDAC3_in(j,1:end)-1)));
            else
                cor_T1=find(enobE==max(enobE));
            end
        end
        %���ã����� j ��У׼��������Ϊ����ֵ��
        %Ŀ�꣺���Ż� MDAC3 ��У׼����
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
            