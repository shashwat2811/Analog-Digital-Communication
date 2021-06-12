clc;
close;
t = 0:0.01:1;
x = sin(2*%pi*5*t);
L = 8;

//quantization
xmax = max(abs(x));
xq = x/xmax;
en_code = xq;
d = 2/L;
q = d*[0:L-1];
q = q-((L-1)/2)*d;
for i = 1:L
xq(find(((q(i)-d/2)<=xq)&(xq<=(q(i)+d/2))))=q(i).*ones(1,length(find(((q(i)-d/2)<=xq)&(xq<=(q(i)+d/2)))));
en_code(find(xq == q(i)))= (i-1).*ones(1,length(find(xq== q(i))));
end
xq = xq*xmax;
plot2d2(t*2*%pi,x);
plot2d2(t*2*%pi,xq,5);

//Encoding
n = log2(L);
c = zeros(length(x),n);
for i = 1:length(x)
for j = n:-1:0
if(fix(en_code(i)/(2^j))==1)
c(i,(n-j)) =1;
en_code(i) = en_code(i)-2^j;
end
end
end
disp(c)
