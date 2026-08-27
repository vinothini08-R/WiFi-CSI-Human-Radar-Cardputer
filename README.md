Wi-Fi CSI Human Radar using M5Stack Cardputer

A real-time Human Presence and Motion Detection system using Wi-Fi Channel State Information (CSI), implemented with an M5Stack Cardputer based on the ESP32-S3.

The system uses changes in Wi-Fi signal characteristics caused by human movement to detect whether a person is present and whether there is motion in the sensing environment.

🚀 Project Overview

Traditional human detection systems commonly use cameras, PIR sensors, ultrasonic sensors, or other dedicated sensing hardware. This project explores a camera-free sensing approach using Wi-Fi CSI.

The M5Stack Cardputer (ESP32-S3) acts as the CSI sensing device. It captures CSI information from a 2.4 GHz Wi-Fi signal and monitors variations in the received signal caused by changes in the surrounding environment.

A computer/laptop is used as the monitoring and processing system. The CSI data obtained from the Cardputer is transferred to the computer, where the data can be processed, monitored, and visualized in real time.

🧩 System Architecture

        2.4 GHz Wi-Fi Router
                 │
                 │ Wi-Fi Signal
                 ▼
        ┌──────────────────┐
        │  M5Stack         │
        │  Cardputer       │
        │  ESP32-S3        │
        └────────┬─────────┘
                 │
                 │ CSI Data
                 ▼
        ┌──────────────────┐
        │ Computer /       │
        │ Laptop           │
        │                  │
        │ Data Processing  │
        │ & Visualization  │
        └────────┬─────────┘
                 │
                 ▼
       Human Presence / Motion
             Detection

⚙️ Working Principle

The system operates based on Channel State Information (CSI) obtained from the Wi-Fi communication channel.

CSI contains information about how a wireless signal is affected while travelling between the transmitter and receiver. When a person enters the sensing area or moves within it, the wireless propagation path changes.

These changes can produce variations in the CSI measurements.

The basic processing flow is:

1. The 2.4 GHz Wi-Fi router provides the wireless signal.
2. The M5Stack Cardputer receives the Wi-Fi signal and collects CSI information.
3. CSI measurements are continuously monitored for signal variations.
4. The collected CSI data is sent to the computer/laptop.
5. The computer processes and monitors the CSI measurements.
6. Changes in the signal are analyzed to identify human presence and motion.
7. The detected activity can be displayed as real-time output for monitoring and demonstration.

🖥️ Role of the Computer

The computer is an important part of the monitoring and analysis pipeline.

The Cardputer performs the Wi-Fi CSI sensing, while the computer is used for data handling, processing, monitoring, and visualization.

The computer is used for:

- Receiving CSI/output data from the Cardputer
- Monitoring real-time CSI measurements
- Processing signal variations
- Applying the detection logic
- Displaying presence and motion status
- Visualizing the collected data for analysis
- Debugging and evaluating system performance

This separation allows the Cardputer to focus on wireless sensing, while the computer provides greater processing capability for real-time analysis and visualization.

🔧 Hardware Requirements

- M5Stack Cardputer – ESP32-S3
- 2.4 GHz Wi-Fi Router
- Computer / Laptop
- USB cable for programming and data communication

No camera, PIR sensor, ultrasonic sensor, or dedicated motion sensor is required for the basic detection system.

💻 Software / Development Environment

- Arduino IDE / ESP32 development environment
- ESP32-S3 support
- Serial communication for monitoring
- Computer-based data processing and visualization
- Wi-Fi CSI processing and analysis

📊 CSI Data Processing

The CSI measurements contain signal information that can change when the wireless propagation environment changes.

The system observes CSI variations over time and uses these variations to determine whether significant activity is occurring.

A simplified processing pipeline is:

CSI Acquisition
      ↓
Raw CSI Data
      ↓
Signal Monitoring
      ↓
Noise / Variation Analysis
      ↓
Motion Detection Logic
      ↓
Presence / Motion Status
      ↓
Computer Visualization

The detection approach is based on changes in the Wi-Fi channel rather than image-based recognition. Therefore, the system can detect activity without requiring a camera.

✨ Key Features

- 📡 Wi-Fi CSI-based sensing
- 👤 Real-time human presence detection
- 🚶 Human motion detection
- 📷 Camera-free sensing
- ⚡ ESP32-S3 based implementation
- 💻 Computer-based processing and visualization
- 📊 Real-time CSI monitoring
- 🔌 Low-cost hardware implementation
- 📶 Uses standard 2.4 GHz Wi-Fi signals

🎯 Applications

This type of Wi-Fi sensing technology can be explored for:

- Smart room monitoring
- Human presence detection
- Occupancy monitoring
- Motion-aware environments
- Smart home applications
- Privacy-friendly sensing
- Wireless sensing research
- Human activity monitoring

⚠️ Limitations

The current implementation focuses primarily on presence and motion detection based on CSI variations.

CSI is sensitive to environmental changes, multipath effects, Wi-Fi traffic, and noise. Therefore, the detection performance can vary depending on the room layout, router position, Cardputer position, and surrounding objects.

The current system should be considered a Wi-Fi sensing prototype, rather than a precise indoor positioning or human identification system.

🔮 Future Improvements

Possible future improvements include:

- Machine-learning-based activity classification
- Improved noise filtering
- Multi-device CSI sensing
- Multi-person detection
- More advanced real-time visualization
- Indoor localization
- Improved accuracy and stability
- Automatic calibration for different environments

📁 Project Structure

WiFi-CSI-Human-Radar-Cardputer/
│
├── src/
│   └── CSI sensing and detection code
│
├── README.md
│
└── ...

🎥 Demo

A demonstration video shows the M5Stack Cardputer running the Wi-Fi CSI sensing system and the corresponding output being monitored on a computer.

📌 Summary

This project demonstrates how an M5Stack Cardputer with ESP32-S3 can be used as a compact Wi-Fi CSI sensing device for real-time human presence and motion detection.

The 2.4 GHz Wi-Fi signal acts as the sensing medium, the Cardputer captures CSI variations, and the computer handles monitoring, processing, and visualization of the sensing data.

The project demonstrates a low-cost and camera-free approach to wireless human sensing using commercially available hardware.
