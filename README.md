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

The project also includes computer-based tools for CSI data
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
