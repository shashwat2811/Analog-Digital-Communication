t= 0:1/10000:0.02; // declare time interval
Ec = 5; // amplitude of carrier signal
Em = 4.5; // amplitude of modulating signal
fc = 1000; // carrier frequency
fm = 300; // modulating frequency

//Carrier signal
Vc = Ec *cos (((2*%pi)*fc)*t);

//Modulating signal
Vm = Em * cos (((2*%pi)*fm)*t);

m1 = 1; // modulation index

Vfm = Ec*cos(((( 2*%pi)*fc)*t)+m1*sin(((2*%pi)*fm)*t)); //Frequency modulation signal

// plot signal
subplot (311);
plot (t, Vm);
title("Modulating signal");
xlabel('Time - s');
ylabel('Amplitude');
subplot (312);
plot (t,Vc);
title("Carrier signal");
xlabel('Time - s'); 
ylabel('Amplitude');
subplot (313);
plot (t,Vfm);
title("Modulated-wave");
xlabel('Time - s');
ylabel('Amplitude');
