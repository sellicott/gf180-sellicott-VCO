<!---

This file is used to generate your project datasheet. Please fill in the information below and delete any unused
sections.

You can also include images in this folder and reference them in the markdown. Each image must be less than
512 kb in size, and the combined size of all images must be less than 1 MB.
-->

## How it works
I have my leftover slot from TT09 that I need to use up. I could just submit my old design again,
but that's incredibly boring. I've had the idea of implementing a PCIe/USB-3.0 SERDES stuck in my
head for a while and it seems almost feasible on Tiny Tapeout.

This project is for a 4-element differential ring oscillator targeting a frequency of > 1.25GHz.
We want the tuning range to be bewteen 1.0GHz - 2.0GHz ish (maybe a bit smaller).

For PCIe, The 2.5GT/s gets converted to 16-bits at 125MHz
20-bits -> 8/10 decoder -> 16-bits. That's just DDR on the 62.5MHz input frequency

Serialized outputs are sent to both the uo pins and uio pins with double-data-rates.

## How to test

Setup the config registers using the SPI (set the SPI mode for either write-only SPI, or both
read/write SPI). Write only SPI only uses the ui pins, leaving uio for data outputs. Read/write
mode uses the uio bus for the SPI and cuts the number of outputs in half.

## External hardware

List external hardware used in your project (e.g. PMOD, LED display, etc), if any
Really need another FPGA with a 2.5GT/s transmitter.
