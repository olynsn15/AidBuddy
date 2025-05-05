//
//  PreCautView.swift
//  Guidedences2
//
//  Created by Ian Hadisurya Budiman on 13/07/23.
//

import SwiftUI

struct DetailSickView: View {
    let detailSickViewModel = DetailSickViewModel()
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
                            Text(detailSickViewModel.emergenciesData[type.index].titleContent)
                                .font(.system(size: 20 ))
                                .fontWeight(.semibold)
                                .foregroundColor(Color(red: 0.115, green: 0.298, blue: 0.292))
                                .frame(width: 292, height: 83, alignment: .leading)
                                .padding(.top)
                            
                            ForEach(detailSickViewModel.emergenciesData[type.index].bulletList.indices) { list in
                                HStack(alignment: .top){
                                    Text("•")
                                        .foregroundColor(Color(red: 0.115, green: 0.298, blue: 0.292))
                                        .font(.system(size:16 ))
                                        .fontWeight(.regular)
                                    Text("\(detailSickViewModel.emergenciesData[type.index].bulletList[list])")
                                        .foregroundColor(Color(red: 0.115, green: 0.298, blue: 0.292))
                                        .font(.system(size:16 ))
                                        .fontWeight(.regular)
                                }
                                .frame(width: 297, alignment: .leading)
                            }
                            
                            Spacer()
                            
                            Button(action: {
                                guard let number = URL(string: "tel://" + "112") else { return }
                                UIApplication.shared.open(number)
                            }) {
                                Image(systemName: "phone.fill")
                                    .padding(.leading, 20)
                                    .imageScale(.large)
                                Text("DARURAT")
                                    .padding(.trailing, 20)
                                    .font(.system(size: 30))
                            }
                            .frame(width: 250, height: 50)
                            .foregroundColor(.white)
                            .fontWeight(.bold)
                            .background(Color(red: 0.882, green: 0.138, blue: 0.003))
                            .cornerRadius(60)
                            
                            Spacer()
                                .frame(height: 30)
                            
                            NavigationLink {
                                KitDetailView(detailSickViewModel: detailSickViewModel, type: type, isDetailActive: $isDetailActive)
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



struct PreCautView_Previews: PreviewProvider {
    static var previews: some View {
        DetailSickView(type: .lukaBakar, isDetailActive: .constant(true))
    }
}

