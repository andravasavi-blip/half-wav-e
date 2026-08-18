# Half-Wave Rectifier using Verilog

## Overview

This project implements a Half-Wave Rectifier using Verilog HDL.

A half-wave rectifier allows only one half of an input AC waveform to pass through while blocking the other half.

## Working Principle

The circuit works as follows:

- Positive input → Same positive output
- Negative input → Zero output

Mathematically:

Vout = Vin, when Vin > 0
Vout = 0, when Vin <= 0

## Inputs

- `vin` – 8-bit signed input signal

## Output

- `vout` – 8-bit signed rectified output

## Example

| Input | Output |
|------:|-------:|
| +5 | +5 |
| +10 | +10 |
| +15 | +15 |
| -5 | 0 |
| -10 | 0 |
| -15 | 0 |

## Files

- `half_wave_rectifier.v` – Verilog design
- `half_wave_rectifier_tb.v` – Testbench
- `README.md` – Project documentation
- `simulation_result.png` – Simulation waveform

## Software Used

- Icarus Verilog
- ModelSim / Vivado
- GTKWave

## How to Run

### Compile

```bash
iverilog -o halfwave half_wave_rectifier.v half_wave_rectifier_tb.v