//
//  Bouton.swift
//  HotelApp
//
//  Created by mokaddem on 03/11/2021.
//

import SwiftUI

struct Bouton: View {
    @Binding var category: ArticleID.Category
    var body: some View {
        Button {
            category = .vetement
        } label: {
            Text("Vêtement")
        }

    }
}

struct Filtre_Previews: PreviewProvider {
    static var previews: some View {
        Bouton(category: .constant(.all))
    }
}
