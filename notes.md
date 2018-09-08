
config.txt
==========

```
dtparam=i2c_arm=on

# Powerdown pin
dtoverlay=gpio-poweroff,gpiopin=22,active_low=1,gpio_pull=up

# Button
dtoverlay=gpio-shutdown,gpio_pin=23,active_low=0,gpio_pull=down

# Stepper PWDN pins
gpio=8,11,16,21,22=pu

gpu_mem=128

# Stability issues appear to be fixed by this
force_turbo=1
over_voltage=4
```

Wiring
======

## Button
Pin 23, active high

## !OFF
Pin 22, pull low to poweroff

## LOW
Pin 27, goes high when battery low

## BNO055

INT: Pin 4
Address: 0x29 (7-bit)

## Motors

### A

Step: 12
Dir:   6 --> Reversed
PWDN:  8

Step:  5
Dir:   7
PWDN: 11

### B

Step: 26
Dir:  20 --> Reversed
PWDN: 16

Step: 19
Dir:  13
PWDN: 21
