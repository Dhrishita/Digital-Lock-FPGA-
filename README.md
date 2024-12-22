# Digital-Lock-FPGA-

Welcome to the Digital Lock! This repository contains the source code and documentation for a digital lock developed as part of a university project.

## Table of Contents

- [Introduction](#introduction)
- [Features](#features)
- [Hardware Requirements](#hardwarerequirements)
- [Software Requirements](#softwarerequirements)
- [Installation](#installation)
- [Hardware Setup](#hardwaresetup)
- [Working](#Working)
- [Contact](#contact)

## Introduction

This project aims to design, build and test a digital lock using FPGA. An electronic lock is a digital combinational circuit that opens (output goes high) only for certain combinations of the digital inputs. In this project, we designed a 4-digit electronic lock that operates for two code combinations.

## Features

- **4-digit Code Lock:** The lock uses a 4-digit code, allowing for 16 different input combinations.
- **Multiple Code Combinations:** The lock operates for two specific code combinations.
- **LED Indicators:** The system uses green and red LEDs to indicate successful or failed password entries.
- **Alarm System:** After three unsuccessful attempts, an alarm is triggered.

## Hardware Requirements
- FPGA Development Board
- LEDs for output indicators
- Input buttons or switches for entering the code

## Software Requirements

- VHDL/Verilog for programming the FPGA
- Quartus/Xilinx Vivado or any compatible FPGA development software

## Installation

1. Clone the repository:
   ```bash
   git clone https://github.com/Dhrishita/digital-lock-fpga.git

2. Open the project in your FPGA development software (e.g., Quartus).

3. Synthesize and implement the design.
   
4. Program the FPGA with the generated bitstream.
   
## Hardware Setup

1. Power on the FPGA board.

2. Use the input buttons or switches to enter the 4-digit code.

3. Observe the LEDs for feedback:
   - Green LED indicates a correct password entry.
   - Red LED indicates an incorrect password entry.
   - Three consecutive incorrect entries will trigger the alarm (3 red LEDs).

## Working

1. **Initial Setup:**
   - Input set to '1111': Password doesn't match, counter becomes 1.

2. **First Code Check:**
   - Input set to '0111': Password matches, green LED (led[0]) becomes 1, red LED (led[1]) becomes 0, and the counter is reset.

3. **Second Code Check:**
   - Input set to '1011': Password doesn't match, counter becomes 1.

4. **Third Code Check:**
   - Input set to '0001': Password doesn't match, counter becomes 2.

5. **Fourth Code Check:**
   - Input set to '1100': Password doesn't match, counter becomes 3, triggering the alarm (3 red LEDs).

<img width="639" alt="Screenshot 2024-08-03 at 2 16 35 PM" src="https://github.com/user-attachments/assets/c04c87e4-75e8-4a61-976a-232285c0207e">

<img width="647" alt="Screenshot 2024-08-03 at 2 17 01 PM" src="https://github.com/user-attachments/assets/b191b006-8434-498e-8062-5ced32b3d11e">


## Contact
If you have any questions or suggestions, feel free to open an issue or contact:
Dhrishita Parve: dhrishitap18@gmail.com
