# Pico/Nim Advanced I/O

A Library written for the [Nim](https://nim-lang.org/) programming language. 
Provides functions to perform more advanced steps when send sending or receiving 
data from the RP2040 microcontroller.

The following functions are available:

- [shiftOut](###shiftout)
- shiftIn
- pulse
- pulseIn
- wave
- endWave

This library requires the [picostdlib](https://github.com/beef331/picostdlib)
library.

<br/>

### shiftOut

**syntax**

```nim
shiftOut(dataPin, clockPin: Gpio; bitOrder = MSBFIRST; value: uint8)
```

*or*

```nim
shiftOut(dataPin, clockPin, latchPin: Gpio; bitOrder = MSBFIRST; value: uint8)
```

**description**

Shifts out a byte of data one bit at a time. The bit order can shift out either
the most significant (leftmost) bit or the least significant (rightmost) bit 
first. Requires two initialized GPIO pins. One is for tha data pin, where the 
bits are written to. The other pin is for the clock, which writes data on the 
rising edge. Optionally, a latch pin can be defined.