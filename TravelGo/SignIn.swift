//
//  SignIn.swift
//  TravelGo
//
//  Created by Afnan on 02/04/1444 AH.
//
import SwiftUI

struct SignIn: View {
    @State var Password: String = ""
    @State var Email: String = ""
    @State private var isPresentedFullScreenCover = false
    var body: some View {
        NavigationView {
            VStack {
                Text("Sgin In")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(Color("1"))
                    .offset(x:1 ,y:-50)
                VStack (alignment: .leading, spacing: 6) {
                    //Text("Email")
                    //Text("Enter your email")
                    //  .font(.system(size: 15))
                    // .fontWeight(.regular)
                    //  .foregroundColor(Color.gray)
                    //  .padding(.leading, -160.0)
                    // .frame(width: 360.0, height: 50)
                    //.border(Color.black)
                    Text("Email")
                    TextField("Enter Your Email", text: $Email)
                        .padding(.trailing) // <1>, <2>
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    
                    
                    VStack (alignment: .leading, spacing: 6) {
                        Text("Password")
                        SecureField(
                            "Password",
                            text: $Password
                        )
                        .padding(.trailing) // <1>, <2>
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        
                        
                    }
                    
                }
                .padding(.horizontal)
                HStack {
                    NavigationLink(destination: RecoverPass()) {
                        Text("Forget your password?")
                            .font(.footnote)
                            .fontWeight(.medium)
                            .foregroundColor(Color(hue: 1.0, saturation: 0.493, brightness: 0.047, opacity: 0.645))
                            .padding(.leading)
                        Spacer()
                            .frame(height: 20)
                    }
                    
                    
                }
                
                NavigationLink(destination: Home()) {
                    Button("Sign In", action: {
                        isPresentedFullScreenCover = true
                    })
                    //Text("Sign In")
                        .padding(.all)
                        .foregroundColor(.white)
                        .frame(maxWidth: .infinity)
                        .background(Color("1"))
                        .cornerRadius(15)
                    //.cornerRadius(15)
                        .padding()
                        .offset(x:1 ,y:5)
                        .fullScreenCover(isPresented: $isPresentedFullScreenCover) {
                          Home()
                        }
                 
                }
                Text("or")
                    .font(.body)
                    .padding(.vertical, -10.0)
                    .offset(x:1 ,y:-2)
                ZStack {
                    ZStack{
                        
                        Text("Sign in with Apple")
                            .padding(.all)
                            .foregroundColor(.white)
                            .frame(maxWidth: .infinity)
                            .background(.black)
                            .cornerRadius(15)
                        //  .offset(x:0 ,y:1)
                        
                        //.cornerRadius(15)
                            .padding()
                        //.overlay(Image("apple.logo"))//
                        
                        //Image(systemName: "apple.logo")
                        
                        
                        
                    }
                    
                }
                Text("Sign in with Google")
                    .padding(.all)
                    .foregroundColor(.white)
                    .frame(maxWidth: .infinity)
                    .background(.black)
                    .cornerRadius(15)
                //.cornerRadius(15)
                    .padding()
                    .offset(x:1 ,y:-15)
                // Spacer()
                HStack {
                    Text("Don’t have an account?")
                        .fontWeight(.medium)
                        .font(.system(size: 15))
                    NavigationLink(destination: SignUp()) {
                        Text(" Sign up")
                            .font(.system(size: 15))
                            .fontWeight(.bold)
                            .foregroundColor(Color(red: 0.008, green: 0.335, blue: 0.387))
                            .padding(.leading, -9.0/*@END_MENU_TOKEN@*/)
                    }
                }
                //  RoundedRectangle(cornerRadius: 25.0, style:
                //          .continuous)
                //  .foregroundColor(Color(hue: 0.525, saturation: 0.331, brightness: 0.797))
                //    .frame(height: 44)
                //   .overlay(Text("Sign In"))//هو اللي يخليني اكتب فوق المستطيل
                
                
                .padding()
                
                // .navigationBarTitle(Text("Sgin In")
                // .font(.title))
                //  .navigationBarTitleDisplayMode(.inline)
                //  .toolbar {
                //       ToolbarItem(placement: .principal) {
                // Text("Sgin In")
                //  .font(.largeTitle.bold())
                // .padding(.top, 82.0)
                //   .accessibilityAddTraits([.isHeader])
                // .foregroundColor(Color("1"))
                // .offset(x:-5 ,y:50)
                //.offset(x:-5 ,y:50)
                //}
                //}
                
                
                
            }.navigationBarBackButtonHidden(true)
        }
    }
}

    
        struct SignIn_Previews: PreviewProvider {
            static var previews: some View {
                SignIn()
            }
        }
    
