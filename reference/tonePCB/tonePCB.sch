EESchema Schematic File Version 2
LIBS:power
LIBS:device
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:valves
LIBS:tonePCB-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Earth #PWR01
U 1 1 58F529D4
P 4050 5900
F 0 "#PWR01" H 4050 5650 50  0001 C CNN
F 1 "Earth" H 4050 5750 50  0001 C CNN
F 2 "" H 4050 5900 50  0001 C CNN
F 3 "" H 4050 5900 50  0001 C CNN
	1    4050 5900
	0    1    1    0   
$EndComp
$Comp
L +5V #PWR02
U 1 1 58F529EF
P 3800 3700
F 0 "#PWR02" H 3800 3550 50  0001 C CNN
F 1 "+5V" H 3800 3840 50  0000 C CNN
F 2 "" H 3800 3700 50  0001 C CNN
F 3 "" H 3800 3700 50  0001 C CNN
	1    3800 3700
	0    -1   -1   0   
$EndComp
$Comp
L ATMEGA328P-PU U1
U 1 1 58F52910
P 5100 4800
F 0 "U1" H 4350 6050 50  0000 L BNN
F 1 "ATMEGA328P-PU" H 5500 3400 50  0000 L BNN
F 2 "Housings_DIP:DIP-28_W7.62mm_Socket" H 5100 4800 50  0001 C CIN
F 3 "" H 5100 4800 50  0001 C CNN
	1    5100 4800
	1    0    0    -1  
$EndComp
Wire Wire Line
	3800 3700 3800 4300
Wire Wire Line
	3800 4300 4200 4300
Wire Wire Line
	3800 3700 4200 3700
Wire Wire Line
	4050 5900 4200 5900
Wire Wire Line
	4200 6000 4050 6000
Wire Wire Line
	4050 6000 4050 5900
$Comp
L POT POT0
U 1 1 58F61ED4
P 7050 4350
F 0 "POT0" V 6875 4350 50  0000 C CNN
F 1 "POT" V 6950 4350 50  0000 C CNN
F 2 "Potentiometers:Potentiometer_Trimmer_ACP_CA6h_Vertical" H 7050 4350 50  0001 C CNN
F 3 "" H 7050 4350 50  0001 C CNN
	1    7050 4350
	-1   0    0    1   
$EndComp
$Comp
L +5V #PWR03
U 1 1 58F61F9C
P 7050 4200
F 0 "#PWR03" H 7050 4050 50  0001 C CNN
F 1 "+5V" H 7050 4340 50  0000 C CNN
F 2 "" H 7050 4200 50  0001 C CNN
F 3 "" H 7050 4200 50  0001 C CNN
	1    7050 4200
	1    0    0    -1  
$EndComp
$Comp
L Earth #PWR04
U 1 1 58F61FC8
P 7050 4500
F 0 "#PWR04" H 7050 4250 50  0001 C CNN
F 1 "Earth" H 7050 4350 50  0001 C CNN
F 2 "" H 7050 4500 50  0001 C CNN
F 3 "" H 7050 4500 50  0001 C CNN
	1    7050 4500
	1    0    0    -1  
$EndComp
$Comp
L POT POT1
U 1 1 58F62050
P 7350 4650
F 0 "POT1" V 7175 4650 50  0000 C CNN
F 1 "POT" V 7250 4650 50  0000 C CNN
F 2 "Potentiometers:Potentiometer_Trimmer_ACP_CA6h_Vertical" H 7350 4650 50  0001 C CNN
F 3 "" H 7350 4650 50  0001 C CNN
	1    7350 4650
	-1   0    0    1   
$EndComp
$Comp
L +5V #PWR05
U 1 1 58F62057
P 7350 4500
F 0 "#PWR05" H 7350 4350 50  0001 C CNN
F 1 "+5V" H 7350 4640 50  0000 C CNN
F 2 "" H 7350 4500 50  0001 C CNN
F 3 "" H 7350 4500 50  0001 C CNN
	1    7350 4500
	1    0    0    -1  
$EndComp
$Comp
L Earth #PWR06
U 1 1 58F6205D
P 7350 4800
F 0 "#PWR06" H 7350 4550 50  0001 C CNN
F 1 "Earth" H 7350 4650 50  0001 C CNN
F 2 "" H 7350 4800 50  0001 C CNN
F 3 "" H 7350 4800 50  0001 C CNN
	1    7350 4800
	1    0    0    -1  
