a=xlsread('one.xlsx');
%xlswrite('one.xlsx',a)
x=[];
y=[];
for i=1:9
    x(i)=a(1,i);
    y(i)=a(2,i);
end
x,y
plot(x,y,'r*')
cftool