//
//  LukaBakar.swift
//  test
//
//  Created by Gilbert Jefferson on 13/07/23.
//

import SwiftUI
import AVKit

struct MimisanData {
    let guideItem1: GuideModel = GuideModel(guideImage: "mimisanb1",
                                            guideTitle: "Bersihkan lubang hidung",
                                            guideContent: "Bersihkan lubang hidung yang tertutup bekas darah dengan lap atau tissue agar jalan pernafasan aman")
    
    let guideItem2: GuideModel = GuideModel(guideImage: "mimisanb2",
                                            guideTitle: "Duduk dengan kepala sedikit menunduk",
                                            guideContent: "Duduk agar mengurangi tekanan pembuluh darah dalam hidung dan kepala menunduk agar darah tidak mengalir masuk ke tubuh")
    
    let guideItem3: GuideModel = GuideModel(guideImage: "mimisanb3",
                                            guideTitle: "Tekan kedua sisi hidung 5-10 menit",
                                            guideContent: "Menekan kedua sisi hidung agar aliran darah saat mimisan  dapat berhenti")
    
    let guideItem4: GuideModel = GuideModel(guideImage: "mimisanb4",
                                            guideTitle: "Bila perlu kompres dengan es",
                                            guideContent: "mengkompres hidung dengan es dapat membantu menghentikan mimisan")
    
    lazy var isiMimisan: Guide = {
        Guide(guideItems: [guideItem1, guideItem2, guideItem3, guideItem4])
    }()
}

struct Mimisan: View {
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

struct Mimisan_Previews: PreviewProvider {
    static var previews: some View {
        var data = MimisanData()
        
        Mimisan(guide: data.isiMimisan, isDetailActive: .constant(false))
    }
}


