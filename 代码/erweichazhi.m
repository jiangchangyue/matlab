clear
clc
[width,depth]=meshgrid(-5:1:5);
temp=peaks(width,depth)
[WI,DI]=meshgrid(-5:.125:5);
TI=interp2(width,depth,temp,WI,DI);
mesh(width,depth,temp),hold,mesh(WI,DI,TI+25)
xlabel('Width of Plate'),ylabel('Depth of Plate')
zlabel('Degrees Celsius'), grid
[width,depth]=meshgrid(1:1:5);
%Z=peaks(X,Y)