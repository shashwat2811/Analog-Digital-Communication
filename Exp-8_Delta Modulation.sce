A=10;
del=0.5;
pi=3.14;
t=0:2*pi/100:2*pi;
x=A*sin(t);
plot(x)
y=[0];
xr=0;
for i=1:length(x)-1
if xr(i)<=x(i)
d=1;
xr(i+1)=xr(i)+del;
else
d=0;
xr(i+1)=xr(i)-del;
end
y=[y d];  
end
plot2d2(xr);
xlabel('Time');
ylabel('Amplitude');
title('Delta modulation');
