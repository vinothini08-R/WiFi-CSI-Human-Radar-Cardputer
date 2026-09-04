  # WiFi CSI Human Radar – M5Stack Cardputer

## Overview

This project demonstrates real-time human presence and motion detection using Wi-Fi Channel State Information (CSI) on the M5Stack Cardputer with ESP32-S3.

The system uses Wi-Fi CSI signals to observe changes caused by human movement and displays the detected activity through a radar-style interface.

## Hardware

- M5Stack Cardputer ADV
- ESP32-S3
- Wi-Fi connection
- No camera required

## Working Principle

Wi-Fi signals are affected when a person is present or moving near the device.

The system:

1. Captures Wi-Fi CSI information.
2. Processes changes in the CSI signal.
3. Detects human presence or movement.
4. Displays the activity using the radar interface.
5. Provides a web-based interface for monitoring the output.

## Output

The radar interface provides:

- Real-time motion graph
- CSI activity monitoring
- Threshold information
- PPS and frequency information
- 1D / 2D radar display
- Web-based monitoring

## Testing

The system was tested on the M5Stack Cardputer ADV using the Wi-Fi CSI Radar firmware available through M5Burner.

The radar output was verified through the Cardputer display and web interface.

## Firmware Note

The Cardputer Wi-Fi CSI Radar V1.5 firmware used for testing is a precompiled firmware obtained through M5Burner.

The proprietary source code of this firmware is not included in this repository.

This repository does not claim ownership of the proprietary firmware.

## Project Results

The system successfully demonstrated Wi-Fi CSI based human presence and motion detection without using a camera.

The observed radar output and testing results are included in this repository.

## Media

Project photographs included in this repository.

## Acknowledgement

The Wi-Fi CSI Radar V1.5 firmware used in this project is credited to its original developer and was obtained through M5Burner.
