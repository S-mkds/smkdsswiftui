//
//  ListHotelID.swift
//  HotelApp
//
//  Created by mokaddem on 29/10/2021.


import Foundation
import SwiftUI
import MapKit

struct Hotel: Identifiable {
    let id = UUID()
    var name: String
    var image: String
    var adress: String
    let coordinate: CLLocationCoordinate2D
    var icon = "star.fill"
}


