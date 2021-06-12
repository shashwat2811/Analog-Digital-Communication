clc;
//We use , F=(F1+(F2−1)/G1)
FA=1.5;
GA=10,//dB
GAA=(10^(GA/10));
FB=3;
GB=15,//dB
GBB=(10^(GB/10));
// Case 1 : Amp A followed by Amp B
F11=FA ;
F12=FB ;
G11=GAA ;
F1=(F11+(F12-1)/G11);
disp(F1,"Gain when Amp A followed by Amp B");
// Case 2 : Amp B followed by Amp A
F21=FB;
F22=FA;
G21=GBB;
F2=(F21+(F22-1)/G21);
disp(F2,"Gain when Amp B followed by Amp A");
//As F1<F2 , Case 1 gives lowest Noise
T0=20// degree celsius
T=T0+273;// Kelvin
//When A is followed by B
Te1=(F1-1)*T;
disp(Te1,"Noise temperature when Amp A followed by Amp B");
//When B is followed by A
Te2=(F2-1)*T;
disp(Te2 ," Noise temperature when Am B followed by AmpA");
