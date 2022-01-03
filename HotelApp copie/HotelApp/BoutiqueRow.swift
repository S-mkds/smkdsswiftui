//
//  ListRow.swift
//  HotelApp
//
//  Created by mokaddem on 03/11/2021.
//

import SwiftUI

struct ArticleRow: View {
    var article: ArticleID
    var body: some View {
        VStack {
            Spacer()
            HStack {
              
                Image(article.imageArticle)
                    .resizable()
                    .scaledToFit()
                    .frame(maxWidth: 65, maxHeight: 65)
              
            Text(article.name)
                    .font(.system(size: 15))
                Spacer()
            Text(article.price)
                    .font(.system(size: 20))
                
//            Image(systemName:"eye.fill")
        }
            Spacer()
    }
    }
    }


struct WeatherRow_Previews: PreviewProvider {
    static var previews: some View {
        ArticleRow(article: ArticleID(name:"chaussure", imageArticle: "fotohotel", price: "20", descriptif: ""))
    }
}

