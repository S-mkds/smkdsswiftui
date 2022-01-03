//
//  TopARticle.swift
//  HotelApp
//
//  Created by mokaddem on 03/11/2021.
//

import SwiftUI

struct TopOfArticlePage: View {
    @State var category: ArticleID.Category = .all
    
    var body: some View {
            VStack{
                Image("fotohotel")
                    .resizable()
                    .scaledToFit()
                HStack{
                    Spacer()
                    Text("")
                    Spacer()
                }
                HStack{
                    Spacer()
                    Button {
                        category = .all
                    } label: {
                        Text("Tout")
                    }
                    Spacer()
                    Button {
                        category = .vetement
                    } label: {
                        Text("Vêtement")
                    }
                    Spacer()
                    Button {
                        category = .hightech
                    } label: {
                        Text("High-Tech")
                    }
                    Spacer()
                    Button {
                        category = .consomable
                    } label: {
                        Text("Consomable")
                    }
                    Spacer()
                }
                BelleListe(category: $category)
                
            }
        VStack{
            NavigationLink(destination: Panier(article: ArticleID(name: "", imageArticle: "", price: "", descriptif: "")),
                           label: {
            Text("Voir panier")
                .foregroundColor(.white)
                .font(.system(size: 20))
                .padding()
                .frame(width: 350, height: 70)
                .background(Color.gray.clipped())
                .cornerRadius(10)
            })
            
        }
            .navigationTitle("Votre Hotel")
            .navigationBarTitleDisplayMode(.inline)
        
    }
}
struct TopOfArticlePage_Previews: PreviewProvider {
    static var previews: some View {
        TopOfArticlePage()
    }
}
