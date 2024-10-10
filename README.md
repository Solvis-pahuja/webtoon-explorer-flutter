# webtoon_solvis_assignment
img<src=''>
A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

# Flutter Installation Guide

This guide will help you install Flutter on your local machine. Flutter is an open-source UI software development toolkit created by Google for building natively compiled applications for mobile, web, and desktop from a single codebase.

## Prerequisites

- A computer running Windows, macOS, or Linux.
- Git (if you want to use the Git version of Flutter).

## Installation Steps

### 1. System Requirements

#### Windows
- Operating Systems: Windows 10 (64-bit)
- Disk Space: 1.64 GB (does not include space for IDE/tools).
- Tools: PowerShell 5.0 or newer (this is pre-installed with Windows 10), Git for Windows.

#### macOS
- Operating Systems: macOS (64-bit).
- Disk Space: 2.8 GB (does not include space for IDE/tools).
- Tools: Git.

#### Linux
- Operating Systems: Ubuntu 20.04 or later (64-bit).
- Disk Space: 600 MB (does not include space for IDE/tools).
- Tools: Git.

### 2. Download Flutter SDK

#### For Windows
1. Download the Flutter SDK from the [Flutter official website](https://flutter.dev/docs/get-started/install/windows).
2. Extract the downloaded zip file to a desired location, e.g., `C:\src\flutter`.

#### For macOS
1. Download the Flutter SDK from the [Flutter official website](https://flutter.dev/docs/get-started/install/macos).
2. Extract the downloaded zip file to a desired location, e.g., `$HOME/flutter`.

#### For Linux
1. Download the Flutter SDK from the [Flutter official website](https://flutter.dev/docs/get-started/install/linux).
2. Extract the downloaded tar file to a desired location, e.g., `$HOME/flutter`.

### 3. Update Your Path

#### Windows
1. Search for "Environment variables" in the Start menu.
2. Click on "Edit the system environment variables."
3. In the System Properties window, click on "Environment Variables."
4. Under "User variables," find the `Path` variable and click "Edit."
5. Add the full path to the `flutter\bin` directory (e.g., `C:\src\flutter\bin`).

#### macOS/Linux
Add the following line to your `.bashrc`, `.bash_profile`, or `.zshrc` file:

```bash
export PATH="$PATH:`<PATH_TO_FLUTTER_DIRECTORY>/flutter/bin`"
