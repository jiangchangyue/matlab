%��һ�����ݹ�����б����
clc,clear;
syms d s l sin cos;
a=[90,80,80,80,80,80,80,80];%��ʼʱ�̶�Ա��������С���
d=0.22;%�����߶�
s=0.11;%�ĳ�ʼλ�ý�����ˮƽʱ�½�����
l=1.7;%����
sin=(d/2+s)/l;%������ˮƽ��ļнǵ�����ֵ
cos=sqrt(1-sin^2);%������ˮƽ��ļнǵ�����ֵ
sum1=0;
for i=a
    sum1=sum1+i;
end
sum_y=sum1*sin;%��ֱ�����ϵĺ���
sum_x=a(1)*cos-a(8)*cos;%ˮƽ�����ϵĺ���
sum=atan(sum_x/sum_y);%����б�ǵ�����ֵ
ans1=sum*45/atan(1);%��б��
ans1