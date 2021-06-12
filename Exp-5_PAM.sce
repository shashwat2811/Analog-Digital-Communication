clc;
clear;
xdel ( winsid ());
// generate modulating signal
fm = 2;
Am = 5;
t = 0:0.001:5;
Vm = Am*sin(((2*%pi)*fm)*t/4);
subplot(311)
plot(t,Vm)
title('message signal');
// generate carrier signal
fc = 10;
Ac = 5;
Vc = Ac*squarewave (((2*%pi)*fc)*t);
subplot(312)
plot(t,Vc)
title('carrier pulse');
h=gca();
h.data_bounds=[0,-1;2,3*Ac]
// generate pam
pam_mod=Vm.*Vc
subplot(313)
plot(t,pam_mod);
title('PAM signal');
