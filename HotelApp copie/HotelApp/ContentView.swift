//
//  ContentView.swift
//  HotelApp
//
//  Created by mokaddem on 28/10/2021.
//

import SwiftUI
import MapKit

struct ContentView: View {
    
    @State private var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 43.30, longitude: 5.36), span: MKCoordinateSpan(latitudeDelta: 0.12, longitudeDelta: 0.12))
    @State private var showAddView = false
    //    @State private var showModale = false
    //     Test Modale map
    @State private var sheetHotel: Hotel? = nil
    @State private var overlayHotel: Hotel? = nil
    
    @State private var searchText = ""
    var hotels = [
        
        Hotel(name: "Hôtel Toyoko Inn", image: "toyoko inn marseille st charle", adress: "25 Av. du Général Leclerc, 13003 - MARSEILLE FRANCE", coordinate: CLLocationCoordinate2D(latitude: 43.304005, longitude: 5.37734)),
        
        Hotel(name: "Hôtel Hèrmès", image: "Hermès Hotel Marseille vieux port", adress: "2 Rue Bonneterie, 13002 - MARSEILLE FRANCE", coordinate: CLLocationCoordinate2D(latitude: 43.296594, longitude: 5.371985)),
        
        Hotel(name: "Bord De Mer", image: "hotel bord de mer marseille", adress: "1 Rue des Catalans, 13007 - MARSEILLE FRANCE", coordinate: CLLocationCoordinate2D(latitude: 43.292412, longitude: 5.355678)),
        
        Hotel(name: "Hôtel Ibis Budget", image: "Hotel Ibus Budget Marseille vieux port", adress: "46 Rue Sainte, 13001 - MARSEILLE FRANCE", coordinate: CLLocationCoordinate2D(latitude: 43.292192, longitude: 5.373731)),
       
        Hotel(name: "Grand  Beauvau", image: "BeauvauImage", adress: "4 rue Beauvau , 13001 MARSEILLE FRANCE", coordinate: CLLocationCoordinate2D(latitude: 43.2951029, longitude: 5.3750357)),
        Hotel(name: "Hôtel B&B", image: "B&bpnj", adress: "7 Rue André Allar, 13015 - MARSEILLE FRANCE", coordinate: CLLocationCoordinate2D(latitude: 43.3236637, longitude: 5.3638645)),
        Hotel(name: "Hôtel Ibis Valentine", image: "PNJ Valentine", adress: "Quartier Des Ecoles, 6 Av. de Saint Menet, 13011 - MARSEILLE FRANCE", coordinate: CLLocationCoordinate2D(latitude: 43.2907, longitude: 5.4384)),
   
    ]
    enum ViewMode {
        case map, list
    }
    @State private var viewMode = ViewMode.map
    
    
    init() {
        UINavigationBar.appearance().titleTextAttributes = [.font : UIFont.systemFont(ofSize: 20)]
    }
    
    var body: some View {
        NavigationView{
            VStack{
                
                HStack {
                    Spacer()
                    ButtonBidingMap(viewMode: $viewMode, img: "list.bullet.rectangle", text: "Map", value: .map)
                    Spacer()
                    ButtonBidingMap(viewMode: $viewMode, img: "list.bullet.rectangle", text: "List", value: .list)
                    Spacer()
                }
                if viewMode == .map {
                    Map(coordinateRegion: $region, annotationItems: hotels, annotationContent:  { hotel  in
                        MapAnnotation(coordinate: hotel.coordinate) {
                            Image(systemName: "bed.double.fill")
                                .background(Color.black)
                                .padding()
                                .foregroundColor(Color.yellow)
                                .onTapGesture {
                                    overlayHotel = hotel
                                }
                        }
                    })
                        .edgesIgnoringSafeArea(.all)
                        .overlay(
                            Group {
                                if let overlayItem = overlayHotel {
                                    VStack {
                                        Spacer()
                                        HStack{
                                            Image(overlayItem.image)
                                                .resizable()
                                                .scaledToFit()
                                                .clipShape(Circle())
                                                .frame(maxWidth: 120)
                                                .cornerRadius(30)

                                            Spacer()
                                            VStack {
                                            
                                            Text(overlayItem.name)
                                                .foregroundColor(.black)
                                                .font(.system(size: 30))
                                                
                                            Text(overlayItem.adress)
                                                .foregroundColor(.black)
                                                .font(.system(size: 20))
                                            }
                                        }
                                        .padding()
                                        .frame(maxWidth: .infinity)
                                        .background(Color.white)
                                        .cornerRadius(40)

                                       
                                      
                                        
                                        .onTapGesture{
                                            sheetHotel = overlayItem
                                        }
                                    }
                                    .padding()
                                }
                            }
                        )
                        //
                        .sheet(item: $sheetHotel, content: { item in
                            NavigationView {
                                HotelDetail(hotel: item)
                            }
                            
                        })
                    
                }else{
                    VStack{
                       
                        List(hotels) { hotel in
                            NavigationLink(
                                destination: HotelDetail(hotel: hotel),
                                label: {
                                    Text(hotel.name)
                                        .padding()
                                        .font(.system(size: 20.0, weight: .bold))
                                })
                        }
                    
                    }
                    
                }
            }
            .searchable(text: $searchText, prompt: "rechercher")
            .navigationTitle("  Trouver votre hôtel  ")
            .font(.system(size: 20.0, weight: .bold))
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarTitleDisplayMode (.large)
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
