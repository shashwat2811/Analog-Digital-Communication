clc;
clear;
xdel ( winsid () ) ;

//Differential Phase shift keying
b = [1 0 1 0 1 0 1 0];
//Diffreential Eccoding
d = 1;// Initial bit
dc=[];
for i = 1:length(b)
    dc = [dc d];
  d=~(bitxor(d,b(i)));
end
 dc=[dc d];

//Bit to symbol mapping
 for ii = 1:length(dc)
     if dc(ii)==1;
         nn(ii)=1;
     else nn(ii)=-1;
     end
 end

 // pulse shaping
 S = 100;
 i = 1;
 t=0:1/S:length(dc);
 for j = 1:length(t)
     if t(j)<=i;
         m(j)=nn(i);
     else
         m(j)=nn(i);
         i=i+1;
     end
 end

 //plotting
 subplot(411);
 plot2d2(t,m, style=[color("navy blue")]);
 xlabel('Time');
 ylabel('Amplitude');
 title('NRZ polar signal');

 // Carrier Signal
 c=cos(2*%pi*2*t);
 subplot(412);
 plot2d2(t,c, style=[color("navy blue")]);
 xlabel('Time');
 xlabel('Time');
 ylabel('Amplitude');
 title('Carrier Signal');

//BPSK Modulation
 x = m' .* c;
 subplot(413);
 plot2d2(t,x, style=[color("red")]);
 xlabel('Time');
xlabel('Time');
 ylabel('Amplitude');
 title('DPSK Modulated Signal');
 
 //Coherent Detection and reconstruction
 y=x;
 y1=y.*c; // Product Modulator
 subplot(414);
plot2d2(t,y1, style=[color("green")]);
 xlabel('Time');
 xlabel('Time');
 ylabel('Amplitude');
 title('DPSK Demodulated signal');
 
//Integrator output
 //k=1/S:1/S:1;
 int_op=[];
 for ii=0:S:length(y1)-S;
     int_o=(1/S)*inttrap(y1(ii+1:ii+S));
     int_op=[int_op int_o];
 end
  //Hard decision decoding
  for i = 1 : length(int_op);
      if int_op(i) >=0; 
            detect(i) = 1;
        else
            detect(i)=0;
    end
end
disp('Input Bits:')
disp (b)
disp('DPSK Modulated Bits:')
detect1 = detect(2:length(detect));
disp(detect1')
   //Differential detection
 for ii = 1:length(detect)-1;
     if detect(ii)==detect(ii+1);
         op(ii)=1;
     else
         op(ii)=0;
     end
 end
 disp('DPSK Demodulated Bits:')
 disp(op')
