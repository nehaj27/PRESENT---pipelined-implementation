Pipelined implementation of PRESENT

The main goal of the design is to achieve a high throughput rate.

This straight forward approach does not achieve a high maximum operat-
ing frequency.

This results from the long critical path. The input signal has
to propagate through all XOR and S-Box gates. The more gates belong to the
path the higher is the resulting capacitance to be switched. So the time pe-
riod for a switching event is stretched.

To shorten the critical path, flip-flops as pipeline stages were installed after each P-Box.

This increases the chip area and power consumption, but on the other hand the
maximum operating frequency can be raised significantly.
