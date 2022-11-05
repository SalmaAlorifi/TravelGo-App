//
//  CardView2.swift
//  TravelGo
//
//  Created by salma alorifi on 07/04/1444 AH.
//

import SwiftUI

struct CardView2: View {
    
    var image2: String
    var category2: String
    var heading2: String
    @State private var isPresentedSheet = false
    var body: some View {
        VStack {
            Image(image2)
                .resizable()
            //.frame(width: 300,height: 200)
                //.cornerRadius(90)
                .shadow(radius: 20)
                .aspectRatio(contentMode: .fit)
                .frame(width: 300 , height: 300)

            HStack {
                VStack(alignment: .leading) {
                    Text(category2)
                        .font(.headline)
                        .foregroundColor(.secondary)
                    Text(heading2)
                        .font(.system(.title))
                        .fontWeight(.black)
                        .foregroundColor(.black)
                        .lineLimit(3)
                   
                    Button("View", action: {
                        isPresentedSheet = true
                    }) .foregroundColor(Color("1"))
                        
                
                        
                        .sheet(isPresented: $isPresentedSheet, content: {
                            ViewPlace()
                        })
                    
                    /*NavigationLink {
                       ViewPlace()
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
    

struct CardView2_Previews: PreviewProvider {
    static var previews: some View {
        CardView2(image2: "KingdomT", category2: "Places", heading2: "Kingdom Tawer ")
    }
}
