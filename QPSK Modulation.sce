clc ;
clear ;
xdel ( winsid () ) ;
Tb=1;
t=0:(Tb/100):Tb;
fc=1; 
c1=sqrt(2/Tb)*cos(2*%pi*fc*t); 
c2=sqrt(2/Tb)*sin(2*%pi*fc*t);
N=16;
m=rand(1,N); 
t1=0;t2=Tb;
for i=1:2:(N-1) 
    t=[t1:(Tb/100):t2]
if m(i)>0.5
    m(i)=1;
m_s=ones(1,length(t)); 
else
m(i)=0;
m_s=-1*ones(1,length(t));
end
odd_sig(i,:)=c1.*m_s; 
if m(i+1)>0.5 
m(i+1)=1;
m_s=ones(1,length(t));
else
m(i+1)=0;
m_s=-1*ones(1,length(t));
end
even_sig(i,:)=c2.*m_s; 
qpsk = odd_sig+even_sig;
subplot(3,2,4);
plot(t,qpsk(i,:));
title('QPSK signal');
xlabel('t---->');
ylabel('s(t)');

t1=t1+(Tb+.01); 
t2=t2+(Tb+.01);
end
subplot(3,2,1);
for N=1:16;
    plot2d3(N,m(N),style=2)
end
title('binary data bits');
xlabel('n---->');
ylabel('b(n)');
subplot(3,2,2);
plot(t,c1);
title('carrier signal-1');
xlabel('Time (sec)');
ylabel('Amplitude (volts)');
subplot(3,2,3);
plot(t,c2);
title('carrier signal-2');
xlabel('Time (sec)');
ylabel('Amplitude (volts)');
t1=0;
t2=Tb;
 for i=1:N-1
    t=[t1:(Tb/100):t2]
    x1=sum(c1.*qpsk(i,:)); 
    x2=sum(c2.*qpsk(i,:)); 
    if (x1>0&&x2>0) 
        demod(i)=1;
        demod(i+1)=1;
elseif (x1>0&&x2<0) 
    demod(i)=1; 
    demod(i+1)=0;
elseif (x1<0&&x2<0) 
    demod(i)=0; 
    demod(i+1)=0;
elseif (x1<0&&x2>0) 
    demod(i)=0;
    demod(i+1)=1;
    end
t1=t1+(Tb+.01); 
t2=t2+(Tb+.01);
end 
subplot(3,2,5);
for N=1:16;
    plot2d3(N,demod(N),style=2)
end
title('qpsk demodulated bits');
xlabel('n---->');
ylabel('b(n)');
