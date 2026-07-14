# Sequential Memory Elements: Flip-Flops

> [!TIP]
> **Overview:** This directory contains the implementation, schematic captures, symbol generation, and verification files for fundamental 1-bit memory storage elements. These circuits form the absolute baseline of sequential digital design, establishing a solid understanding of state retention, clock synchronization, and race-around condition resolution before advancing to complex multi-bit registers and counters.

## The Evolution of Sequential Memory Logic

Unlike combinational logic, sequential logic has "memory." A flip-flop is a fundamental digital circuit capable of storing exactly 1 bit of data synchronized by a clock signal. The components in this library represent the architectural evolution of solving memory stability issues at the gate level.

### 1. SR Flip-Flop: The Basic Cell (and its Flaw)
The Set-Reset (SR) flip-flop is the initial building block of memory. It allows a system to "Set" a bit to 1, or "Reset" it to 0. 
*   **The Flaw:** It suffers from a critical logic failure. If a system attempts to set and reset the flip-flop at the exact same time (S=1, R=1), the circuit enters an invalid, unpredictable state, which can crash a digital system.

### 2. Master-Slave JK Flip-Flop (MSJK): The Architecture Solution
To fix the SR's invalid state, the JK flip-flop was created, which "toggles" the output instead of crashing when both inputs are high. However, standard level-triggered JK circuits suffer from a hardware flaw called the **"race-around condition"**—if the clock stays high for too long, the output flips back and forth rapidly and uncontrollably.
*   **The Solution:** The Master-Slave architecture solves this by cascading two flip-flops. The "Master" reads the input on the rising edge of the clock, and the "Slave" securely locks and passes it to the output only on the falling edge. This provides completely stable memory storage without timing hazards.

### 3. D Flip-Flop: Deriving the Data Tracker
With the timing hazards solved by the MSJK architecture, the next step was building a component strictly for transferring data without the risk of accidentally triggering the toggle state. 
*   **The Derivation:** By deriving the D (Data) flip-flop directly from the MSJK and ensuring the two inputs are always opposites (using an inverter), all alternate states are eliminated. The output strictly captures whatever binary value is on the data line exactly when the clock ticks. It is the perfect, stable component for building **Shift Registers**.

### 4. T Flip-Flop: Deriving the Toggler
While the D flip-flop isolates data capture, digital systems also need a reliable way to count. 
*   **The Derivation:** The T (Toggle) flip-flop is also derived from the robust MSJK architecture. By tying the J and K inputs together, its sole purpose becomes flipping its stored state (0 to 1, or 1 to 0) on every clock pulse. Because it perfectly cuts the clock frequency in half, it is the foundational component used to build **Digital Counters**.

---

## Design & Verification Artifacts

*   **Schematics (`.sch`):** Visual gate-level layouts mapping clock and data inputs to storage outputs.
*   **Verilog HDL (`.v`):** Code-based implementations of the sequential logic.
*   **Symbols (`.sym`):** Custom-generated component blocks for modular reuse in higher-level architectures.
*   **Waveforms:** Simulation traces verifying that each flip-flop matches its theoretical state table under timing analysis.

## Tools Used

*   **Simulation & Capture:** Xilinx ISE Design Suite

---

## Implemented Flip-Flops & Truth Tables

### 01. SR FLIP-FLOP

**Description:** The foundational Set-Reset memory element. Output responds to active HIGH inputs on the Set (S) and Reset (R) lines. 
**Characteristic Equation:** Q(n+1) = S + R'Q(n)

| S | R | Q(n+1) | State |
| :---: | :---: | :---: | :--- |
| 0 | 0 | Q(n) | No Change |
| 0 | 1 | 0 | Reset |
| 1 | 0 | 1 | Set |
| 1 | 1 | X | Invalid |

<img width="1920" height="1005" alt="SR_IMPROVED" src="https://github.com/user-attachments/assets/e3e4882f-5719-4459-87ec-b7fcb04dce06" />
<img width="1920" height="1005" alt="sim_sr" src="https://github.com/user-attachments/assets/e6304473-bde0-4bd9-b765-3ccd2a9efb95" />




### 02. MASTER-SLAVE JK FLIP-FLOP (MSJK)

**Description:** A cascaded dual flip-flop architecture (master and slave) designed specifically at the gate-level to eliminate the race-around condition found in standard level-triggered circuits. 
**Characteristic Equation:** Q(n+1) = JQ'(n) + K'Q(n)

| J | K | Q(n+1) | State |
| :---: | :---: | :---: | :--- |
| 0 | 0 | Q(n) | No Change |
| 0 | 1 | 0 | Reset |
| 1 | 0 | 1 | Set |
| 1 | 1 | Q'(n) | Toggle |

<img width="1920" height="1005" alt="msjk_sch" src="https://github.com/user-attachments/assets/44d492b0-d736-486c-a56a-54fe92721ab4" />
<img width="1920" height="1005" alt="msjk_sch_sim" src="https://github.com/user-attachments/assets/8163fed7-715b-4906-83d6-b50e4160d0de" />
<img width="1920" height="1005" alt="rtl_msjk" src="https://github.com/user-attachments/assets/474977f3-7efa-4f4b-889b-0a7a633a688e" />
<img width="1920" height="1005" alt="ver_MSJk" src="https://github.com/user-attachments/assets/bbf7f42b-4a01-41bd-91de-6a2d8ec9a43f" />



### 03. D FLIP-FLOP

**Description:** Data/Delay memory element derived directly from the MSJK architecture. It reliably captures the value of the D-input at the clock edge, preventing invalid states. 
**Characteristic Equation:** Q(n+1) = D

| D | Q(n+1) | State |
| :---: | :---: | :--- |
| 0 | 0 | Reset |
| 1 | 1 | Set |

<img width="1920" height="1005" alt="d_sch" src="https://github.com/user-attachments/assets/f2a7fe93-cdcd-4f82-816e-8e02ecd30a73" />
<img width="1920" height="1005" alt="ver_d_ff" src="https://github.com/user-attachments/assets/05c15cfe-1d79-4dfd-9060-7ec220640226" />
<img width="1920" height="1005" alt="sim_dff" src="https://github.com/user-attachments/assets/3276f083-6c73-4088-b103-dba722451369" />


### 04. T FLIP-FLOP

**Description:** Toggle memory element, also derived from the robust MSJK architecture. Output toggles its state on each active clock edge when the T input is held HIGH. 
**Characteristic Equation:** Q(n+1) = TQ'(n) + T'Q(n)

| T | Q(n+1) | State |
| :---: | :---: | :--- |
| 0 | Q(n) | No Change |
| 1 | Q'(n) | Toggle |

<img width="1920" height="1005" alt="t_sch" src="https://github.com/user-attachments/assets/ada64fba-19ff-4bc5-a70d-72eb42bac9a1" />
<img width="1920" height="1005" alt="sim_t_sch" src="https://github.com/user-attachments/assets/629b04c3-0ec9-402d-bad4-b83dbca2e4ab" />