$EndComp
$Comp
L POT POT2
U 1 1 58F62099
P 7050 5000
F 0 "POT2" V 6875 5000 50  0000 C CNN
F 1 "POT" V 6950 5000 50  0000 C CNN
F 2 "Potentiometers:Potentiometer_Trimmer_ACP_CA6h_Vertical" H 7050 5000 50  0001 C CNN
F 3 "" H 7050 5000 50  0001 C CNN
	1    7050 5000
	-1   0    0    1   
$EndComp
$Comp
L +5V #PWR07
U 1 1 58F620A0
P 7050 4850
F 0 "#PWR07" H 7050 4700 50  0001 C CNN
F 1 "+5V" H 7050 4990 50  0000 C CNN
F 2 "" H 7050 4850 50  0001 C CNN
F 3 "" H 7050 4850 50  0001 C CNN
	1    7050 4850
	1    0    0    -1  
$EndComp
$Comp
L Earth #PWR08
U 1 1 58F620A6
P 7050 5150
F 0 "#PWR08" H 7050 4900 50  0001 C CNN
F 1 "Earth" H 7050 5000 50  0001 C CNN
F 2 "" H 7050 5150 50  0001 C CNN
F 3 "" H 7050 5150 50  0001 C CNN
	1    7050 5150
	1    0    0    -1  
$EndComp
$Comp
L POT POT3
U 1 1 58F625BB
P 7350 5300
F 0 "POT3" V 7175 5300 50  0000 C CNN
F 1 "POT" V 7250 5300 50  0000 C CNN
F 2 "Potentiometers:Potentiometer_Trimmer_ACP_CA6h_Vertical" H 7350 5300 50  0001 C CNN
F 3 "" H 7350 5300 50  0001 C CNN
	1    7350 5300
	-1   0    0    1   
$EndComp
$Comp
L +5V #PWR09
U 1 1 58F625C2
P 7350 5150
F 0 "#PWR09" H 7350 5000 50  0001 C CNN
F 1 "+5V" H 7350 5290 50  0000 C CNN
F 2 "" H 7350 5150 50  0001 C CNN
F 3 "" H 7350 5150 50  0001 C CNN
	1    7350 5150
	1    0    0    -1  
$EndComp
$Comp
L Earth #PWR010
U 1 1 58F625C8
P 7350 5450
F 0 "#PWR010" H 7350 5200 50  0001 C CNN
F 1 "Earth" H 7350 5300 50  0001 C CNN
F 2 "" H 7350 5450 50  0001 C CNN
F 3 "" H 7350 5450 50  0001 C CNN
	1    7350 5450
	1    0    0    -1  
$EndComp
$Comp
L POT POT4
U 1 1 58F6264F
P 7050 5650
F 0 "POT4" V 6875 5650 50  0000 C CNN
F 1 "POT" V 6950 5650 50  0000 C CNN
F 2 "Potentiometers:Potentiometer_Trimmer_ACP_CA6h_Vertical" H 7050 5650 50  0001 C CNN
F 3 "" H 7050 5650 50  0001 C CNN
	1    7050 5650
	-1   0    0    1   
$EndComp
$Comp
L +5V #PWR011
U 1 1 58F62656
P 7050 5500
F 0 "#PWR011" H 7050 5350 50  0001 C CNN
F 1 "+5V" H 7050 5640 50  0000 C CNN
F 2 "" H 7050 5500 50  0001 C CNN
F 3 "" H 7050 5500 50  0001 C CNN
	1    7050 5500
	1    0    0    -1  
$EndComp
$Comp
L Earth #PWR012
U 1 1 58F6265C
P 7050 5800
F 0 "#PWR012" H 7050 5550 50  0001 C CNN
F 1 "Earth" H 7050 5650 50  0001 C CNN
F 2 "" H 7050 5800 50  0001 C CNN
F 3 "" H 7050 5800 50  0001 C CNN
	1    7050 5800
	1    0    0    -1  
$EndComp
$Comp
L POT POT5
U 1 1 58F626AF
P 7350 5950
F 0 "POT5" V 7175 5950 50  0000 C CNN
F 1 "POT" V 7250 5950 50  0000 C CNN
F 2 "Potentiometers:Potentiometer_Trimmer_ACP_CA6h_Vertical" H 7350 5950 50  0001 C CNN
F 3 "" H 7350 5950 50  0001 C CNN
	1    7350 5950
	-1   0    0    1   
