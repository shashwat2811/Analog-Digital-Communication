clc;
clear all;
clf;
t=[0:0.01:5*%pi];
A=5;
fc=2;

Vm=A.*squarewave(t);
Vc=A.*sin(fc.*t);
Vp=Vm.*Vc;

subplot (3,1,1);
plot(t,Vm,'red');
xlabel("Time")
ylabel("Amplitude of Message Signal")

subplot(3,1,2);
plot(t,Vc,'green');
xlabel("Time")
ylabel("Amplitude of Carrier Signal")

subplot(3,1,3);
plot(t,Vp,'blue');
xlabel("Time")
ylabel("Amplitude of PSK Signal")
