//
//  BelleListe.swift
//  HotelApp
//
//  Created by mokaddem on 03/11/2021.
//

import SwiftUI

struct BelleListe: View {
    let articles = [
                    ArticleID(name: "T-shirt", imageArticle: "Tshirt", price: "8.99€", category: .vetement, descriptif: "T-Shirt Uniforme, 100 % coton."),
                    ArticleID(name: "Chaussure", imageArticle: "Shoes", price: "25.99€", category: .vetement, descriptif: "Nike Air Max Modèle 570"),
                    ArticleID(name: "Playstation 5", imageArticle: "PS5", price: "50.99€", category: .hightech, descriptif: "Console Sony PlayStation 5 Edition Numérique"),
                    ArticleID(name: "Coca Cola", imageArticle: "Coca", price: "4.99€", category: .consomable, descriptif: "Coca-Cola Original canette de format Standart - 33 cl "),
                    ArticleID(name: "Chargeur Micro USB", imageArticle: "Charge", price: "6.00€", category: .hightech, descriptif: "Chargeur pour téléphone portable"),
                    ArticleID(name: "Sèche-cheveux", imageArticle: "sechoir", price: "8.00€", category: .hightech, descriptif: "Sèche-cheveux rapide 2000W avec cordon rétractable."),
                    ArticleID(name: "Panier de fruit", imageArticle: "Fruit", price: "12.99€", category: .consomable, descriptif: "Ensemble de fruit mis dans un panier"),
                    ArticleID(name: "Ensemble costume", imageArticle: "costume", price: "80.00€", category: .vetement, descriptif: "Veste costume et pantalon de costume, moderne, coupe slim"),

    ]
    
    @Binding var category: ArticleID.Category
    
    var filteredArticles: [ArticleID] {
        articles.filter { article in
            if category == .all {
                return true
            }else {
                if article.category == category {
                    return true
                }else{
                    return false
                }
            }
        }
    }
    
    var body: some View {
        
            List(filteredArticles) { article in
                NavigationLink(
                    destination: DétailArticle(article: article),
                    
                    label: {
                        ArticleRow(article: article)
                        
                        
                    })
                
            }
       
        }
        }
    



struct WeatherList_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            BelleListe(category: .constant(.hightech))
        }
    }
}

