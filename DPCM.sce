clc;
clear;
fm=5;
fs=20*fm;
am=10;
t=0:1/fs:1;
x=am*sin(2*%pi*fm*t);
subplot(2,1,1);
plot(t,x);
xlabel('time');
ylabel('amplitude');
title('input signal');
for n=1:length(x)
    if n==1
        e(n)=x(n);
        eq(n)=round(e(n))
        xq(n)=eq(n)
     else
         e(n)=x(n)-xq(n-1)
         eq(n)=round(e(n))
         xq(n)=eq(n)+xq(n-1)
     end
end
for n=1:length(x)
    if (n==1) 
        xqr(n)=eq(n);
    else
        xqr(n)=eq(n)+xqr(n-1);
     end
end
subplot(2,1,2);
plot(t,xqr);
xlabel('time');
ylabel('amplitude');
title('Reconstructed signal');
