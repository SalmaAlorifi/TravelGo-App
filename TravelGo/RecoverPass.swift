//
//  RecoverPass.swift
//  TravelGo
//
//  Created by Afnan on 02/04/1444 AH.
//

import SwiftUI

struct RecoverPass: View {
    @State private var email: String = ""
    @State private var showingAlert = false
    var body: some View {
        NavigationView{
        
            ZStack (alignment: .leading) {
                VStack{
                    
                    
                    
                    
                    
                    Text("Enter your email address and we will send you a rest password link to your email index.")
                        .padding(.top, -230.0)
                        .offset(x:2 ,y:5)
                }
                .padding(.all)
                VStack (spacing: 30) {
                    Text("Your email address")
                        .fontWeight(.bold)
                        .padding(.trailing, 209.0)
                    TextField("Enter your email", text: $email)
                        .padding(.trailing) // <1>, <2>
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .offset(x:2 ,y:-10)
                    VStack{
                        // Text("Reset Password")
                        //    .padding(.all)
                        //  .foregroundColor(.white)
                        //  .frame(maxWidth: .infinity)
                        //.background(.black)
                        // .background(Color("1"))
                        // .cornerRadius(15)
                        Button("Reset Password") {
                            showingAlert = true
                        }
                        .buttonStyle(.borderedProminent)
                        .tint(Color("1"))
                        .frame(maxWidth: .infinity)
                        .alert("Check your email", isPresented: $showingAlert) {
                            Button("OK", role: .cancel) { }
                        }
                        .padding(/*@START_MENU_TOKEN@*/[.top, .trailing]/*@END_MENU_TOKEN@*/)
                    }
                }
                .padding(.leading)
                
                
                
                
                
                
                
                
                .navigationBarTitleDisplayMode(.inline)
                .toolbar {
                    ToolbarItem(placement: .principal) {
                        Text("Recover Password")
                            .font(.largeTitle.bold())
                            .accessibilityAddTraits(.isHeader)
                            .foregroundColor(Color("1"))
                            .offset(x:-5 ,y:100)
                    }
                }
                
                
                
            }
            
            
        }
    }
}
    
    
    struct RecoverPass_Previews: PreviewProvider {
        static var previews: some View {
            RecoverPass()
        }
    }