$EndComp
$Comp
L +5V #PWR013
U 1 1 58F626B6
P 7350 5800
F 0 "#PWR013" H 7350 5650 50  0001 C CNN
F 1 "+5V" H 7350 5940 50  0000 C CNN
F 2 "" H 7350 5800 50  0001 C CNN
F 3 "" H 7350 5800 50  0001 C CNN
	1    7350 5800
	1    0    0    -1  
$EndComp
$Comp
L Earth #PWR014
U 1 1 58F626BC
P 7350 6100
F 0 "#PWR014" H 7350 5850 50  0001 C CNN
F 1 "Earth" H 7350 5950 50  0001 C CNN
F 2 "" H 7350 6100 50  0001 C CNN
F 3 "" H 7350 6100 50  0001 C CNN
	1    7350 6100
	1    0    0    -1  
$EndComp
Wire Wire Line
	6100 4550 6600 4550
Wire Wire Line
	6600 4550 6600 4350
Wire Wire Line
	6600 4350 6900 4350
Wire Wire Line
	6100 4650 7200 4650
Wire Wire Line
	6100 4750 6600 4750
Wire Wire Line
	6600 4750 6600 5000
Wire Wire Line
	6600 5000 6900 5000
Wire Wire Line
	6100 4850 6550 4850
Wire Wire Line
	6550 4850 6550 5300
Wire Wire Line
	6550 5300 7200 5300
Wire Wire Line
	6100 4950 6500 4950
Wire Wire Line
	6500 4950 6500 5650
Wire Wire Line
	6500 5650 6900 5650
Wire Wire Line
	6100 5050 6450 5050
Wire Wire Line
	6450 5050 6450 5950
Wire Wire Line
	6450 5950 7200 5950
$Comp
L C C2
U 1 1 58F6281E
P 3950 4550
F 0 "C2" H 3975 4650 50  0000 L CNN
F 1 "104uF" H 3975 4450 50  0000 L CNN
F 2 "Capacitors_THT:C_Rect_L4.0mm_W2.5mm_P2.50mm" H 3988 4400 50  0001 C CNN
F 3 "" H 3950 4550 50  0001 C CNN
	1    3950 4550
	1    0    0    -1  
$EndComp
$Comp
L C C3
U 1 1 58F6298A
P 3950 3900
F 0 "C3" H 3975 4000 50  0000 L CNN
F 1 "104pF" H 3975 3800 50  0000 L CNN
F 2 "Capacitors_THT:C_Rect_L4.0mm_W2.5mm_P2.50mm" H 3988 3750 50  0001 C CNN
F 3 "" H 3950 3900 50  0001 C CNN
	1    3950 3900
	1    0    0    -1  
$EndComp
$Comp
L Earth #PWR015
U 1 1 58F62A4A
P 3950 4700
F 0 "#PWR015" H 3950 4450 50  0001 C CNN
F 1 "Earth" H 3950 4550 50  0001 C CNN
F 2 "" H 3950 4700 50  0001 C CNN
F 3 "" H 3950 4700 50  0001 C CNN
	1    3950 4700
	1    0    0    -1  
$EndComp
$Comp
L Crystal Crystal1
U 1 1 58F62ACA
P 7400 3550
F 0 "Crystal1" H 7400 3700 50  0000 C CNN
F 1 "16kHz1" H 7400 3400 50  0000 C CNN
F 2 "Crystals:Crystal_HC49-4H_Vertical" H 7400 3550 50  0001 C CNN
F 3 "" H 7400 3550 50  0001 C CNN
	1    7400 3550
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6100 4400 6500 4400
Wire Wire Line
	6500 4400 6500 3700
Wire Wire Line
	6500 3700 7400 3700
Wire Wire Line
	6100 4300 6450 4300
Wire Wire Line
	6450 4300 6450 3400
Wire Wire Line
	6450 3400 7400 3400
$Comp
L C C0
U 1 1 58F62BF0
P 7400 3850
F 0 "C0" H 7425 3950 50  0000 L CNN
F 1 "22uF" H 7425 3750 50  0000 L CNN
F 2 "Capacitors_THT:C_Rect_L4.0mm_W2.5mm_P2.50mm" H 7438 3700 50  0001 C CNN
F 3 "" H 7400 3850 50  0001 C CNN
	1    7400 3850
	1    0    0    -1  
$EndComp
$Comp
L C C1
U 1 1 58F62C3B
P 7400 3250
F 0 "C1" H 7425 3350 50  0000 L CNN
F 1 "22uF" H 7425 3150 50  0000 L CNN
F 2 "Capacitors_THT:C_Rect_L4.0mm_W2.5mm_P2.50mm" H 7438 3100 50  0001 C CNN
F 3 "" H 7400 3250 50  0001 C CNN
	1    7400 3250
	1    0    0    -1  
