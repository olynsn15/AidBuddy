# 🚑 AidBuddy

**AidBuddy – Your Emergency First Aid Companion**

AidBuddy is a life-saving mobile app designed to assist in emergency situations by providing instant, reliable first aid information. Whether it's a minor injury or a critical medical emergency, AidBuddy guides users with step-by-step instructions to ensure a quick and effective response before professional help arrives.

> Built by Team Hira during **iOS Foundation Cohort 19**  
> 📱 _iOS Foundation is a month-long, challenge-driven course designed specifically for undergraduate students by Apple Developer Academy @BINUS._

<br>

## ✨ Features

- 🩹 Emergency First Aid Guide  
- 🗣️ Voice-Assisted Instructions  
- 📞 Emergency Contact Integration  
- 📰 Health Articles and Tips  

<br>

## 🎨 Hi-Fi Prototype

View the final high-fidelity UI design on Figma:  
👉 [AidBuddy Final HiFi Prototype](https://www.figma.com/file/nc5cisOSToFunap3ocgYdo/HiFi-(PUTIH)?type=design&node-id=1%3A1813&mode=design&t=Eej8lNSbmSNb5DJa-1)

<br><br>

## 🛠️ Tech Stack

![Swift](https://img.shields.io/badge/Swift-F54A2A?logo=swift&logoColor=white)
![SwiftUI](https://img.shields.io/badge/SwiftUI-007AFF?style=for-the-badge&logo=swift&logoColor=white)
![Figma](https://img.shields.io/badge/Figma-F24E1E?logo=figma&logoColor=white)

<br>

## 📁 Project Structure

```
AidBuddy/
├── Home Screen.xcodeproj/ # Xcode project file
├── Home Screen/
│ ├── Detail Screen/
│ │ ├── BackButtonView.swift
│ │ └── DetailView.swift
│ ├── Preview Content/
│ │ ├── Assets.xcassets
│ │ └── Preview Assets.xcassets
│ ├── Tab Bar Component/
│ │ ├── AidKit Component/
│ │ │ ├── AidKitCardView.swift
│ │ ├── Article Component/
│ │ │ └── ArticleDetailView.swift
│ ├── Home Component/
│ │ ├── Guides/
│ │ │ ├── LukaBakar.swift
│ │ │ ├── Mimisan.swift
│ │ │ ├── Terkilir.swift
│ │ │ └── TersengatLebah.swift
│ │ ├── ViewModel/
│ │ │ ├── DetailSickViewModel.swift
│ │ │ ├── DetailSickView.swift
│ │ │ ├── KitDetailView.swift
│ │ │ └── SickCardView.swift
│ │ ├── AidKit.swift
│ │ ├── ArticleView.swift
│ │ ├── Beranda.swift
│ │ ├── ContentView.swift
│ │ └── Home_ScreenApp.swift
├── Home ScreenTests/ # Unit tests
├── Home ScreenUITests/ # UI tests
├── Model data/
│ ├── ArticleContent.swift
│ ├── Emergency.swift
│ ├── EmergencyItem.swift
│ ├── EmergencyType.swift
│ ├── Guide.swift
│ └── GuideModel.swift
```
<br>

## 📌 Notes

- All UI is built using **SwiftUI**.
- The app is modularized for scalability (by components, views, and data models).
- Designed for quick access to critical medical knowledge even in stressful situations.

<br>

## 📣 Credits

Developed by Team Hira during the **Apple Developer Academy @BINUS**  
Special thanks to mentors, instructors, and the iOS Foundation team!

<br><br>

