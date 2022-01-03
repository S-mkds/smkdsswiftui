


import SwiftUI
import MapKit

struct HotelRow: View {
    var hotel: Hotel
    var body: some View {
        HStack {
            Text(hotel.name)
            Spacer()
            Image(systemName: hotel.icon)
//            onTapGesture{
//                if {
//                    Image(systemName: hotel.icon)
//                        .background(Color.yellow)
//
//                }else{
//                    Image(systemName: hotel.icon)
//                        .background(Color.black)
//
             
                
                
            }
           
    }
    
}
    


struct HotelRow_Previews: PreviewProvider {
    static var previews: some View {
        HotelRow(hotel:  Hotel(name: "Hôtel Ibis Valentine", image: "star", adress: "Quartier Des Ecoles, 6 Av. de Saint Menet, 13011 - MARSEILLE FRANCE", coordinate: CLLocationCoordinate2D(latitude: 43.2907, longitude: 5.4384)))
    }
}
