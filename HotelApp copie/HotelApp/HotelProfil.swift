

import SwiftUI
import MapKit

struct HotelList: View {
    var hotels = [
        
        Hotel(name: "Hôtel Toyoko Inn", image: "toyoko inn marseille st charle", adress: "25 Av. du Général Leclerc, 13003 - MARSEILLE FRANCE", coordinate: CLLocationCoordinate2D(latitude: 43.304005, longitude: 5.37734)),
        
        Hotel(name: "Hôtel Hèrmès", image: "Hermès Hotel Marseille vieux port", adress: "2 Rue Bonneterie, 13002 - MARSEILLE FRANCE", coordinate: CLLocationCoordinate2D(latitude: 43.296594, longitude: 5.371985)),
        
        Hotel(name: "Hôtel Bord De Mer", image: "hotel bord de mer marseille", adress: "1 Rue des Catalans, 13007 - MARSEILLE FRANCE", coordinate: CLLocationCoordinate2D(latitude: 43.292412, longitude: 5.355678)),
        
        Hotel(name: "Hôtel Ibis", image: "Hotel Ibus Budget Marseille vieux port", adress: "46 Rue Sainte, 13001 - MARSEILLE FRANCE", coordinate: CLLocationCoordinate2D(latitude: 43.292192, longitude: 5.373731)),
       
        Hotel(name: "Hôtel Grand  Beauvau", image: "BeauvauImage", adress: "4 rue Beauvau , 13001 MARSEILLE FRANCE", coordinate: CLLocationCoordinate2D(latitude: 43.2951029, longitude: 5.3750357)),
        Hotel(name: "Hôtel B&B", image: "B&bpnj", adress: "7 Rue André Allar, 13015 - MARSEILLE FRANCE", coordinate: CLLocationCoordinate2D(latitude: 43.3236637, longitude: 5.3638645)),
        Hotel(name: "Hôtel Ibis Valentine", image: "PNJ Valentine", adress: "Quartier Des Ecoles, 6 Av. de Saint Menet, 13011 - MARSEILLE FRANCE", coordinate: CLLocationCoordinate2D(latitude: 43.2907, longitude: 5.4384)),
   
    ]

    var body: some View {

        VStack{
     Image("profil")
                .resizable()
                .frame(maxWidth: 200, maxHeight: 200)

        List(hotels) { Hotel in
            HotelRow(hotel:Hotel)
                .font(.system(size: 20))
            
        }
            
        }
    }
}

struct HotelList_Previews: PreviewProvider {
    static var previews: some View {
        HotelList()
    }
}
