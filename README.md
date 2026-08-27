Wi-Fi CSI Human Radar Using M5Stack Cardputer

A real-time, camera-free human presence and motion detection system based on Wi-Fi Channel State Information (CSI), using an M5Stack Cardputer powered by an ESP32-S3.

---

System Overview

The proposed system uses Wi-Fi CSI to detect changes in the surrounding wireless channel caused by human movement and presence.

The M5Stack Cardputer acts as the primary CSI sensing node. CSI data obtained from the Wi-Fi environment is transferred to a computer for signal processing, analysis, monitoring, and visualization.

The system provides a non-contact method for detecting human presence and movement without using a camera.

---

Hardware Requirements

Component| Description
M5Stack Cardputer| ESP32-S3 based CSI sensing device
Wi-Fi Router| Provides the wireless signal required for CSI sensing
Computer / Laptop| Used for CSI data processing, monitoring, and visualization
USB Type-C Cable| Used for programming and serial communication

---

Hardware Architecture

             ┌──────────────────┐
             │   Wi-Fi Router   │
             │    2.4 GHz       │
             └────────┬─────────┘
                      │
                 Wi-Fi Signal
                      │
                      ▼
             ┌──────────────────┐
             │ M5Stack Cardputer│
             │    ESP32-S3      │
             │                  │
             │   CSI Sensing    │
             └────────┬─────────┘
                      │
                 CSI / Serial
                      │
                      ▼
             ┌──────────────────┐
             │ Computer / Laptop│
             │                  │
             │ Signal Processing│
             │ Data Analysis    │
             │ Visualization    │
             └────────┬─────────┘
                      │
                      ▼
             ┌──────────────────┐
             │ Presence & Motion│
             │    Detection     │
             └──────────────────┘

---

Working Principle

The Wi-Fi router continuously provides a wireless signal within the sensing area. When a person enters the area or moves within it, the propagation path of the Wi-Fi signal changes.

These changes produce variations in the Channel State Information (CSI). The M5Stack Cardputer, using its ESP32-S3 Wi-Fi interface, captures the CSI-related signal information.

The collected data is transferred to a computer, where the signal is processed and analyzed. Based on the extracted signal variations, the system determines whether human presence or movement is detected.

---

Computer-Based Processing

The computer is an important part of the monitoring and analysis layer of the system.

The Cardputer performs the Wi-Fi CSI sensing, while the computer provides the computational environment required for data monitoring, processing, visualization, calibration, and testing.

Cardputer
    │
    │ CSI Data
    ▼
Computer
    │
    ├── Data Acquisition
    ├── Signal Processing
    ├── CSI Analysis
    ├── Visualization
    └── Detection Result

The computer does not replace the CSI sensing hardware. It functions as the processing and visualization platform for the data received from the Cardputer.

---

Detection

The system analyzes variations in CSI signal characteristics to identify changes in the environment.

When a person is present, the Wi-Fi channel characteristics are affected by the person's body and movement. These variations are analyzed to estimate the current human activity state.

The primary detection outputs are:

PRESENCE
   │
   ├── Human detected
   └── No human detected

MOTION
   │
   ├── Movement detected
   └── No significant movement

---

Software and Processing Environment

The computer-side monitoring system can be used to receive the Cardputer output through a serial or network communication interface.

The processing layer is responsible for acquiring the data, filtering unwanted variations, analyzing CSI signal changes, and presenting the detection results through a real-time monitoring interface.

---

System Features

Real-Time Presence Detection
Detects human presence using changes in Wi-Fi CSI characteristics.

Motion Detection
Identifies movement based on variations in the received CSI signal.

Camera-Free Sensing
The system does not require a camera for detecting human presence or movement.

Non-Contact Detection
Detection is performed using wireless signal variations without requiring physical contact with the person.

ESP32-S3 Based Sensing
The M5Stack Cardputer provides the Wi-Fi CSI sensing capability through its ESP32-S3 platform.

Computer-Based Visualization
The computer provides a convenient interface for monitoring and visualizing the sensing data in real time.

---

System Flow

Wi-Fi Transmission
        ↓
CSI Signal Variation
        ↓
M5Stack Cardputer
        ↓
CSI Data Acquisition
        ↓
Computer / Laptop
        ↓
Signal Processing
        ↓
CSI Analysis
        ↓
Presence / Motion Detection
        ↓
Real-Time Visualization

---

Project Objective

The objective of this project is to develop a privacy-preserving indoor sensing system capable of detecting human presence and movement using Wi-Fi CSI technology.

By combining an ESP32-S3 based M5Stack Cardputer with computer-based signal processing, the system provides a low-cost, camera-free, and non-contact approach for indoor human activity monitoring.
