%�ڰ������ݹ�����б����
clc,clear;
syms d s l sinx cosx;
a=[90,0,80,90,0,80,80,80];%��ʼʱ�̶�Ա��������С���
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
sum_x1=abs(a(1)*cosx-a(5)*cosx);%���Ҷ���
sum_x2=abs(a(2)*cosx-a(6)*cosx);
sum_x3=abs(a(4)*cosx-a(8)*cosx);
temp1=sum_x1^2+sum_x2^2;
temp2=2*sum_x1*sum_x2;
temp4=(180-3*360/8)*3.14/180;
temp3=cos(temp4);
sum_x11=sqrt(temp1-temp2*temp3);
cosx1=(sum_x2^2+sum_x11^2-sum_x1^2)/(2*sum_x2*sum_x11);
degree=90*acos(cosx1)/acos(0)+90;
tep1=sum_x11^2+sum_x3^2;
tep2=2*sum_x11*sum_x3;
tep4=degree*3.14/180;
tep3=cos(tep4);
sum_x=sqrt(tep1-tep2*tep3);%�������Ҷ�����ˮƽ������
%sum_x=sqrt(sum_x^2+sum_x^2-2*sum_x*sum_x*cos((180-360/8)*3.14/180));
sum=atan(sum_y/sum_x);%����б�ǵ�����ֵ
ans8=sum*45/atan(1);%��б��
ans8