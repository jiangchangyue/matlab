%第一组数据鼓面倾斜计算
clc,clear;
syms d s l sin cos;
a=[90,80,80,80,80,80,80,80];%初始时刻队员的用力大小情况
d=0.22;%鼓身高度
s=0.11;%鼓初始位置较绳子水平时下降距离
l=1.7;%绳长
sin=(d/2+s)/l;%绳子与水平面的夹角的正弦值
cos=sqrt(1-sin^2);%绳子与水平面的夹角的余弦值
sum1=0;
for i=a
    sum1=sum1+i;
end
sum_y=sum1*sin;%竖直方向上的合力
sum_x=a(1)*cos-a(8)*cos;%水平方向上的合力
sum=atan(sum_x/sum_y);%总倾斜角的正切值
ans1=sum*45/atan(1);%倾斜角
ans1