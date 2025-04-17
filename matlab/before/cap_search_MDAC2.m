function [cor_T_MDAC22]=cap_search_MDAC2(cor_T_MDAC11,cor_T_MDAC22,cor_T_MDAC33,T_MDAC1,T_MDAC2,T_MDAC3,E1,cal_npts,NN,len)
%------------------------------------MDAC2--------------------------------------------%  
COR1 = zeros(6,1);
COR2 = zeros(6,1);
COR3 = zeros(6,1);
% G1 = (cor_T_MDAC11(1,1)+cor_T_MDAC11(2,1)+cor_T_MDAC11(3,1)+cor_T_MDAC11(4,1)+cor_T_MDAC11(5,1)+cor_T_MDAC11(6,1)+2)/2;
G1 = ((cor_T_MDAC11(2,1)+cor_T_MDAC11(3,1)+cor_T_MDAC11(4,1)+cor_T_MDAC11(5,1))*1.5+2)/2;
G2 = 0;
% G3 = (cor_T_MDAC33(1,1)+cor_T_MDAC33(2,1)+cor_T_MDAC33(3,1)+cor_T_MDAC33(4,1)+cor_T_MDAC33(5,1)+cor_T_MDAC33(6,1)+2)/2;
G3 = ((cor_T_MDAC33(2,1)+cor_T_MDAC33(3,1)+cor_T_MDAC33(4,1)+cor_T_MDAC33(5,1))*1.5+2)/2;
datalen = length(T_MDAC1);
E5 = zeros(datalen,1);
cor_T1_MDAC2_in = zeros(6,20);
for j=1:6
    for k=1:cal_npts
        prec=10^(-k);
        for p=1:NN
            cor_T1_MDAC2_in(j,p)=cor_T_MDAC22(j,1)+(p-round(NN/2)-1)*prec;
        end
        for m=1:NN
%             cor_T1_MDAC2=cor_T1_MDAC2_in(j,m);
            % calc actual weight
            cor_T_MDAC22_tmp = cor_T_MDAC22;
            cor_T_MDAC22_tmp(j,1) = cor_T1_MDAC2_in(j,m);
%             G2 = (cor_T_MDAC22_tmp(1,1)+cor_T_MDAC22_tmp(2,1)+cor_T_MDAC22_tmp(3,1)+cor_T_MDAC22_tmp(4,1)+cor_T_MDAC22_tmp(5,1)+cor_T_MDAC22_tmp(6,1)+2)/2;
            G2 = ((cor_T_MDAC22_tmp(2,1)+cor_T_MDAC22_tmp(3,1)+cor_T_MDAC22_tmp(4,1)+cor_T_MDAC22_tmp(5,1))*1.5+2)/2;
            COR1 = 8*G1*G2*G3*cor_T_MDAC11;
            COR2 = 8*G2*G3*cor_T_MDAC22_tmp;
            COR3 = 8*G3*cor_T_MDAC33;
            % calc data
            E5 = T_MDAC1*COR1 + T_MDAC2*COR2 + T_MDAC3*COR3 + E1(1:datalen,4);

            adc_data_mux=E5;
            ENOB_Calc();
            enobE(m)=ENOB;
            %如果enob的变化小于0.00001，那么就取距离1最近的数值
            if ((max(enobE)-min(enobE))<0.000000001)
                cor_T1=find(abs(cor_T1_MDAC2_in(j,1:end)-1)==min(abs(cor_T1_MDAC2_in(j,1:end)-1)));
            else
                cor_T1=find(enobE==max(enobE));
            end
        end

        cor_T_MDAC22(j,1)=cor_T1_MDAC2_in(j,cor_T1(1));
    end
end
end
%------------------------------------MDAC2--------------------------------------------%  
            %
