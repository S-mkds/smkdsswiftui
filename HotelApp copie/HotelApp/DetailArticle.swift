//
//  DetailArticle.swift
//  HotelApp
//
//  Created by mokaddem on 03/11/2021.
//

import SwiftUI
import MapKit

struct DétailArticle: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    var article: ArticleID
    @State var done = false
    
    var body: some View {
        ZStack {
            VStack{
                Spacer()
                HStack{
                    Image(article.imageArticle)
                        .resizable()
                        .scaledToFit()
                        .frame(maxWidth: 250, maxHeight: 150)
                        .padding()
                }
                Spacer()
                HStack{
                    Text(article.name)
                        .font(.system(size: 20))
                        .padding()
                    Spacer()
                    
                    Text(article.price)
                        .font(.system(size: 20))
                        .padding()
                    
                }
                //                if article.category == .category{Text("") }
                if article.name .contains("T-shirt"){
                    VStack{
                        HStack{
                            Spacer()
                            Circle()
                                .fill(Color.black)
                                .frame(width: 40, height: 40)
                            Circle()
                                .fill(Color.blue)
                                .frame(width: 40, height: 40)
                            Circle()
                                .fill(Color.red)
                                .frame(width: 40, height: 40)
                            Spacer()
                            HStack{
                                Spacer()
                                Text("S") .padding() .border(Color.black)
                                Text("M") .padding() .border(Color.black)
                                Text("L") .padding() .border(Color.black)
                                Text("XL") .padding() .border(Color.black)
                                Spacer()
                            }
                        }
                    }
                }
                if article.name .contains("Chaussure"){
                    VStack{
                        HStack{
                            Spacer()
                            Circle()
                                .fill(Color.black)
                                .frame(width: 40, height: 40)
                            Circle()
                                .fill(Color.blue)
                                .frame(width: 40, height: 40)
                            Circle()
                                .fill(Color.red)
                                .frame(width: 40, height: 40)
                            Spacer()
                            HStack{
                                Spacer()
                                Text("40") .padding() .border(Color.black)
                                Text("41") .padding() .border(Color.black)
                                Text("42") .padding() .border(Color.black)
                                Text("43") .padding() .border(Color.black)
                                Spacer()
                            }
                        }
                    }
                }
                if article.name .contains("Ensemble costume"){
                    VStack{
                        HStack{
                            Spacer()
                            Circle()
                                .fill(Color.black)
                                .frame(width: 40, height: 40)
                            Circle()
                                .fill(Color.blue)
                                .frame(width: 40, height: 40)
                            Circle()
                                .fill(Color.red)
                                .frame(width: 40, height: 40)
                            Spacer()
                            HStack{
                                Spacer()
                                Text("S") .padding() .border(Color.black)
                                Text("M") .padding() .border(Color.black)
                                Text("L") .padding() .border(Color.black)
                                Text("XL") .padding() .border(Color.black)
                                Spacer()
                            }
                        }
                    }
                }
                VStack{
                    Text(article.descriptif)
                        .padding()
                }
                // Partie button "Valider"
                Spacer()
                Button {
                    withAnimation {
                        done = true
                    }
                    DispatchQueue.main.asyncAfter(deadline: .now() + .milliseconds(2000)) {
                        presentationMode.wrappedValue.dismiss()
                    }
                    
                } label: {
                    Text("Valider ")
                        .foregroundColor(.white)
                        .font(.system(size: 30))
                        .padding()
                        .background(Color.gray.clipped())
                        .cornerRadius(10)
                }
            }
            .navigationBarHidden(done)
            if done {
                Color.black.opacity(0.5).edgesIgnoringSafeArea(.all)
                Image(systemName: "checkmark.circle.fill")
                    .font(.system(size: 70))
                    .foregroundColor(.green)
            }
        }
    }
}

struct DestinationCelluleClicable_Previews: PreviewProvider {
    static var previews: some View {
        DétailArticle(article: ArticleID(name:"chaussure", imageArticle: "fotohotel", price: "20" , descriptif: ""))
    }
}
