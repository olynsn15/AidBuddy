# AidBuddy 🚑 
### iOS Foundation Cohort 19 Final Project Team Hira

**AidBuddy** is a **life-saving mobile app** designed to assist in emergency situations by providing **instant, reliable first aid information**. Whether it's a minor injury or a critical medical emergency, AidBuddy guides users with step-by-step instructions to ensure a quick and effective response before professional help arrives.
<br><br>

## Features
- Comprehensive **Emergency First Aid Guide** for quick reference  
- **Voice-assisted instructions** to guide users hands-free during emergencies  
- **Emergency contact integration** for instant reach to trusted contacts  
- Curated **health articles and tips** to promote everyday safety awareness  
- Designed with a **user-friendly SwiftUI interface** for clarity and accessibility 
<br><br>

## Tech Stack
![Swift](https://img.shields.io/badge/Swift-F54A2A?logo=swift&logoColor=white)
![Figma](https://img.shields.io/badge/Figma-F24E1E?logo=figma&logoColor=white)
<br><br>

## Hi-Fi Prototype
View the final high-fidelity UI design on Figma:  
> [AidBuddy Final HiFi Prototype](https://www.figma.com/file/nc5cisOSToFunap3ocgYdo/HiFi-(PUTIH)?type=design&node-id=1%3A1813&mode=design&t=Eej8lNSbmSNb5DJa-1)
<br>

## Project Structure
```
AidBuddy/
├── Home Screen/
│   ├── Home Screen/
│   │   ├── ContentView.swift
│   │   ├── Detail Screen/
│   │   │   ├── BackButtonView.swift
│   │   │   └── DetailView.swift
│   │   ├── Home_ScreenApp.swift
│   │   ├── Preview Content/
│   │   │   ├── Assets.xcassets/
│   │   │   │   ├── alkohol.imageset/
│   │   │   │   │   ├── alkohol70.png
│   │   │   │   │   └── Contents.json
│   │   │   │   ├── AppIcon.appiconset/
│   │   │   │   │   └── Contents.json
│   │   │   │   ├── bakar.imageset/
│   │   │   │   │   ├── Contents.json
│   │   │   │   │   └── salep luka bakar.png
│   │   │   │   ├── batuk.imageset/
│   │   │   │   │   ├── Contents.json
│   │   │   │   │   └── obatbatukpilek.png
│   │   │   │   ├── betadine.imageset/
│   │   │   │   │   ├── betadine.png
│   │   │   │   │   └── Contents.json
│   │   │   │   ├── Contents.json
│   │   │   │   ├── gatal.imageset/
│   │   │   │   │   ├── Contents.json
│   │   │   │   │   └── obat gatal.png
│   │   │   │   ├── gunting.imageset/
│   │   │   │   │   ├── Contents.json
│   │   │   │   │   └── gunting.png
│   │   │   │   ├── hipotermia.imageset/
│   │   │   │   │   ├── Contents.json
│   │   │   │   │   └── ilustrasi-penanganan-hipotermia1.jpg
│   │   │   │   ├── kain.imageset/
│   │   │   │   │   ├── Contents.json
│   │   │   │   │   └── kain kassa.png
│   │   │   │   ├── kaki.imageset/
│   │   │   │   │   ├── 550fafeb-6759-4483-b2a4-971db334c876-article-1666441379.jpeg
│   │   │   │   │   └── Contents.json
│   │   │   │   ├── latex.imageset/
│   │   │   │   │   ├── Contents.json
│   │   │   │   │   └── sarung tangan latex.png
│   │   │   │   ├── lightGreen.colorset/
│   │   │   │   │   └── Contents.json
│   │   │   │   ├── LukaBakar/
│   │   │   │   │   ├── Contents.json
│   │   │   │   │   ├── lukabakar1.imageset/
│   │   │   │   │   │   ├── Contents.json
│   │   │   │   │   │   └── lukabakar1.png
│   │   │   │   │   ├── lukabakar2.imageset/
│   │   │   │   │   │   ├── Contents.json
│   │   │   │   │   │   └── lukabakar2.png
│   │   │   │   │   ├── lukabakar3.imageset/
│   │   │   │   │   │   ├── Contents.json
│   │   │   │   │   │   └── lukabakar3.png
│   │   │   │   │   └── lukabakar4.imageset/
│   │   │   │   │       ├── Contents.json
│   │   │   │   │       └── lukabakar4.png
│   │   │   │   ├── map.imageset/
│   │   │   │   │   ├── Contents.json
│   │   │   │   │   └── Screenshot 2023-07-18 at 13.02.03.png
│   │   │   │   ├── masker.imageset/
│   │   │   │   │   ├── Contents.json
│   │   │   │   │   └── masker oksigen cpr.png
│   │   │   │   ├── mata.imageset/
│   │   │   │   │   ├── Contents.json
│   │   │   │   │   └── obat tetes mata.png
│   │   │   │   ├── Mimisan/
│   │   │   │   │   ├── Contents.json
│   │   │   │   │   ├── mimisanb1.imageset/
│   │   │   │   │   │   ├── Contents.json
│   │   │   │   │   │   └── mimisanb1.png
│   │   │   │   │   ├── mimisanb2.imageset/
│   │   │   │   │   │   ├── Contents.json
│   │   │   │   │   │   └── mimisanb2.png
│   │   │   │   │   ├── mimisanb3.imageset/
│   │   │   │   │   │   ├── Contents.json
│   │   │   │   │   │   └── mimisanb3.png
│   │   │   │   │   └── mimisanb4.imageset/
│   │   │   │   │       ├── Contents.json
│   │   │   │   │       └── mimisanb4.png
│   │   │   │   ├── paracetamol.imageset/
│   │   │   │   │   ├── Contents.json
│   │   │   │   │   └── paracetamol.png
│   │   │   │   ├── peniti.imageset/
│   │   │   │   │   ├── Contents.json
│   │   │   │   │   └── peniti.png
│   │   │   │   ├── perban.imageset/
│   │   │   │   │   ├── Contents.json
│   │   │   │   │   └── gambar-11.png
│   │   │   │   ├── pinset.imageset/
│   │   │   │   │   ├── Contents.json
│   │   │   │   │   └── pinset.png
│   │   │   │   ├── plester.imageset/
│   │   │   │   │   ├── Contents.json
│   │   │   │   │   └── plester.png
│   │   │   │   ├── punggung.imageset/
│   │   │   │   │   ├── Contents.json
│   │   │   │   │   └── Unknown.jpeg
│   │   │   │   ├── Terkilir/
│   │   │   │   │   ├── Contents.json
│   │   │   │   │   ├── terkilir1.imageset/
│   │   │   │   │   │   ├── Contents.json
│   │   │   │   │   │   └── terkilir1.png
│   │   │   │   │   ├── terkilir2.imageset/
│   │   │   │   │   │   ├── Contents.json
│   │   │   │   │   │   └── terkilir2.png
│   │   │   │   │   ├── terkilir3.imageset/
│   │   │   │   │   │   ├── Contents.json
│   │   │   │   │   │   └── terkilir3.png
│   │   │   │   │   └── terkilir4.imageset/
│   │   │   │   │       ├── Contents.json
│   │   │   │   │       └── terkilir4.png
│   │   │   │   ├── termometer.imageset/
│   │   │   │   │   ├── Contents.json
│   │   │   │   │   └── termometer.png
│   │   │   │   ├── TersengatLebah/
│   │   │   │   │   ├── Contents.json
│   │   │   │   │   ├── lebah1.imageset/
│   │   │   │   │   │   ├── Contents.json
│   │   │   │   │   │   └── lebah1.png
│   │   │   │   │   ├── lebah2.imageset/
│   │   │   │   │   │   ├── Contents.json
│   │   │   │   │   │   └── lebah2.png
│   │   │   │   │   ├── lebah3.imageset/
│   │   │   │   │   │   ├── Contents.json
│   │   │   │   │   │   └── lebah3.png
│   │   │   │   │   ├── lebah4.imageset/
│   │   │   │   │   │   ├── Contents.json
│   │   │   │   │   │   └── lebah4.png
│   │   │   │   │   └── lebah5.imageset/
│   │   │   │   │       ├── Contents.json
│   │   │   │   │       └── lebah5.png
│   │   │   │   └── tisu.imageset/
│   │   │   │       ├── Contents.json
│   │   │   │       └── tisue disinfektan.png
│   │   │   └── Preview Assets.xcassets/
│   │   │       └── Contents.json
│   │   └── Tab Bar Component/
│   │       ├── Aid kit.swift
│   │       ├── AidKit component/
│   │       │   └── AidKitCardView.swift
│   │       ├── Article Component/
│   │       │   └── ArticleDetailView.swift
│   │       ├── ArticleView.swift
│   │       ├── Beranda.swift
│   │       └── Home component/
│   │           ├── DetailSickView.swift
│   │           ├── Guides/
│   │           │   ├── LukaBakar.swift
│   │           │   ├── Mimisan.swift
│   │           │   ├── Terkilir.swift
│   │           │   └── TersengatLebah.swift
│   │           ├── KitDetailView.swift
│   │           ├── SickCardView.swift
│   │           └── ViewModel/
│   │               └── DetailSickViewModel.swift
│   ├── Home Screen.xcodeproj/
│   │   ├── project.pbxproj
│   │   ├── project.xcworkspace/
│   │   │   ├── contents.xcworkspacedata.xml
│   │   │   ├── xcshareddata/
│   │   │   │   └── IDEWorkspaceChecks.plist
│   │   │   └── xcuserdata/
│   │   │       └── vernandiorivaldo.xcuserdatad/
│   │   │           └── UserInterfaceState.xcuserstate
│   │   └── xcuserdata/
│   │       └── vernandiorivaldo.xcuserdatad/
│   │           ├── xcdebugger/
│   │           │   ├── Breakpoints_v2.xcbkptlist.xml
│   │           │   └── Breakpoints_v2.xcbkptlist(1).xml
│   │           └── xcschemes/
│   │               └── xcschememanagement.plist
│   ├── Home ScreenTests/
│   │   └── Home_ScreenTests.swift
│   ├── Home ScreenUITests/
│   │   ├── Home_ScreenUITests.swift
│   │   └── Home_ScreenUITestsLaunchTests.swift
│   └── Model data/
│       ├── ArticleContent.swift
│       ├── Emergency.swift
│       ├── EmergencyItem.swift
│       ├── EmergencyType.swift
│       ├── Guide.swift
│       └── GuideModel.swift
└── README.md
```
<br>

## Notes
```
- All UI is built using SwiftUI.

Developed by Team Hira during iOS Foundation Cohort 19 held by Apple Developer Academy @BINUS
iOS Foundation is a month-long, challenge-driven course designed specifically for undergraduate students by Apple Developer Academy @BINUS

Special thanks to mentors, instructors, and the iOS Foundation team!
```
<br><br>

