# Launch Darkly Feature Management Test iOS
Testing Feature Management in Launch Darkly

## Summary
This app shows capabilities of Launch Darkly Feature Management

### How to Use

Launch Darkly Guide
- Login to your LD console and create a new project
- Go to Settings -> Projects -> Your Project -> Copy Mobile Key (your preferred environment)
- Create a showBanner feature flag
  - Open the feature flag and go to "Target Users Who Matches these Rules" and add "name" as an attribute and opeator as "starts with" and the value as "LD"

Xcode Guide
- Clone this repo to your local machine
- Open LDFMDemo.xcodeproj with Xcode
- Copy your project's mobile key and replace it on Line # 19 in ViewController.swift
- Copy the feature flag key from your LD console and replace the flag key on line # 46 in ViewController.swift
- Use iPhone12 as your emulator for best results

### How to Run
- If you want to see LaunchDarkly banner then start your User's key with "LD" on Line # 20 in ViewController.swift



