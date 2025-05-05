//
//  PreCautView.swift
//  Guidedences2
//
//  Created by Ian Hadisurya Budiman on 13/07/23.
//

import SwiftUI

struct KitDetailView: View {
    let detailSickViewModel: DetailSickViewModel
    let type: EmergencyType
    
    @Binding var isDetailActive: Bool
    
    var body: some View {
        VStack(alignment: .leading) {
            ZStack {
                Rectangle()
                    .frame(width: 355, height: .infinity)
                    .cornerRadius(20)
                    .foregroundColor(Color(red: 0.926, green: 0.966, blue: 0.965))
                    .overlay(
                        VStack {
                            Text(detailSickViewModel.aidKitData[type.index].titleContent)
                                .font(.system(size: 20 ))
                                .fontWeight(.semibold)
                                .foregroundColor(Color(red: 0.115, green: 0.298, blue: 0.292))
                                .frame(width: 292, height: 83, alignment: .leading)
                                .padding(.top)
                            
                            ForEach(detailSickViewModel.aidKitData[type.index].bulletList.indices) { list in
                                HStack(alignment: .top){
                                    Text("•")
                                        .foregroundColor(Color(red: 0.115, green: 0.298, blue: 0.292))
                                        .font(.system(size:16 ))
                                        .fontWeight(.regular)
                                    Text("\(detailSickViewModel.aidKitData[type.index].bulletList[list])")
                                        .foregroundColor(Color(red: 0.115, green: 0.298, blue: 0.292))
                                        .font(.system(size:16 ))
                                        .fontWeight(.regular)
                                }
                                .frame(width: 297, alignment: .leading)
                            }
                            
                            Spacer()
                            
                            NavigationLink {
                                if type == .lukaBakar {
                                    var data = LukaBakarData()
                                    LukaBakar(guide: data.isiLukaBakar, isDetailActive: $isDetailActive)
                                } else if type == .mimisan {
                                    var data = MimisanData()
                                    Mimisan(guide: data.isiMimisan, isDetailActive: $isDetailActive)
                                } else if type == .terkilir {
                                    var data = TerkilirData()
                                    Terkilir(guide: data.isiTerkilir, isDetailActive: $isDetailActive)
                                } else {
                                    var data = TersengatLebahData()
                                    TersengatLebah(guide: data.isiTersengatLebah, isDetailActive: $isDetailActive)
                                }
                            } label: {
                                Text("Pertolongan Pertama")
                                    .fontWeight(.bold)
                                    .font(.system(size: 20))
                                    .padding()
                                    .frame(width: 250, height: 50)
                            }
                            .foregroundColor(.white)
                            .background(Color(red: 0.23, green: 0.472, blue: 0.461))
                            .cornerRadius(60)
                            
                            Spacer()
                                .frame(height: 30)
                        }
                    )
            }
        }
        .navigationBarBackButtonHidden(true)
        .toolbar {
            ToolbarItem(placement: .navigationBarLeading) {
                BackButtonView()
            }
        }
    }
}



struct KitDetailView_Previews: PreviewProvider {
    static var previews: some View {
        KitDetailView(detailSickViewModel: DetailSickViewModel(), type: .mimisan, isDetailActive: .constant(true))
    }
}

