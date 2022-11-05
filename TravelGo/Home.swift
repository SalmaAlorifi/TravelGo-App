//
//  Home.swift
//  TravelGo
//
//  Created by Afnan on 02/04/1444 AH.
//

import SwiftUI

struct Home: View {
   
    var body: some View {
        
        NavigationView {
           
                
                
                VStack {
                    ScrollView(showsIndicators: false) {
                        
                            HStack {
                                VStack(alignment: .leading) {
                                    Image("john")
                                        .resizable()
                                        .frame(width: 50,height: 50)
                                        .cornerRadius(90)
                                        .frame(maxWidth: .infinity, maxHeight: 0, alignment: .trailing)
                                        .listRowInsets(EdgeInsets())
                                    
                                    Text("Welcome To Riyadh")
                                        .font(.caption)
                                        .foregroundColor(.secondary)
                                    // .frame(width: 20, height: 20, alignment: .center)
                                    
                                    Text("John Wells")
                                        .font(.system(.largeTitle, design: .rounded))
                                        .fontWeight(.black)
                                        .foregroundColor(Color("1"))
                                    
                                    // .listRowInsets(EdgeInsets())
                                    // .frame(width: 20, height: 20, alignment: .center)
                                    /*Image("john")
                                     .resizable()
                                     .frame(width: 90,height: 90)
                                     .cornerRadius(90)
                                     .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .trailing)
                                     .listRowInsets(EdgeInsets())*/
                                    //.offset(x:19 , y:0)
                                }
                                .layoutPriority(100)
                                
                                Spacer()
                            }
                            .padding([.top, .horizontal])
                            .layoutPriority(-100)
                            
                            //Divider()
                            
                            
                            // // // // ///  /// /// ///
                            
                            
                            ScrollView(.horizontal, showsIndicators: false) {
                                
                                HStack {
                                    VStack(alignment: .leading) {
                                        //Text("Meet with locals ")
                                        //.font(.caption)
                                        //.foregroundColor(Color("Color 1"))
                                        
                                        
                                        Text("Meet with locals ")
                                            .font(.system(.title, design: .rounded))
                                            .fontWeight(.black)
                                            .foregroundColor(Color("1"))
                                        
                                        
                                        // NavigationLink {
                                        //  ViewLocal()
                                        // } label: {
                                        //  Text("view all")
                                        //   .foregroundColor(Color("Color 1"))
                                        //}
                                    }
                                    .layoutPriority(100)
                                    
                                    
                                    Spacer()
                                }
                                .padding([.top, .horizontal])
                                .layoutPriority(-100)
                                
                                HStack {
                                    
                                    CardView1(image: "Saad Local", category: "Local", heading: "Saad ")
                                        .frame(width: 300)
                                    
                                    CardView1(image: "Ahmad", category: "Local", heading: "Ahamd ")
                                        .frame(width: 300)
                                    
                                    
                                    CardView1(image: "yas", category: "Local", heading: "Yassmen ")
                                        .frame(width: 300)
                                }
                                
                                
                                Divider()
                                
                                // //
                                
                                
                                
                                
                                
                                HStack {
                                    VStack(alignment: .leading) {
                                        //Text("Explore places in the riyadh   ")
                                        //  .font(.caption)
                                        // .foregroundColor(Color("Color 1"))
                                        
                                        Text("Explore places in the riyadh   ")
                                            .font(.system(.title, design: .rounded))
                                            .fontWeight(.black)
                                            .foregroundColor(Color("1"))
                                    }
                                    .layoutPriority(100)
                                    
                                    Spacer()
                                }
                                .padding([.top, .horizontal])
                                .layoutPriority(-100)
                                
                                
                                
                                HStack {
                                    CardView2(image2: "KingdomT", category2: "Places", heading2: "Kingdom Tower ")
                                        .frame(width: 300)
                                    
                                    CardView2(image2: " Boulevard", category2: "Places", heading2: "Riyadh Boulevard City ")
                                        .frame(width: 300)
                                    
                                    
                                    CardView2(image2: "KAFD", category2: "Places", heading2: "King abdullah financial district ")
                                        .frame(width: 300)
                                }
                                
                                
                                
                                Divider()
                                
                                ///
                                
                                
                                
                                HStack {
                                    VStack(alignment: .leading) {
                                        // Text("Meet with locals ")
                                        // .font(.caption)
                                        // .foregroundColor(Color("Color 1"))
                                        
                                        Text("Tips for visiting ")
                                            .font(.system(.largeTitle, design: .rounded))
                                            .fontWeight(.black)
                                            .foregroundColor(Color("1"))
                                    }
                                    .layoutPriority(100)
                                    
                                    Spacer()
                                }
                                .padding([.top, .horizontal])
                                .layoutPriority(-100)
                                
                                
                                HStack {
                                    CardView3(image3: "BTT", category3: "Tips", heading3: "Before travling ")
                                        .frame(width: 300)
                                    
                                    CardView3(image3: "Flag", category3: "Tips", heading3: "during the traveling ")
                                        .frame(width: 300)
                                    
                                    
                                    CardView3(image3: "Air 2", category3: "Tips", heading3: "After the traveling ")
                                        .frame(width: 300)
                                }
                            }
                        }
                    
                }
        }.navigationBarBackButtonHidden(true)
        }
   }




    
    struct Home_Previews: PreviewProvider {
        static var previews: some View {
            Home()
        }
    }