$EndComp
$Comp
L Earth #PWR016
U 1 1 58F62C7C
P 7400 4000
F 0 "#PWR016" H 7400 3750 50  0001 C CNN
F 1 "Earth" H 7400 3850 50  0001 C CNN
F 2 "" H 7400 4000 50  0001 C CNN
F 3 "" H 7400 4000 50  0001 C CNN
	1    7400 4000
	1    0    0    -1  
$EndComp
$Comp
L Earth #PWR017
U 1 1 58F62CB4
P 7400 3100
F 0 "#PWR017" H 7400 2850 50  0001 C CNN
F 1 "Earth" H 7400 2950 50  0001 C CNN
F 2 "" H 7400 3100 50  0001 C CNN
F 3 "" H 7400 3100 50  0001 C CNN
	1    7400 3100
	-1   0    0    1   
$EndComp
$Comp
L Earth #PWR018
U 1 1 58F62A06
P 3950 4050
F 0 "#PWR018" H 3950 3800 50  0001 C CNN
F 1 "Earth" H 3950 3900 50  0001 C CNN
F 2 "" H 3950 4050 50  0001 C CNN
F 3 "" H 3950 4050 50  0001 C CNN
	1    3950 4050
	1    0    0    -1  
$EndComp
Wire Wire Line
	3950 3750 3950 3700
Connection ~ 3950 3700
Wire Wire Line
	3950 4400 3950 4300
Connection ~ 3950 4300
$Comp
L CONN_01X04 J1
U 1 1 58F6A7A4
P 7000 6250
F 0 "J1" H 7000 6500 50  0000 C CNN
F 1 "to_ftdi" V 7100 6250 50  0000 C CNN
F 2 "Socket_Strips:Socket_Strip_Straight_1x04_Pitch2.54mm" H 7000 6250 50  0001 C CNN
F 3 "" H 7000 6250 50  0001 C CNN
	1    7000 6250
	1    0    0    -1  
$EndComp
$Comp
L Earth #PWR019
U 1 1 58F6AA72
P 6800 6200
F 0 "#PWR019" H 6800 5950 50  0001 C CNN
F 1 "Earth" H 6800 6050 50  0001 C CNN
F 2 "" H 6800 6200 50  0001 C CNN
F 3 "" H 6800 6200 50  0001 C CNN
	1    6800 6200
	0    1    1    0   
$EndComp
$Comp
L +5V #PWR020
U 1 1 58F6AAAD
P 6800 6100
F 0 "#PWR020" H 6800 5950 50  0001 C CNN
F 1 "+5V" H 6800 6240 50  0000 C CNN
F 2 "" H 6800 6100 50  0001 C CNN
F 3 "" H 6800 6100 50  0001 C CNN
	1    6800 6100
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6800 6300 6400 6300
Wire Wire Line
	6400 6300 6400 5300
Wire Wire Line
	6400 5300 6100 5300
Wire Wire Line
	6800 6400 6300 6400
Wire Wire Line
	6300 6400 6300 5400
Wire Wire Line
	6300 5400 6100 5400
$Comp
L LED D0
U 1 1 58FB7A0E
P 5600 3150
F 0 "D0" H 5600 3250 50  0000 C CNN
F 1 "LED" H 5600 3050 50  0000 C CNN
F 2 "LEDs:LED_D3.0mm_FlatTop" H 5600 3150 50  0001 C CNN
F 3 "" H 5600 3150 50  0001 C CNN
	1    5600 3150
	1    0    0    -1  
$EndComp
$Comp
L R R0
U 1 1 58FB7A78
P 5900 3150
F 0 "R0" V 5980 3150 50  0000 C CNN
F 1 "10K" V 5900 3150 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 5830 3150 50  0001 C CNN
F 3 "" H 5900 3150 50  0001 C CNN
	1    5900 3150
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6050 3150 6100 3150
Wire Wire Line
	6100 3150 6100 3700
$Comp
L Earth #PWR021
U 1 1 58FB7B18
P 5450 3150
F 0 "#PWR021" H 5450 2900 50  0001 C CNN
F 1 "Earth" H 5450 3000 50  0001 C CNN
F 2 "" H 5450 3150 50  0001 C CNN
F 3 "" H 5450 3150 50  0001 C CNN
	1    5450 3150
	0    1    1    0   
$EndComp
$EndSCHEMATC