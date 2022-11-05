//
//  CardView1.swift
//  TravelGo
//
//  Created by salma alorifi on 07/04/1444 AH.
//


import SwiftUI

struct CardView1: View {
    var image: String
    var category: String
    var heading: String
    @State private var isPresentedSheet = false
    var body: some View {
        VStack {
            Image(image)
                .resizable()
            //.frame(width: 300,height: 200)
                //.cornerRadius(90)
                .shadow(radius: 20)
                .aspectRatio(contentMode: .fit)
                .frame(width: 300 , height: 300)

            HStack {
                VStack(alignment: .leading) {
                    Text(category)
                        .font(.headline)
                        .foregroundColor(.secondary)
                    Text(heading)
                        .font(.system(.title))
                        .fontWeight(.black)
                        .foregroundColor(.black)
                        .lineLimit(3)
                    
                    Button("View", action: {
                        isPresentedSheet = true
                    }) .foregroundColor(Color("1"))
                        
                
                        
                        .sheet(isPresented: $isPresentedSheet, content: {
                            ViewLocal()
                        })
                    
                   /*NavigationLink {
                       ViewLocal()
                    } label: {
                        Text("view")
                            .foregroundColor(Color("1"))
                    }*/
                    /*Button("View") {
                        /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                    }.foregroundColor(Color("Color 1"))
                       */

                }
                .layoutPriority(100)

                Spacer()
            }
            .padding()
        }
        .cornerRadius(30)
        .overlay(
            RoundedRectangle(cornerRadius: 10)
                .stroke(Color(.sRGB, red: 150/255, green: 150/255, blue: 150/255, opacity: 0.1), lineWidth: 1)
        )
        .padding([.top, .horizontal])
    }
    }

struct CardView1_Previews: PreviewProvider {
    static var previews: some View {
        CardView1(image: "Saad Local", category: "Local", heading: "Saad ")
    }
}
