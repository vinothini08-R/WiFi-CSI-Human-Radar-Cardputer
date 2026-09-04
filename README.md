  # WiFi CSI Human Radar – M5Stack Cardputer ADV

Real-time human presence and motion detection using Wi-Fi Channel State Information (CSI) on the M5Stack Cardputer ADV with ESP32-S3.

## Project Overview

This project uses Wi-Fi CSI signals to detect changes in the surrounding environment caused by human movement and presence.

The M5Stack Cardputer ADV is used as the primary sensing and display device.

## Hardware

- M5Stack Cardputer ADV
- ESP32-S3
- 2.4 GHz Wi-Fi network
- Computer/Laptop for monitoring and visualization

## System Flow

M5Stack Cardputer ADV
        ↓
ESP32-S3 Wi-Fi CSI
        ↓
CSI Data Acquisition
        ↓
CSI Signal Processing
        ↓
Motion Detection
        ↓
Human Presence Detection
        ↓
Cardputer Display / Web Visualization

## Main Features

- Wi-Fi CSI data acquisition
- RSSI monitoring
- CSI signal analysis
- Motion detection
- Human presence detection
- Real-time visualization
- Cardputer-based operation
- Web-based monitoring

## Firmware

The repository contains the ESP-IDF based firmware source code used for CSI acquisition and signal processing.

The project uses C source files such as `app_main.c` and related CSI/radar processing modules.

> Note: The M5Burner RADAR V1.5 firmware is a precompiled firmware used for testing. Its proprietary source code is not part of this repository.

## Output

The system provides real-time radar/CSI information including:

- Wi-Fi connection status
- RSSI
- CSI activity
- Motion status
- Presence status
- CSI/radar signal visualization

## Project Structure

```text
firmware/
├── main/
│   ├── app_main.c
│   ├── radar_evaluate.c
│   ├── app_ifft.c
│   └── wifi_cmd.c

web/
├── csi_viewer.html
└── web_serial_monitor.html

tools/
└── Python utilities

data/
└── Sample CSI data

docs/
└── Project documentation                          





