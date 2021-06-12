# Analog-Digital-Communication

# DSB-SC: To generate DSB-SC AM signal using balanced modulator.
Double Sideband-Suppressed carrier modulation, in which the transmitted power consists of only the upper and lower sidebands.  It is basically an amplitude modulation wave without the carrier, therefore reducing power waste, giving it 50% efficiency.

# Frequency Modulation: To simulate the Frequency Modulation (FM) wave for 300Hz in time domain using SciLab.
Frequency modulation is a process of changing the frequency of a carrier wave in accordance with the slowly varying base band signal. The main advantage of this modulation is that it can provide better discrimination against noise. The frequency of the carrier is made to increase as the voltage in the information signal increases and to decreases in frequency as it reduces. Higher the amplitude gives increased frequency.

# Pre-emphasis and de-emphasis using FM: To design a pre emphasis circuit to boost the input signal level for a FM transmitter for a cut off frequency of 1KHz. Attenuate the boosted high frequency signals at the receiver side using a deemphasis circuit with a cutoff frequency of 1.6KHz. Analyze the frequency response characteristics of pre emphasis and de emphasis circuits.
Pre-emphasis refers to boosting the relative amplitudes of the modulating voltage for higher audio frequencies. Pre-emphasis is done at the transmitting side of the frequency modulator. De-emphasis is the complement of pre-emphasis, in the anti-noise system called emphasis. This circuit is used to attenuate the high frequency signal that is boosted at the transmitter section.
fc=R/(2πL) # pre-emphasis
fc=1/(2πRC) # de-emphasis

# Differential Pulse Code Modulation (DPCM): To analyze and simulate DPCM wave in SciLab.
Differential PCM is quite similar to ordinary PCM. Each word in this system indicates the difference in amplitude, positive or negative, between this sample and the previous sample. Thus the relative value of each sample is indicated rather than, the absolute value in normal PCM.

# Delta Modulation: To analyze and simulate Delta Modulation wave in SciLab.
Delta Modulation is a form of pulse modulation where a sample value is represented as a single bit. This is almost similar to differential PCM, as the transmitted bit is only one per sample just to indicate whether the present sample is larger or smaller than the previous one. The encoding, decoding and quantizing process become extremely simple but this system cannot handle rapidly varying samples. This increases the quantizing noise. 

# PSK modulation: To analyze and simulate PSK modulated waveform to find the Probability of Error using SciLab.
Phase Shift Keying is a modulation/data transmitting technique in which phase of the carrier signal is shifted between two distinct levels. In a simple PSK i.e. Binary PSK unshifted carrier "Acosωt" is transmitted to indicate a 1 condition, and the carrier shifted by 180 degrees i.e. – "Acosωt"  is transmitted to indicate as 0 condition.

# Quadrature Phase Shift Keying: To generate and demodulate quadrature phase shifted (QPSK) signal using SciLab.
Quadrature Phase Shift Keying is a form of Phase Shift Keying in which two bits are modulated at once, selecting one of four possible carrier phase shifts (0, 90, 180, or 270 degrees). QPSK allows the signal to carry twice as much information as ordinary PSK using the same bandwidth.

# Differential Phase Shift Keying: To simulate the DPSK modulation and demodulation using SciLab.
Differential phase shift keying is a non-coherent version of PSK. It eliminates the need for a coherent reference signal at the receiver by combining two basic operations at the transmitter:
i)	Differential encoding of the input binary wave
ii)	Phase shift keying
