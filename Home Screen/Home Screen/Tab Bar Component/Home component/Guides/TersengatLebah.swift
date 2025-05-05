//
//  TersengatLebah.swift
//  test
//
//  Created by Gilbert Jefferson on 14/07/23.
//

import SwiftUI
import AVKit

struct TersengatLebahData {
    let guideItem1: GuideModel = GuideModel(guideImage: "lebah1",
                                            guideTitle: "Lepas Sengatan",
                                            guideContent: "Lepaskan penyengat dengan mengikisnya menggunakan kuku atau kain kasa, atau menggunakan pinset.")
    
    let guideItem2: GuideModel = GuideModel(guideImage: "lebah2",
                                            guideTitle: "Cuci Sengatan",
                                            guideContent: "Cuci sengatan dengan sabun dan air untuk mencegah terjadinya infeksi berkepanjangan.")
    
    let guideItem3: GuideModel = GuideModel(guideImage: "lebah3",
                                            guideTitle: "Kompres bagian yang bengkak",
                                            guideContent: "Oleskan kompres dingin untuk mengurangi pembengkakan")
    
    let guideItem4: GuideModel = GuideModel(guideImage: "lebah4",
                                            guideTitle: "Minum obat pereda nyeri",
                                            guideContent: "Gunakan obat pereda nyeri yang dijual bebas, seperti acetaminophen atau ibuprofen, untuk meredakan rasa sakit. Ikuti petunjuk dosis yang benar.")
    
    let guideItem5: GuideModel = GuideModel(guideImage: "lebah5",
                                            guideTitle: "Oleskan krim ",
                                            guideContent: "Gunakan krim hidrokortison, losion kalamin, atau obat antihistamin jika gatal atau iritasi kulit mengganggu.")
    
    lazy var isiTersengatLebah: Guide = {
        Guide(guideItems: [guideItem1, guideItem2, guideItem3, guideItem4, guideItem5])
    }()
}

struct TersengatLebah: View {
    @State var guide: Guide
    @State var index: Int = 0
    @Binding var isDetailActive: Bool
    
    let syn = AVSpeechSynthesizer()
    
    func indexUp() {
        index += 1
    }
    
    func indexDown() {
        index -= 1
    }
    
    var body: some View {
        TabView(selection: $index) {
            ForEach(guide.guideItems.indices, id: \.self) { i in
                Rectangle()
                    .frame(width: 352, height: 608)
                    .foregroundColor(Color("lightGreen"))
                    .cornerRadius(12)
                    .shadow(radius: 10)
                    .overlay(
                        VStack {
                            Image(guide.guideItems[i].guideImage)
                            
                            Spacer()
                                .frame(height: 20)
                            
                            Text(guide.guideItems[i].guideTitle)
                                .font(.title)
                                .fontWeight(.bold)
                                .frame(maxWidth: .infinity, alignment: .leading)
                            
                            Text(guide.guideItems[i].guideContent)
                                .frame(maxWidth: .infinity, alignment: .leading)
                            
                            Button {
                                if syn.isSpeaking {
                                    syn.stopSpeaking(at: .immediate)
                                }
                                let utter = AVSpeechUtterance(string: guide.guideItems[i].guideContent)
                                
                                utter.rate = 0.52
                                utter.voice = AVSpeechSynthesisVoice(language: "id-ID")
                                syn.speak(utter)
                            } label: {
                                Image(systemName: "waveform")
                                    .imageScale(.large)
                                    .foregroundColor(Color(red: 0.231, green: 0.476, blue: 0.46))
                                    .fontWeight(.bold)
                                Text("Audio")
                                    .foregroundColor(Color(red: 0.231, green: 0.476, blue: 0.46))
                            }
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding(.top, 5)
                            
                            Spacer()
                            
                            HStack {
                                if index > 0 {
                                    Button {
                                        if index >= 1 {
                                            indexDown()
                                        } else {
                                            print("no more")
                                        }
                                    } label: {
                                        Image(systemName: "chevron.left")
                                            .imageScale(.large)
                                            .foregroundColor(Color(red: 0.231, green: 0.476, blue: 0.46))
                                            .fontWeight(.bold)
                                        
                                    }
                                }
                                
                                Spacer()
                                if index < guide.guideItems.count - 1 {
                                    Button {
                                        if index <= guide.guideItems.count - 2 {
                                            indexUp()
                                        } else {
                                            print("no more")
                                        }
                                    } label: {
                                        Image(systemName: "chevron.right")
                                            .imageScale(.large)
                                            .foregroundColor(Color(red: 0.231, green: 0.476, blue: 0.46))
                                            .fontWeight(.bold)
                                    }
                                }
                                
                                if index == guide.guideItems.count - 1 {
                                    Button {
                                        isDetailActive = false
                                    } label: {
                                        Spacer()
                                        Image(systemName: "house")
                                            .imageScale(.large)
                                            .foregroundColor(Color(red: 0.231, green: 0.476, blue: 0.46))
                                            .fontWeight(.bold)
                                    }
                                }
                            }
                        }
                            .padding(30)
                    )
                    .navigationBarBackButtonHidden(true)
            }
        }
        .frame(width: 402, height: 648)
        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .automatic))
        .toolbar {
            ToolbarItem(placement: .navigationBarLeading) {
                BackButtonView()
            }
        }
    }
}

struct TersengatLebah_Previews: PreviewProvider {
    static var previews: some View {
        var data = TersengatLebahData()
        TersengatLebah(guide: data.isiTersengatLebah, isDetailActive: .constant(false))
    }
}
