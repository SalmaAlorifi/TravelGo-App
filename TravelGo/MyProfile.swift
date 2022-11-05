//
//  MyProfile.swift
//  TravelGo
//
//  Created by Afnan on 02/04/1444 AH.
//

import SwiftUI

struct MyProfile: View {
    @State private var isPresentedFullScreenCover = false
    
    @State public var nameInput: String = ""
    @State public var bioInput: String = ""
    //
    @State public var selectedRows = Set<String>()
    // array of selection
    @State public var selection: String = "Who are you?"
    let id = ["Local", "Tourist"]
    // array of content
    let data = ["Music", "History", "Sport", "Fation", "Dance", "Food", "Cosplay", "Gaming", "Hiking"]
    //
    let items = ["Music", "History", "Sport", "Fation", "Dance", "Food", "Cosplay", "Gaming", "Hiking"]
    
    // size of the grig (each onw MAYBE!) - how many layout in the screen
    let layout = [
        //GridItem(.adaptive(minimum: 100))
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    var body: some View {
        
        ScrollView {
            
            // use pading for each component
            // ZStack{
            // Color(red: 230/255, green: 228/255, blue: 213/255)// or any other Color/Gradient/View you want
            //.edgesIgnoringSafeArea(.all) // optionally, if you want to cover the whole screen
            //                        List(selection: $selectedRows){
            //                            ForEach(items, id: \.self){ item in
            //                                Text(item)
            //
            //                            }
            //                        }
            
            // This VSack contain two VStack first for image and the second for the(Full name - Who are you - Bio - Pick Your intrest)
            VStack{
                // This VStack contain the image
                VStack (alignment: .center) {
                    Image(systemName: "person.crop.circle")
                        .resizable()
                        .frame(width: 100.0, height: 100.0)
                    //.background(Color.gray)
                        .padding()
                        .foregroundColor(Color("1"))
                    Image(systemName: "plus.circle")
                        .resizable()
                        .frame(width: 30, height: 30)
                        .padding(EdgeInsets(top:-40, leading: 90, bottom:10, trailing:0))
                    //  Spacer()
                }
                
                
                // This VStack contain (Full name - Who are you - Bio - Pick Your intrest)
                VStack (alignment: .leading){
                    
                    VStack (alignment: .leading){
                        Text("Full name")
                            .font(.title3.weight(.semibold))
                            .padding([.vertical], 2)
                        TextField(
                            "Enter your name" ,
                            text: $nameInput
                        )
                        .frame(width: 350, height: 40)
                        .textFieldStyle(PlainTextFieldStyle())
                        .cornerRadius(11)
                        .padding([.horizontal], 4)
                        .overlay(RoundedRectangle(cornerRadius: 11).stroke(Color.black))
                        .padding([.bottom], 35)
                    }
                    
                    
                    VStack (alignment: .leading){
                        // Picker
                        Text("Who are you?")
                            .font(.title3.weight(.semibold))
                            .padding([.vertical], 2)
                        Picker("Who are you?", selection: $selection){
                            ForEach(id, id: \.self){
                                Text($0)
                                    
                            }
                        }.frame(width: 350, height: 40)
                            .textFieldStyle(PlainTextFieldStyle())
                            .cornerRadius(11)
                            .padding([.horizontal], 4)
                            .overlay(RoundedRectangle(cornerRadius: 11).stroke(Color.black))
                            .padding([.bottom], 35)
                    }
                    
                    VStack (alignment: .leading){
                        Text("Bio")
                            .font(.title3.weight(.semibold))
                        //.padding(EdgeInsets(top:100, leading: 10, bottom:10, trailing:10))
                            .padding([.vertical], 2)
                        // How can I let this text filed act as adaptive
                        TextField(
                            "Write a brife describtion about you" ,
                            text: $bioInput
                        )
                        .frame(width: 350, height: 40)
                        
                        .textFieldStyle(PlainTextFieldStyle())
                        .cornerRadius(11)
                        .padding([.horizontal], 4)
                        .overlay(RoundedRectangle(cornerRadius: 11).stroke(Color.black))
                        //.padding([.horizontal], 10)
                        Spacer()
                            .frame(height: 100)
                            .padding([.bottom],-20)
                    }
                    // This VStack contain (Pick your intrest)
                    
                    VStack (alignment: .leading){
                        Text("Pick Your interest")
                            .font(.title3.weight(.semibold))
                            .padding([.vertical], 2 )
                        NavigationView{
                            List(selection: $selectedRows){
                                ForEach(items, id: \.self){ item in
                                    Text(item)
                                    // i wanna the text be in the center
                                    
                                }
                            }.navigationBarItems(trailing: EditButton())
                            
                                .listStyle(.inset)
                        }
                        .padding([.bottom], 40)
                    }
                    
                }
                VStack (alignment: .center){
                    NavigationLink(destination: Home()) {
                        Text("Save")
                            .padding(.all)
                            .frame(width: 315, height: 40)
                            .font(.title3.weight(.semibold))
                            .foregroundColor(.white)
                            .background(Color(red: 2/255, green: 85/255, blue: 99/255))
                            .cornerRadius(12)
                            .padding()
                        /*NavigationLink(destination: Home()) {
                            Button("Sign In", action: {
                                isPresentedFullScreenCover = true
                            })
                            //Text("Sign In")
                            padding(.all)
                            .frame(width: 315, height: 40)
                            .font(.title3.weight(.semibold))
                            .foregroundColor(.white)
                            .background(Color(red: 2/255, green: 85/255, blue: 99/255))
                            .cornerRadius(12)
                            .fullScreenCover(isPresented: $isPresentedFullScreenCover) {
                                Home()
                            }*/
                            
                            
                            
                        }
                    .navigationBarBackButtonHidden(true)// <-- you just need this line
                        
                        /* Button(action:  {
                         
                         }, label: {
                         Text("Save")
                         .frame(width: 315, height: 40)
                         .font(.title3.weight(.semibold))
                         .foregroundColor(.white)
                         .buttonStyle(.bordered)
                         .background(Color(red: 2/255, green: 85/255, blue: 99/255))
                         .mask(RoundedRectangle(cornerRadius: 12))
                         })*/
                    }
                    /*
                     NavigationLink(destination: MyProfile()) {
                     Text("Save")
                     .padding(.all)
                     .frame(width: 315, height: 40)
                     .font(.title3.weight(.semibold))
                     .foregroundColor(.white)
                     .background(Color(red: 2/255, green: 85/255, blue: 99/255))
                     //.frame(maxWidth: .infinity)
                     //.background(Color("1"))
                     .cornerRadius(12)
                     //.cornerRadius(15)
                     .padding()
                     .offset(x:1 ,y:5)
                     }
                     */
                }
                .padding()
                // }
            }
        }
    }


struct MyProfile_Previews: PreviewProvider {
    static var previews: some View {
        MyProfile()
    }
}
