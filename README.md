# Nexys-3-Sinewave-LED
Use the DDS Compiler IP from Xilinx to control a PWM signal generator controlling an LED. 

## Values for the DDS Compiler core
### Page 1:
- System clock : 0.1
- Parameter Selection : Hardware Parameters
- Phase Width : 24
- Output Width 8

### Page 2:
- Output Selection : Sine
- Amplitude Mode : Unit Circle

### Page 3:
_Nothing to change_

### Page 4:
- 1: 1010100000

### Page 5:
_Check the sumary_

### Page 6:
_Frequency should be about 2 hertz (0.000002... MHz)_
