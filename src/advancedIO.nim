import picostdlib/[gpio]
import bitops

type
  BitOrder* = enum
    MSBFIRST, LSBFIRST

proc pulse*(pin: Gpio, startValue = Low) = 
    pin.put(Low)
    pin.put(High)
    pin.put(Low)


proc shiftOut*(dataPin, clockPin: Gpio; value: SomeInteger) = 
  for bit in 0 .. ((sizeof(value) * 8) - 1):
    if value.testBit(bit): dataPin.put(High)
    else: dataPin.put(Low)
    clockPin.pulse()
