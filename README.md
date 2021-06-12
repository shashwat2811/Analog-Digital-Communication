# Analog-Digital-Communication

# DSB-SC: To generate DSB-SC AM signal using balanced modulator.
Double Sideband-Suppressed carrier modulation, in which the transmitted power consists of only the upper and lower sidebands.  It is basically an amplitude modulation wave without the carrier, therefore reducing power waste, giving it 50% efficiency.

# Frequency Modulation: To simulate the Frequency Modulation (FM) wave for 300Hz in time domain using SCILAB.
Frequency modulation is a process of changing the frequency of a carrier wave in accordance with the slowly varying base band signal. The main advantage of this modulation is that it can provide better discrimination against noise. The frequency of the carrier is made to increase as the voltage in the information signal increases and to decreases in frequency as it reduces. Higher the amplitude gives increased frequency.

# Pre-emphasis and de-emphasis using FM: To design a pre emphasis circuit to boost the input signal level for a FM transmitter for a cut off frequency of 1KHz. Attenuate the boosted high frequency signals at the receiver side using a deemphasis circuit with a cutoff frequency of 1.6KHz. Analyze the frequency response characteristics of pre emphasis and de emphasis circuits.
Pre-emphasis refers to boosting the relative amplitudes of the modulating voltage for higher audio frequencies. Pre-emphasis is done at the transmitting side of the frequency modulator. De-emphasis is the complement of pre-emphasis, in the anti-noise system called emphasis. This circuit is used to attenuate the high frequency signal that is boosted at the transmitter section.
fc=R/(2πL) # pre-emphasis
fc=1/(2πRC) # de-emphasis
