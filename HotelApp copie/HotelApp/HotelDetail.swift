//
//  ListHotelRow.swift
//  HotelApp
//
//  Created by mokaddem on 29/10/2021.
//
import MapKit
import SwiftUI

struct HotelDetail: View {
    var hotel: Hotel
    @State var category: ArticleID.Category = .all
    var body: some View {
       
        VStack{
            
            Image(hotel.image)
                .resizable()
                .scaledToFit()
            Text(hotel.adress)
                .font(.system(size: 20.0, weight: .bold))
                .navigationBarTitle(hotel.name)
                .padding()
                .background(Color.white)
            Spacer()
            BelleListe(category: $category)
                .padding()
            Spacer(minLength: 10)
            
                
        

                NavigationLink(destination: TopOfArticlePage(),
                               label: {
            Text("Voir articles")
                    .foregroundColor(.white)
                    .padding()
                    .frame(width: 350, height: 70)
                    .background(Color.gray.clipped())
                    .cornerRadius(10)
                    .font(.system(size: 23.0))
                    
            })
                
        }
    }
}

struct HotelDetail_Previews: PreviewProvider {
    static var previews: some View {
        HotelDetail(hotel: Hotel(name: "test nom hotel", image: "toyoko inn marseille st charle", adress: "test adress", coordinate: CLLocationCoordinate2D(latitude: 43.303533, longitude: 5.368554)))
    }
}
