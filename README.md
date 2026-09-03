               # Wi-Fi CSI Human Radar Using M5Stack Cardputer

A camera-free human presence and motion sensing system using
Wi-Fi Channel State Information (CSI) with an M5Stack Cardputer
based on the ESP32-S3.

---

## Project Overview

This project explores the use of Wi-Fi Channel State Information
(CSI) for detecting changes in the wireless environment caused
by human presence and movement.

The M5Stack Cardputer, based on the ESP32-S3, is used as the
CSI sensing platform. CSI-related data can be acquired and
processed for human presence and motion analysis.

The project also includes computer-side tools for CSI data
acquisition, processing, monitoring, calibration, testing,
and visualization.

The system provides a camera-free and non-contact approach
for indoor human presence and motion sensing.

---

## Hardware Requirements

| Component | Description |
|-----------|-------------|
| M5Stack Cardputer ADV | ESP32-S3 based CSI sensing device |
| Wi-Fi Router | Provides the wireless signal required for CSI sensing |
| Computer / Laptop | Used for CSI data processing, monitoring and visualization |
| USB Type-C Cable | Used for programming and serial communication |

---

## Hardware Architecture

```text
             ┌──────────────────┐
             │   Wi-Fi Router   │
             │     2.4 GHz      │
             └────────┬─────────┘
                      │
                 Wi-Fi Signal
                      │
                      ▼
             ┌──────────────────┐
             │ M5Stack Cardputer│
             │     ESP32-S3     │
             │                  │
             │   CSI Sensing    │
             └────────┬─────────┘
                      │
                 CSI Data
                      │
                      ▼
             ┌──────────────────┐
             │ Computer / Laptop│
             │                  │
             │ Data Acquisition │
             │ Signal Processing│
             │ CSI Analysis     │
             │ Visualization    │
             └────────┬─────────┘
                      │
                      ▼
             ┌──────────────────┐
             │ Presence & Motion│
             │     Analysis     │
             └──────────────────┘


---

Working Principle

Wi-Fi Channel State Information (CSI) describes characteristics of a wireless channel between Wi-Fi transmission and reception.

When a person enters the sensing area or moves within the environment, the wireless propagation path can change.

These environmental changes can produce variations in the measured CSI data.

The ESP32-S3 based M5Stack Cardputer is used as the sensing device. The CSI-related data can then be acquired, monitored and processed using computer-side tools.

The processed CSI variations are analyzed to determine changes associated with human presence and movement.

Wi-Fi Signal
     ↓
Wireless Channel
     ↓
Human Presence / Movement
     ↓
CSI Variation
     ↓
CSI Data Acquisition
     ↓
Signal Processing
     ↓
Presence / Motion Analysis


---

Computer-Based Processing

The computer acts as the processing, monitoring and visualization platform for the CSI data.

The Cardputer provides the ESP32-S3 based sensing capability, while the computer can be used for data acquisition, parsing, signal processing, analysis, calibration and visualization.

M5Stack Cardputer
        │
        │ CSI Data
        ▼
Computer / Laptop
        │
        ├── CSI Data Acquisition
        ├── CSI Data Parsing
        ├── Signal Processing
        ├── CSI Analysis
        ├── Calibration
        ├── Monitoring
        └── Visualization


---

Detection

The system analyzes changes in CSI characteristics to identify variations in the wireless environment.

Presence Detection

PRESENCE
   │
   ├── Human detected
   └── No human detected

Motion Detection

MOTION
   │
   ├── Movement detected
   └── No significant movement

Detection performance can vary depending on device placement, wireless interference, multipath propagation, distance, environmental changes, CSI noise and calibration conditions.


---

Software and Processing Environment

The project uses ESP32-S3 based firmware components together with computer-side tools for CSI data acquisition and analysis.

The processing layer supports CSI-related data acquisition, parsing, processing, monitoring and visualization through serial or network communication interfaces.

Software Components

ESP32-S3 / M5Stack Cardputer firmware

Wi-Fi CSI data acquisition

CSI data parsing

CSI signal processing

Radar evaluation

Serial communication

Network communication

Python-based CSI tools

Web-based monitoring

Real-time visualization



---

Technologies Used

M5Stack Cardputer ADV

ESP32-S3

Wi-Fi Channel State Information (CSI)

ESP-IDF

C

Python

HTML

JavaScript

Serial Communication

TCP / UDP Communication

Signal Processing



---

System Features

Human Presence Detection

Detects changes in the wireless environment associated with human presence using CSI characteristics.

Motion Detection

Analyzes CSI variations associated with human movement.

Camera-Free Sensing

The system does not require a camera for human presence and motion sensing.

Non-Contact Detection

The sensing process does not require physical contact with the person.

ESP32-S3 Based Sensing

The M5Stack Cardputer provides an ESP32-S3 based platform for Wi-Fi CSI sensing.

Computer-Based Visualization

Computer-side tools provide monitoring, processing and visualization of CSI-related data.

Low-Cost Hardware

The system uses an ESP32-S3 based development platform and a standard Wi-Fi router.


---

System Flow

Wi-Fi Transmission
        ↓
Wireless Channel
        ↓
CSI Signal Variation
        ↓
M5Stack Cardputer
        ↓
CSI Data Acquisition
        ↓
Computer / Laptop
        ↓
CSI Data Parsing
        ↓
Signal Processing
        ↓
CSI Analysis
        ↓
Presence / Motion Analysis
        ↓
Visualization


---

Repository Contents

ESP32 / Firmware Components

The repository contains firmware and supporting source files for CSI-related sensing and processing.

app_main.c
app_gpio.c
app_gpio.h
app_ifft.c
app_ifft.h
app_uart.c
app_uart.h
csi_commands.h
radar_evaluate.c
wifi_cmd.c
system_cmd.c
ping_cmd.c
led_control.c
led_control.h

Python Tools

Computer-side CSI tools include:

csi_data_read_parse.py
esp_csi_tool.py
esp_csi_tool_gui.py

These tools support CSI data acquisition, parsing, processing and monitoring.

Web Monitoring and Visualization

The repository also contains:

csi_viewer.html
web_serial_monitor.html
web_serial_monitor.c
web_serial_monitor.h

These components are used for browser-based monitoring and visualization of CSI-related data.

Build and Configuration Files

CMakeLists.txt
partitions.csv
requirements.txt
check_idf_version.sh
get_idf_ver.sh
format.sh


---

Cardputer Wi-Fi CSI Radar V1.5

The Cardputer Wi-Fi CSI Radar V1.5 firmware was tested using the existing firmware available through M5Burner.

The V1.5 firmware is developed by Zeloksa and is distributed as a precompiled firmware through M5Burner.

The proprietary source code of the V1.5 firmware is not included in this repository.

This repository does not claim ownership of or reproduce the proprietary V1.5 firmware source code.

The V1.5 firmware is treated as an external firmware component used for testing the Cardputer-based Wi-Fi CSI radar capability.


---

Project Development

The project includes the following development and testing activities:

1. ESP32-S3 based Cardputer setup


2. Wi-Fi CSI sensing configuration


3. CSI data acquisition


4. CSI data parsing


5. CSI signal analysis


6. Signal processing


7. Communication between sensing and processing systems


8. Computer-side monitoring


9. Web-based visualization


10. Human presence and motion analysis


11. Calibration and testing




---

Project Objective

The objective of this project is to explore a low-cost, camera-free and non-contact approach for indoor human presence and motion sensing using Wi-Fi CSI technology.

By combining an ESP32-S3 based M5Stack Cardputer with CSI data acquisition, signal processing and computer-based visualization, the project demonstrates the potential of Wi-Fi signals for human sensing applications.


---

Advantages

Camera-free sensing

Non-contact operation

Privacy-friendly approach

Low-cost hardware

ESP32-S3 based implementation

Real-time CSI monitoring

Computer-based signal analysis

Expandable signal processing architecture



---

Limitations

The performance of Wi-Fi CSI based sensing can be affected by:

Wi-Fi interference

Multipath propagation

Router and Cardputer placement

Distance between devices

Environmental changes

Human movement characteristics

CSI noise

Calibration conditions


Therefore, proper device placement and calibration are important for reliable sensing.


---

Project Status

The following components have been tested or implemented:

ESP32-S3 / M5Stack Cardputer CSI sensing

CSI data acquisition

CSI data parsing

CSI signal processing

Radar evaluation components

Computer-side CSI tools

Web-based monitoring

Visualization

Cardputer Wi-Fi CSI Radar V1.5 testing using existing M5Burner firmware



---

Important Note

The Cardputer Wi-Fi CSI Radar V1.5 firmware used during testing is an existing precompiled firmware provided through M5Burner.

Its proprietary source code is not included in this repository.

The source files in this repository are maintained separately for the project's CSI acquisition, processing, communication and visualization work.


---

Future Improvements

Possible future improvements include:

Improved CSI noise filtering

Better calibration methods

Improved presence detection stability

Improved motion classification

Multiple sensing nodes

Indoor location estimation

2D / 3D visualization

Machine-learning-based activity classification

Long-term CSI data collection and analysis



---

Conclusion

This project demonstrates the use of Wi-Fi Channel State Information as a sensing mechanism for camera-free human presence and motion detection.

The M5Stack Cardputer provides an ESP32-S3 based platform for CSI sensing, while computer-side tools provide data processing, analysis, monitoring and visualization capabilities.

The project provides a foundation for further development of low-cost and privacy-friendly wireless sensing systems.


---

Disclaimer

This project is intended for educational, experimental and research purposes.

Detection results may vary depending on the wireless environment, hardware configuration, device placement and signal processing parameters.
