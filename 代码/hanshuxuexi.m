num1=input('ÊäÈënum1£º');
num2=input('ÊäÈënum2£º');
f1=@add;
f2=@mutip;
f3=@Fibonacci;
if num1<num2
    f1(num1,num2)
elseif num1>num2
    f2(num1,num2)
else
    f3(num1)
end
    
