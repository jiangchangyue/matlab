%第二组数据鼓面倾斜计算
clc,clear;
syms d s l sinx cosx;
a=[90,90,80,80,80,80,80,80];%初始时刻队员的用力大小情况
d=0.22;%鼓身高度
s=0.11;%鼓初始位置较绳子水平时下降距离
l=1.7;%绳长
sinx=(d/2+s)/l;%绳子与水平面的夹角的正弦值
cosx=sqrt(1-sinx^2);%绳子与水平面的夹角的余弦值
sum1=0;
for i=a
    sum1=sum1+i;
end
sum_y=sum1*sinx;%竖直方向上的合力
sum_x=a(1)*cosx-a(8)*cosx;%绳子与水平面的分力
temp1=sum_x^2+sum_x^2;
temp2=2*sum_x*sum_x;
temp4=(180-360/8)*3.14/180;
temp3=cos(temp4);
sum_x=sqrt(temp1-temp2*temp3);%余弦定理求水平方向合力
%sum_x=sqrt(sum_x^2+sum_x^2-2*sum_x*sum_x*cos((180-360/8)*3.14/180))
sum=atan(sum_x/sum_y);%总倾斜角的正切值
ans2=sum*45/atan(1);%倾斜角
ans2