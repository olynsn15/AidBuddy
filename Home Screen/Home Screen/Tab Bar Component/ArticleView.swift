//
//  Panduan.swift
//  Home Screen
//
//  Created by Vernandio Rivaldo on 11/07/23.
//

import SwiftUI

struct Articleview: View {
    
    var articles: [Article] = ArticleList.articleFive
    init() {
        UINavigationBar.appearance().largeTitleTextAttributes = [.foregroundColor: UIColor.init(Color(red: 0.231, green: 0.476, blue: 0.46))]
    }
    
    var body: some View {
        List(articles, id: \.id){ article in
            NavigationLink(destination: ArticleDetailView(article: article), label: {
                HStack (spacing: 10) {
                    Image(article.imageName)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 80, height: 80)
                        .cornerRadius(8)
                        .padding(.vertical,5)
                    Text(article.title)
                        .font(.title2)
                        .fontWeight(.semibold)
                        .lineLimit(3)
                        .minimumScaleFactor(0.5)
                        .foregroundColor(Color(red: 0.231, green: 0.476, blue: 0.46))
                    
                }
            })
            .listStyle(PlainListStyle())
            .navigationBarBackButtonHidden(true)
            .clipped()
        }
    }
}


struct Articleview_Previews: PreviewProvider {
    static var previews: some View {
        Articleview()
    }
}
