%���������ݹ�����б����
clc,clear;
syms d s l sinx cosx;
a=[0,80,80,0,80,80,80,80];%��ʼʱ�̶�Ա��������С���
d=0.22;%�����߶�
s=0.11;%�ĳ�ʼλ�ý�����ˮƽʱ�½�����
l=1.7;%����
sinx=(d/2+s)/l;%������ˮƽ��ļнǵ�����ֵ
cosx=sqrt(1-sinx^2);%������ˮƽ��ļнǵ�����ֵ
sum1=0;
for i=a
    sum1=sum1+i;
end
sum_y=sum1*sinx-3.6*9.8;%��ֱ�����ϵĺ���
sum_x=abs(a(1)*cosx-a(8)*cosx);%������ˮƽ��ķ���
temp1=sum_x^2+sum_x^2;
temp2=2*sum_x*sum_x;
temp4=(180-3*360/8)*3.14/180;
temp3=cos(temp4);
sum_x=sqrt(temp1-temp2*temp3);%���Ҷ�����ˮƽ�������
%sum_x=sqrt(sum_x^2+sum_x^2-2*sum_x*sum_x*cos((180-360/8)*3.14/180));
sum=atan(sum_y/sum_x);%����б�ǵ�����ֵ
ans6=sum*45/atan(1);%��б��
ans6