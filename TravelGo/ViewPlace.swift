//
//  ViewPlace.swift
//  TravelGo
//
//  Created by Afnan on 02/04/1444 AH.
//

import SwiftUI

struct ViewPlace: View {
    @Environment(\.openURL) var openURL
    var body: some View {
        VStack{
            Image("KingdomT")
                .resizable()
                .frame(width: 320 , height: 201)
                .cornerRadius(12)
                .padding([.bottom], 40)
            
            
            
            HStack {
                VStack(alignment: .leading) {
                    Text("Kingdom Tower")
                        .font(.system(.title))
                        .fontWeight(.black)
                        .foregroundColor(.black)
                        .lineLimit(3)
                        .font(.headline)
                        .foregroundColor(.secondary)
                    
                    Text("Saudi Arabia, Riyadh")
                        //.font(.system(.title))
                        //.fontWeight(.black)
                        //.foregroundColor(.secondary)
                        //.lineLimit(3)
                        .font(.headline)
                        .foregroundColor(.secondary)
                        .font(.headline)
                        //.foregroundColor(.secondary)
                        
                    
                    Text("\nLocated in the heart of the city and setting new standards for luxury, Al Faisaliah Hotel is one of the most sought-after addresses in Saudi Arabia. Its timeless elegance, central location and panoramic views are complemented by Mandarin Oriental’s signature service to ensure a truly unforgettable Arabian experience.The property is currently undergoing a guestroom and public area renovation, scheduled for completion in 2022, after which the hotel will be rebranded as Mandarin Oriental Al Faisaliah, Riyadh.")
                        .font(.headline)
                        .foregroundColor(.secondary)
                    
                }
                
                .layoutPriority(100)
                
                Spacer()
                
            }
            .padding()
            
            Button(action:  {
                openURL(URL(string: "https://maps.apple.com/?address=Kingdom%20Centre,%20King%20Fahad%20Road,%20Riyadh%2011321,%20Saudi%20Arabia&auid=10572739055188314839&ll=24.711399,46.674905&lsp=9902&q=Kingdom%20Centre")!)
            }, label: {
                Text("Location")
                    .frame(width: 315, height: 40)
                    .font(.title3.weight(.semibold))
                    .foregroundColor(.white)
                    .buttonStyle(.bordered)
                    .background(Color(red: 2/255, green: 85/255, blue: 99/255))
                    .mask(RoundedRectangle(cornerRadius: 12))
            })


        }
        .cornerRadius(30)
        .overlay(
            RoundedRectangle(cornerRadius: 10)
                .stroke(Color(.sRGB, red: 150/255, green: 150/255, blue: 150/255, opacity: 0.1), lineWidth: 1)
        )
        .padding([.top, .horizontal])
        
        
    }
}

    

struct ViewPlace_Previews: PreviewProvider {
    static var previews: some View {
        ViewPlace()
    }
}
