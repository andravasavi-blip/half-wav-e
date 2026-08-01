# Half Wave Rectifier using Verilog HDL

## Overview
This project implements a digital model of a Half Wave Rectifier using Verilog HDL.

A half-wave rectifier allows only the positive half of the input signal to pass while blocking the negative half.

## Features

- Verilog HDL implementation
- Testbench included
- Simulation results
- Easy to understand

## Files

| File | Description |
|------|-------------|
| half_wave_rectifier.v | Verilog source code |
| half_wave_rectifier_tb.v | Testbench |
| waveform.vcd | Simulation waveform |
| simulation_results.png | Waveform screenshot |

## Truth Table

| Input | Output |
|-------|--------|
| Positive | Positive |
| Negative | 0 |

## Simulation

Compile:

```bash
iverilog -o rectifier half_wave_rectifier.v half_wave_rectifier_tb.v
```

Run:

```bash
vvp rectifier
```

Open waveform:

```bash
gtkwave waveform.vcd
```

## Expected Output

```
Input : -50 → Output : 0
Input : -20 → Output : 0
Input : 20  → Output : 20
Input : 50  → Output : 50
```

## Author

Your Names