//
//  ViewTip.swift
//  TravelGo
//
//  Created by Afnan on 02/04/1444 AH.
//

import SwiftUI

struct ViewTip: View {
    @Environment(\.openURL) var openURL
    var body: some View {
        NavigationView{
            ScrollView{
                VStack(alignment: .center){
                    
                    VStack (alignment: .center) {
                        Image("tipImage")
                            .resizable()
                            .frame(width: 320 , height: 201)
                            .cornerRadius(12)
                            .padding([.bottom], 40)
                    }
                    
                    HStack () {
                        
                        VStack(alignment: .leading) {
                            Text("Before Travling to Saudi Arabia")
                                .font(.system(.title2))
                                .fontWeight(.black)
                                .foregroundColor(.black)
                                .lineLimit(3)
                                .font(.headline)
                                .foregroundColor(.secondary)
                                .padding([.horizontal], 20)
                                .padding([.bottom], 1)
                            
                            Text("Saudi Arabia, Riyadh")
                                .padding([.bottom], 36)
                            //.font(.system(.title))
                            //.fontWeight(.black)
                            //.foregroundColor(.secondary)
                            //.lineLimit(3)
                                .font(.headline)
                                .foregroundColor(.secondary)
                                .font(.headline)
                                .padding([.horizontal], 20)
                            //.foregroundColor(.secondary)
                            
                            //ScrollView{
                            Text("Here is a comprehensive travel guide to Saudi Arabia with advice and information you need to visit the country. You must have a certificate of vaccination (2 shots), travel insurance, and other documents before arriving (purchased along with your visa) You must register you immunization information on the government website as soon as you have your visa and no later than 72 hours prior to travel. You can apply for an e-visa for a trip to Saudi Arabia at visitsaudi.com. The total cost of the visa is 535 Saudi Rials, or around 142 US Dollars. The visa is valid for one year from the date of issuance and entitles you to a 90-day stay in Saudi Arabia.")
                                .font(.headline)
                                .frame(width: 335)
                                .padding([.horizontal], 20)
                                .font(.headline)
                                .foregroundColor(Color.gray)
                                .foregroundColor(.secondary)
                                .padding([.bottom], 36)
                            // }
                        }
                        
                        
                        // .layoutPriority(100)
                        
                        // Spacer()
                    }
                    VStack (alignment: .center){
                        /*  Link(destination: URL(string: "https://www.agoda.com/travel-guides/saudi-arabia/top-regions/travel-to-saudi-arabia-tips-things-to-know-before-a-trip-to-ksa?cid=1844104"
                         
                         )?,
                         label: {
                         Label(
                         title: {
                         Text("Read more")
                         
                         }
                         icon: {
                         
                         }                            ),
                         }
                         )*/
                        //                        Link("Design+Code",
                        //                              destination: URL(string: "https://designcode.io")!)
                        //                                    .font(.title)
                        //                                    .foregroundColor(.purple)
                        Button(action:  {
                            openURL(URL(string: "https://www.agoda.com/travel-guides/saudi-arabia/top-regions/travel-to-saudi-arabia-tips-things-to-know-before-a-trip-to-ksa?cid=1844104")!)
                        }, label: {
                            Text("Read more")
                                .frame(width: 315, height: 40)
                                .font(.title3.weight(.semibold))
                                .foregroundColor(.white)
                                .buttonStyle(.bordered)
                                .background(Color(red: 2/255, green: 85/255, blue: 99/255))
                                .mask(RoundedRectangle(cornerRadius: 12))
                        })
                        
                    }
                }
                /*TabView {
                 Home()
                 .badge(1)
                 .tabItem {
                 Label("Home", systemImage: "house")
                 }
                 }*/
            }
        }
    }
    
    struct ViewTip_Previews: PreviewProvider {
        static var previews: some View {
            ViewTip()
        }
    }
}
