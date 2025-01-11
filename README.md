
# mining_monitoring

Synapsis

## Getting Started

recommended setup to run code

> [✓] Flutter (Channel stable, 3.27.1, on macOS 14.2 23C64 darwin-arm64, locale en-ID)
• Flutter version 3.27.1 on channel stable at /Users/ekhiw/flutter
• Upstream repository https://github.com/flutter/flutter.git
• Framework revision 17025dd882 (4 weeks ago), 2024-12-17 03:23:09 +0900
• Engine revision cb4b5fff73
• Dart version 3.6.0
• DevTools version 2.40.2
[✓] Android Studio (version 2024.2)
• Android Studio at /Applications/Android Studio.app/Contents
• Flutter plugin can be installed from:
🔨 https://plugins.jetbrains.com/plugin/9212-flutter
• Dart plugin can be installed from:
🔨 https://plugins.jetbrains.com/plugin/6351-dart
• Java version OpenJDK Runtime Environment (build 21.0.3+-79915917-b509.11)

run this to generate riverpod,getx, and freezed code

``` dart run build_runner build --delete-conflicting-outputs ```

# Task
- [ ] Slicing UI
    - [ ] Register device wizard
        - [ ] Progress bar state
        - [ ] Waiting for activation state
    - [ ] Login
        - [x] Login form normal state
        - [x] Login form error state
        - [x] Login form success state
    - [ ] Home/dashboard page
        - [ ] Top status bar
        - [ ] Machine indicator display
        - [ ] Activity drawer
        - [ ] Bottom navigation and emergency button
- [ ] Functionality
    - [ ] General
        - [x] Setup project using riverpod and getX
        - [ ] Setup API call using Dio and intercept using Alice
        - [ ] Setup generic api response
    - [ ] Register device wizard
        - [ ] Check device registration status
        - [ ] Connect  and subscribe to the WebSocket device channel
        - [ ] API integration for device registration
        - [ ] Handle navigation to Waiting Activation Page based on device status in API and Websocket data
        - [ ] Handle navigation to Login Page based on status in API and Websocket data
    - [ ] Login
        - [ ] API integration for login