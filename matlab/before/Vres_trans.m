%该函数用于生成最终的鱼叉曲线


function Vres_trans(E1,E_MDAC321_cal,T_MDAC2,T_MDAC3,cor_T_MDAC22,cor_T_MDAC33,Gain_MDAC1,Gain_MDAC2,Gain_MDAC3,len,Vres_title,fin)
%Vres11=zeros((len-1)*4,1);
%Vres22=zeros((len-1)*4,1);
%Vres33=zeros((len-1)*4,1);
Vres11=zeros((len-1)*4+2,1);
Vres22=zeros((len-1)*4+2,1);
Vres33=zeros((len-1)*4+2,1);
% 计算电压残差
for i=1:(len-1)*4+2
    Vres11(i,1)=E1(i,4)+(cor_T_MDAC33(1,1).*T_MDAC3(i,1)+cor_T_MDAC33(2,1).*T_MDAC3(i,2)+cor_T_MDAC33(3,1).*T_MDAC3(i,3)+cor_T_MDAC33(4,1).*T_MDAC3(i,4)...
                +cor_T_MDAC33(5,1).*T_MDAC3(i,5)+cor_T_MDAC33(6,1).*T_MDAC3(i,6)).*32+...
                (cor_T_MDAC22(1,1).*T_MDAC2(i,1)+cor_T_MDAC22(2,1).*T_MDAC2(i,2)+cor_T_MDAC22(3,1).*T_MDAC2(i,3)+cor_T_MDAC22(4,1).*T_MDAC2(i,4)+cor_T_MDAC22(5,1).*T_MDAC2(i,5)+cor_T_MDAC22(6,1).*T_MDAC2(i,6)).*128;
    Vres11(i,1)=Vres11(i,1).*Gain_MDAC1;
    Vres22(i,1)=E1(i,4)+(cor_T_MDAC33(1,1).*T_MDAC3(i,1)+cor_T_MDAC33(2,1).*T_MDAC3(i,2)+cor_T_MDAC33(3,1).*T_MDAC3(i,3)+cor_T_MDAC33(4,1).*T_MDAC3(i,4)...
                +cor_T_MDAC33(5,1).*T_MDAC3(i,5)+cor_T_MDAC33(6,1).*T_MDAC3(i,6)).*32;
    Vres22(i,1)=Vres22(i,1).*Gain_MDAC1.*Gain_MDAC2;
    Vres33(i,1)=E1(i,4).*Gain_MDAC1.*Gain_MDAC2.*Gain_MDAC3;
end

%生成理想曲线

yy=zeros(1,4096);
for xx=0:4095
if(xx<768)
    yy(xx+1)=4*(xx-511)+2044;
%     yy(xx)=4.*(xx-511)+2044;
elseif (xx<1280 && xx>=768)
    yy(xx+1)=4.*(xx-1023)+2047;
 elseif (xx<1792 && xx>=1280)
        yy(xx+1)=4*(xx-1535)+2047;
elseif (xx<2304 && xx>=1792)
        yy(xx+1)=4*(xx-2047)+2047;
elseif (xx<2816 && xx >=2304)
        yy(xx+1)=4*(xx-2559)+2047;
elseif (xx<=3328 && xx>=2816)
        yy(xx+1)=4*(xx-3071)+2047;
else
        yy(xx+1)=4*(xx-3583)+2047;
end
end

%绘制电压残差曲线
%实际的电压残差曲线
figure
EF1=[E_MDAC321_cal(:,1),Vres11(:,1)];
Vres1=sortrows(EF1,1);%升序排列
plot(Vres1(:,1),Vres1(:,2));
hold on;

%理想残差曲线图——鱼叉图
xx=0:4095;
plot (xx,yy);
xlabel ('Vin','FontSize',15);
ylabel('Vres','FontSize',15);
text(1800,4000,'MDAC1','FontSize',15);
grid on;
title(Vres_title);
%figure;

%EF2=[Vres11(:,1),Vres22(:,1)];
%Vres2=sortrows(EF2,1);
%plot(Vres2(:,1),Vres2(:,2));
%hold on;
%xx=0:4095;
%plot (xx,yy);
%xlabel ('Vin','FontSize',15);
%ylabel('Vres','FontSize',15);
%text(1800,4000,'MDAC2','FontSize',15);
%grid on;
%figure;

%EF3=[Vres22(:,1),Vres33(:,1)];
%Vres3=sortrows(EF3,1);
%plot(Vres3(:,1),Vres3(:,2));
%hold on;
%xx=0:4095;
%plot (xx,yy);
%xlabel ('Vin','FontSize',15);
%ylabel('Vres','FontSize',15);
%text(1800,4000,'MDAC3','FontSize',15);
%grid on;
end