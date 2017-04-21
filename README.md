## Node Serial Demo

Small Project to demo the connection between an AVR uC and a Javascript script running on node


avrdude -c usbasp -p m328p -U hfuse:w:0b11011001:m -U lfuse:w:0b11110111:m

