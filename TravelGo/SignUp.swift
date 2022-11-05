//
//  SignUp.swift
//  TravelGo
//
//  Created by Afnan on 02/04/1444 AH.
//

import SwiftUI

struct SignUp: View {
    @State var YourName: String = ""
    @State var Email: String = ""
    @State var Password: String = ""
    @State private var isPresentedFullScreenCover = false
    var body: some View {
        NavigationView {
            
            VStack(alignment: .leading) {
                
                Text("Your Name")
                TextField("Enter Your Name", text: $YourName)
                    .padding(.trailing) // <1>, <2>
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                // Text("Enter Your Name: \(YourName)")
                
                
                Text("Your Email")
                TextField("Enter Your Email", text: $Email)
                    .padding(.trailing) // <1>, <2>
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                // Text("Enter Your Name: \(YourName)")
                
                
                Text("Password")
                SecureField(
                    "Password",
                    text: $Password
                )
                .padding(.trailing) // <1>, <2>
                .textFieldStyle(RoundedBorderTextFieldStyle())
                // Text("Enter Your
                
                
                    NavigationLink(destination: MyProfile()) {
                        Text("Sign up")
                            .padding(.all)
                            .foregroundColor(.white)
                            .frame(maxWidth: .infinity)
                            .background(Color("1"))
                            .cornerRadius(15)
                            .cornerRadius(15)
                            .padding()
                        
                            .offset(x:1 ,y:5)
                    }.navigationBarBackButtonHidden(true)
                    Text("or")
                        .font(.body)
                        .padding(.leading, 185.0)
                    
                    Text("Sign up with Apple")
                        .padding(.all)
                        .foregroundColor(.white)
                        .frame(maxWidth: .infinity)
                        .background(.black)
                        .cornerRadius(15)
                    //  .offset(x:0 ,y:1)
                    
                    //.cornerRadius(15)
                        .padding()
                        .offset(x:1 ,y:-15)
                    
                    Text("Sign up with Google")
                        .padding(.all)
                        .foregroundColor(.white)
                        .frame(maxWidth: .infinity)
                        .background(.black)
                        .cornerRadius(15)
                    //.cornerRadius(15)
                        .padding()
                        .offset(x:1 ,y:-25)
                    
                    
                    
                }.padding([.top, .leading, .bottom])
                //.offset(x:2 ,y:-150)
                
                
                
                    .navigationBarTitleDisplayMode(.inline)
                    .toolbar {
                        ToolbarItem(placement: .principal) {
                            Text("Sgin Up")
                                .font(.largeTitle.bold())
                                .accessibilityAddTraits(.isHeader)
                                .foregroundColor(Color("1"))
                                .offset(x:-5 ,y:50)
                        }
                    }.navigationBarBackButtonHidden(true)
                
                
            }
            
            
            
        }
        
        
        
    }



struct SignUp_Previews: PreviewProvider {
    static var previews: some View {
        SignUp()
    }
}
