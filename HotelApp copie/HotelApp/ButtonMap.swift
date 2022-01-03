//
//  ButtonBidingOption.swift
//  HotelApp
//
//  Created by mokaddem on 28/10/2021.
//

import SwiftUI

struct ButtonBidingMap: View {
    @Binding var viewMode: ContentView.ViewMode
    let img: String
    let text: String
    let value: ContentView.ViewMode
    
    var body: some View {
        Button {
            viewMode = value
        } label: {
            HStack {
                Image(systemName: img)
                            Text(text)
                    
            }
            .frame(maxWidth: .infinity)
            .contentShape(Rectangle())
        }
        .foregroundColor(.white)
        .padding()
        .background(
            RoundedRectangle(cornerRadius: 5)
                .fill(viewMode == value ? .blue : .gray)
        )
    }
}

struct ButtonBidingMap_Previews: PreviewProvider {
    static var previews: some View {
        ButtonBidingMap(viewMode: .constant(.list), img: "TEST", text: "TEST", value: .map)
    }
}
