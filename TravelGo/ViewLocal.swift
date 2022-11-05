//
//  ViewLocal.swift
//  TravelGo
//
//  Created by Afnan on 02/04/1444 AH.
//
import SwiftUI

struct ViewLocal: View {
    @State private var isPresentedSheet = false
    var body: some View {
        NavigationView{
            VStack{
                Image("Saad Local")
                    .resizable()
                    .frame(width: 200,height: 200)
                    .cornerRadius(90)
                    .shadow(radius: 20)
                    .padding(.top,-250)
                    .offset(x: 2, y: 130)
                
                
                Text("Saad Muhammad")
                    .font(.title)
                    .fontWeight(.bold)
                    .offset(x: 2, y: 90)
                    .foregroundColor(Color("1"))
                
                HStack{
                    
                    Text("Bio")
                        .font(.title)
                        .fontWeight(.bold)
                        .offset(x: 2, y: 90)
                        .foregroundColor(Color("1"))
                    Spacer()
                    
                }.padding(15)
                
                
                
                RoundedRectangle(cornerRadius: 25)
                    .fill(.white)
                    .shadow(radius: 10)
                    .frame(width: 360, height: 100)
                    .overlay(
                        Text("I’m the perfect tour guide for all your tours and I specialize in highlighting all the best summer spots. Contact me for more information or justfollow my adventure ✌🏼😎"))
                    .font(.caption)
                    .offset(x: 2, y: 80)
                
                HStack{
                    
                    Text("Interests")
                        .font(.title)
                        .fontWeight(.bold)
                        .offset(x: 2, y: 90)
                        .foregroundColor(Color("1"))
                    Spacer()
                    
                }.padding(15)
                
                HStack{
                    
                    RoundedRectangle(cornerRadius: 25)
                        .fill(.white)
                        .shadow(radius: 10)
                        .frame(width: 90, height: 50)
                        .overlay(
                            Text("Music"))
                        .font(.caption)
                        .offset(x: 2, y: 70)
                    //Spacer()
                    
                    RoundedRectangle(cornerRadius: 25)
                        .fill(.white)
                        .shadow(radius: 10)
                        .frame(width: 90, height: 50)
                        .overlay(
                            Text("History"))
                        .font(.caption)
                        .padding()
                        .offset(x: 2, y: 70)
                }
                
              
               NavigationLink(destination: Chat()) {
                    Text("Chat")
                        .padding(.all)
                        .frame(width: 315, height: 40)
                        .font(.title3.weight(.semibold))
                        .foregroundColor(.white)
                        .background(Color(red: 2/255, green: 85/255, blue: 99/255))
                        .cornerRadius(12)
                        
                        .padding()
                        
                    
                    
                } .offset(x:1 ,y:90)
                    .navigationBarBackButtonHidden(true)
                
                
                /*Button("Chat", action: {
                    isPresentedSheet = true
                }).padding(.all)
                    .frame(width: 315, height: 40)
                    .font(.title3.weight(.semibold))
                    .foregroundColor(.white)
                    .background(Color(red: 2/255, green: 85/255, blue: 99/255))
                    .cornerRadius(12)
                    
                    .padding()
                    .offset(x:1 ,y:90)
                    .sheet(isPresented: $isPresentedSheet, content: {
                        Chat()
                    })
                */
                
                
                
               /* Button("Chat", action: {
                    isPresentedFullScreenCover = true
                       
                }).padding(.all)
                    .frame(width: 315, height: 40)
                    .font(.title3.weight(.semibold))
                    .foregroundColor(.white)
                    .background(Color(red: 2/255, green: 85/255, blue: 99/255))
                    .cornerRadius(12)
                    
                    .padding()
                    .offset(x:1 ,y:90)
                
                .fullScreenCover(isPresented: $isPresentedFullScreenCover) {
                    Chat()
                }
                */
               
            }
            
        }
    }}



struct ViewLocal_Previews: PreviewProvider {
    static var previews: some View {
        ViewLocal()
    }
}
