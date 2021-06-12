clc ;
clear ;
xdel ( winsid () ) ;//xdel(0)//xdel()
R=2000;
r=200;
j=sqrt(-1);
C=0.1*10^-6;

for i=1:100000
    k(i)=log10(i)
    f=i;
    w=2*3.1414*f;
    w1=1/(r*C);
    pre_emp(i)=(R/r)*20*log10(sqrt(1+(w/w1)^2))
    de_emp(i)=-20*log10(sqrt(1+(w/w1)^2))
end 
subplot(211)
plot(k,pre_emp);
title("Pre emphasis");
xlabel('log f');
ylabel('Gain (dB)')
subplot(212)
plot(k,de_emp); 
title("De emphasis");
xlabel('log f');
ylabel('Gain (dB)')
