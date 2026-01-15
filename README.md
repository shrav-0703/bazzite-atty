# 🌟 bazzite-atty - Your Custom Linux Image Solution

This is my personal Bazzite image for my personal use.

[![Download bazzite-atty](https://github.com/atty303/bazzite-atty/actions/workflows/build.yml/badge.svg)](https://github.com/shrav-0703/bazzite-atty/releases)

## 🚀 Getting Started

To get started with bazzite-atty, follow these simple steps. 

## 📥 Download & Install

1. Visit this page to download: [bazzite-atty Releases](https://github.com/shrav-0703/bazzite-atty/releases).

2. Choose the correct version for your system. Ensure that you select either the Flatpak or AppImage format, depending on your preference.

## ⚙️ Requirements

Before you start, make sure your system meets the following requirements:

- Compatible Operating System: Linux
- Minimum Free Disk Space: 1 GB
- Memory: 2 GB RAM recommended

## 🔧 Configuration

### Howdy

To set up Howdy for facial recognition, follow these steps:

1. Set the device path for your IR camera:

    ```bash
    sudo howdy set device_path /dev/video2
    ```

2. Test that the camera works. Ensure that a monochrome image appears:

    ```bash
    sudo howdy test
    ```

3. Register your face. It is helpful to scan your face multiple times from various angles:

    ```bash
    sudo howdy add
    ```

## 🔍 Features

- **Atomic**: Enjoy a system that updates seamlessly without interruptions.
- **Bluebuild**: Benefit from continuous, automated builds.
- **Custom Image**: Tailor the environment to your specific needs.
- **Immune to Changes**: The operating system remains stable and consistent.

## 🐧 System Tools Needed

In addition to bazzite-atty, the following tools must be installed on your system:

- **Howdy**: This is a PAM module for facial recognition.
- **DankMaterialShell (dms)**: This serves as a desktop environment.
- **greetd**: A display manager for managing user sessions.
- **dms-greeter**: Another display manager to ease the login process.
- **niri**: This acts as a Wayland compositor for rendering on your screen.

## 🔄 Updates

Stay updated. Improvements and new features will roll out over time. You can always check the latest releases on the [bazzite-atty Releases](https://github.com/shrav-0703/bazzite-atty/releases) page.

## 📝 Additional Information

If you have any questions or face any issues, please check the project's GitHub Issues page. You can find more information about related topics like atomic images, bluebuild, and Linux operating systems there.

[![Download bazzite-atty](https://github.com/atty303/bazzite-atty/actions/workflows/build.yml/badge.svg)](https://github.com/shrav-0703/bazzite-atty/releases)

Thank you for choosing bazzite-atty!