%             if(j==1)
%                 for i=1:(len-1)*4
%                     E5(i,1)=E1(i,4)+(cor_T_MDAC33(1,1).*T_MDAC3(i,1)+cor_T_MDAC33(2,1).*T_MDAC3(i,2)+cor_T_MDAC33(3,1).*T_MDAC3(i,3)+cor_T_MDAC33(4,1).*T_MDAC3(i,4)...
%                             +cor_T_MDAC33(5,1).*T_MDAC3(i,5)+cor_T_MDAC33(6,1).*T_MDAC3(i,6)).*32+...
%                             (cor_T1_MDAC2.*T_MDAC2(i,1)+cor_T_MDAC22(2,1).*T_MDAC2(i,2)+cor_T_MDAC22(3,1).*T_MDAC2(i,3)+cor_T_MDAC22(4,1).*T_MDAC2(i,4)+cor_T_MDAC22(5,1).*T_MDAC2(i,5)+cor_T_MDAC22(6,1).*T_MDAC2(i,6)).*128+...
%                             (cor_T_MDAC11(1,1).*T_MDAC1(i,1)+cor_T_MDAC11(2,1).*T_MDAC1(i,2)+cor_T_MDAC11(3,1).*T_MDAC1(i,3)+cor_T_MDAC11(4,1).*T_MDAC1(i,4)+cor_T_MDAC11(5,1).*T_MDAC1(i,5)+cor_T_MDAC11(6,1).*T_MDAC1(i,6)).*512;
%                 end
%             elseif(j==2)
%                 for i=1:(len-1)*4
%                     E5(i,1)=E1(i,4)+(cor_T_MDAC33(1,1).*T_MDAC3(i,1)+cor_T_MDAC33(2,1).*T_MDAC3(i,2)+cor_T_MDAC33(3,1).*T_MDAC3(i,3)+cor_T_MDAC33(4,1).*T_MDAC3(i,4)...
%                             +cor_T_MDAC33(5,1).*T_MDAC3(i,5)+cor_T_MDAC33(6,1).*T_MDAC3(i,6)).*32+...
%                             (cor_T_MDAC22(1,1).*T_MDAC2(i,1)+cor_T1_MDAC2.*T_MDAC2(i,2)+cor_T_MDAC22(3,1).*T_MDAC2(i,3)+cor_T_MDAC22(4,1).*T_MDAC2(i,4)+cor_T_MDAC22(5,1).*T_MDAC2(i,5)+cor_T_MDAC22(6,1).*T_MDAC2(i,6)).*128+...
%                             (cor_T_MDAC11(1,1).*T_MDAC1(i,1)+cor_T_MDAC11(2,1).*T_MDAC1(i,2)+cor_T_MDAC11(3,1).*T_MDAC1(i,3)+cor_T_MDAC11(4,1).*T_MDAC1(i,4)+cor_T_MDAC11(5,1).*T_MDAC1(i,5)+cor_T_MDAC11(6,1).*T_MDAC1(i,6)).*512;                end
%             elseif(j==3)
%                 for i=1:(len-1)*4
%                     E5(i,1)=E1(i,4)+(cor_T_MDAC33(1,1).*T_MDAC3(i,1)+cor_T_MDAC33(2,1).*T_MDAC3(i,2)+cor_T_MDAC33(3,1).*T_MDAC3(i,3)+cor_T_MDAC33(4,1).*T_MDAC3(i,4)...
%                             +cor_T_MDAC33(5,1).*T_MDAC3(i,5)+cor_T_MDAC33(6,1).*T_MDAC3(i,6)).*32+...
%                             (cor_T_MDAC22(1,1).*T_MDAC2(i,1)+cor_T_MDAC22(2,1).*T_MDAC2(i,2)+cor_T1_MDAC2.*T_MDAC2(i,3)+cor_T_MDAC22(4,1).*T_MDAC2(i,4)+cor_T_MDAC22(5,1).*T_MDAC2(i,5)+cor_T_MDAC22(6,1).*T_MDAC2(i,6)).*128+...
%                             (cor_T_MDAC11(1,1).*T_MDAC1(i,1)+cor_T_MDAC11(2,1).*T_MDAC1(i,2)+cor_T_MDAC11(3,1).*T_MDAC1(i,3)+cor_T_MDAC11(4,1).*T_MDAC1(i,4)+cor_T_MDAC11(5,1).*T_MDAC1(i,5)+cor_T_MDAC11(6,1).*T_MDAC1(i,6)).*512;                end
%             elseif(j==4)
%                 for i=1:(len-1)*4
%                     E5(i,1)=E1(i,4)+(cor_T_MDAC33(1,1).*T_MDAC3(i,1)+cor_T_MDAC33(2,1).*T_MDAC3(i,2)+cor_T_MDAC33(3,1).*T_MDAC3(i,3)+cor_T_MDAC33(4,1).*T_MDAC3(i,4)...
%                             +cor_T_MDAC33(5,1).*T_MDAC3(i,5)+cor_T_MDAC33(6,1).*T_MDAC3(i,6)).*32+...
%                             (cor_T_MDAC22(1,1).*T_MDAC2(i,1)+cor_T_MDAC22(2,1).*T_MDAC2(i,2)+cor_T_MDAC22(3,1).*T_MDAC2(i,3)+cor_T1_MDAC2.*T_MDAC2(i,4)+cor_T_MDAC22(5,1).*T_MDAC2(i,5)+cor_T_MDAC22(6,1).*T_MDAC2(i,6)).*128+...
%                             (cor_T_MDAC11(1,1).*T_MDAC1(i,1)+cor_T_MDAC11(2,1).*T_MDAC1(i,2)+cor_T_MDAC11(3,1).*T_MDAC1(i,3)+cor_T_MDAC11(4,1).*T_MDAC1(i,4)+cor_T_MDAC11(5,1).*T_MDAC1(i,5)+cor_T_MDAC11(6,1).*T_MDAC1(i,6)).*512;                end
%             elseif(j==5)
%                 for i=1:(len-1)*4
%                     E5(i,1)=E1(i,4)+(cor_T_MDAC33(1,1).*T_MDAC3(i,1)+cor_T_MDAC33(2,1).*T_MDAC3(i,2)+cor_T_MDAC33(3,1).*T_MDAC3(i,3)+cor_T_MDAC33(4,1).*T_MDAC3(i,4)...
%                             +cor_T_MDAC33(5,1).*T_MDAC3(i,5)+cor_T_MDAC33(6,1).*T_MDAC3(i,6)).*32+...
%                             (cor_T_MDAC22(1,1).*T_MDAC2(i,1)+cor_T_MDAC22(2,1).*T_MDAC2(i,2)+cor_T_MDAC22(3,1).*T_MDAC2(i,3)+cor_T_MDAC22(4,1).*T_MDAC2(i,4)+cor_T1_MDAC2.*T_MDAC2(i,5)+cor_T_MDAC22(6,1).*T_MDAC2(i,6)).*128+...
%                             (cor_T_MDAC11(1,1).*T_MDAC1(i,1)+cor_T_MDAC11(2,1).*T_MDAC1(i,2)+cor_T_MDAC11(3,1).*T_MDAC1(i,3)+cor_T_MDAC11(4,1).*T_MDAC1(i,4)+cor_T_MDAC11(5,1).*T_MDAC1(i,5)+cor_T_MDAC11(6,1).*T_MDAC1(i,6)).*512;                end
%             elseif(j==6)  
%                 for i=1:(len-1)*4
%                     E5(i,1)=E1(i,4)+(cor_T_MDAC33(1,1).*T_MDAC3(i,1)+cor_T_MDAC33(2,1).*T_MDAC3(i,2)+cor_T_MDAC33(3,1).*T_MDAC3(i,3)+cor_T_MDAC33(4,1).*T_MDAC3(i,4)...
%                             +cor_T_MDAC33(5,1).*T_MDAC3(i,5)+cor_T_MDAC33(6,1).*T_MDAC3(i,6)).*32+...
%                             (cor_T_MDAC22(1,1).*T_MDAC2(i,1)+cor_T_MDAC22(2,1).*T_MDAC2(i,2)+cor_T_MDAC22(3,1).*T_MDAC2(i,3)+cor_T_MDAC22(4,1).*T_MDAC2(i,4)+cor_T_MDAC22(5,1).*T_MDAC2(i,5)+cor_T1_MDAC2.*T_MDAC2(i,6)).*128+...
%                             (cor_T_MDAC11(1,1).*T_MDAC1(i,1)+cor_T_MDAC11(2,1).*T_MDAC1(i,2)+cor_T_MDAC11(3,1).*T_MDAC1(i,3)+cor_T_MDAC11(4,1).*T_MDAC1(i,4)+cor_T_MDAC11(5,1).*T_MDAC1(i,5)+cor_T_MDAC11(6,1).*T_MDAC1(i,6)).*512;              end
%             end
            