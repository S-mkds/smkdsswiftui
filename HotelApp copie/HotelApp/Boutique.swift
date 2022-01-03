//
//  ListB.swift
//  HotelApp
//
//  Created by mokaddem on 03/11/2021.
//

import Foundation

struct ArticleID: Identifiable {
    enum Category {
        case vetement, hightech, consomable, all
    }
    let id = UUID()
    var name: String
    var imageArticle: String
    var price: String
    var category: Category = .vetement
    var descriptif: String
    
    
}
