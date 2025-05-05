//
//  ArticleCardView.swift
//  Home Screen
//
//  Created by Vernandio Rivaldo on 12/07/23.
//

import SwiftUI
import AVKit

struct ArticleDetailView: View {
    
    var article: Article
    
    var body: some View {
        ScrollView{
            VStack (spacing: 20) {
                Image(article.imageName)
                    .resizable()
                    .scaledToFit()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 320, height: 180)
                    .cornerRadius(8)
                Text(article.title)
                    .font(.title2)
                    .fontWeight(.bold)
                    .lineLimit(5)
                    .multilineTextAlignment(.leading)
                    .padding(.horizontal)
                    .foregroundColor(Color(red: 0.231, green: 0.476, blue: 0.46))
                    .frame(width: 360)
                Text(article.description)
                    .font(.body)
                    .padding()
                    .lineSpacing(10)
                    .frame(width: 360)
                .navigationBarBackButtonHidden(true)
                .toolbar {
                    ToolbarItem(placement: .navigationBarLeading) {
                        BackButtonView()
                    }
                }
            }
        }
    }
}

struct ArticleDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ArticleDetailView(article: ArticleList.articleFive.first!)
    }
}
