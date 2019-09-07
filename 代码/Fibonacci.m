function Fn=Fibonacci(n)
if n==1
    Fn=1;
    return
elseif n==2
    Fn=[1 1];
    return
else 
    a=Fibonacci(n-1);
    Fn=[a,a(end-1)+a(end)];
end
end