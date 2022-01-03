//
//  Panier.swift
//  HotelApp
//
//  Created by mokaddem on 04/11/2021.
//

import SwiftUI

struct Panier: View {
    
    var article: ArticleID
    let items = [
                ArticleID(name: "Ensemble costume", imageArticle: "costume", price: "80€", category: .vetement, descriptif: ""),
                 ArticleID(name: "Playstation 5", imageArticle: "PS5", price: "50€", category: .hightech, descriptif: "Console Sony PlayStation 5 Edition Standard"),
                ArticleID(name: "Chaussure", imageArticle: "Shoes", price: "25.99€", category: .vetement, descriptif: "Nike Air Max Modèle 570"),
                ]
    var body: some View {
        VStack{
            Text("Panier")
            Spacer()
            HStack{
                List(items){ item in
                    ArticleRow(article: item)
                }
            }
            Spacer()
            Button {
            } label: {
                Text("Payement")
                    .foregroundColor(.black)
                    .font(.system(size: 22))
                    .padding()
                    .frame(width: 370, height: 60)
                    .background(Color.yellow.clipped())
                    .cornerRadius(10)
            }
        }
        .padding()
    }
}


struct Panier_Previews: PreviewProvider {
    static var previews: some View {
        Panier(article: ArticleID(name: "T-shirt", imageArticle: "Tshirt", price: "**€", category: .vetement, descriptif: "coupe classique pour hommes. 100 % coton."))
    }
}
