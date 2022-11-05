//
//  Splash.swift
//  TravelGo
//
//  Created by Afnan on 02/04/1444 AH.
//
import SwiftUI

struct Splash: View {
@State var isActive : Bool = false
@State private var size = 0.8
@State private var opacity = 0.5
var body: some View {
if isActive {
OnboardingView()
} else {
VStack {

            VStack {
              
                Image("Logo")
                    .font(.system(size: 80))
                    .foregroundColor(.blue)
              
            }
            .scaleEffect(size)
            .opacity(opacity)
            .onAppear {
                withAnimation(.easeIn(duration: 1.2)) {
                    self.size = 0.9
                    self.opacity = 1.00
                }
            }
        }
        .onAppear {
            DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
                withAnimation {
                    self.isActive = true
                }
            }
        }
    }
   
    
}
}

struct Splash_Previews: PreviewProvider {
static var previews: some View {
Splash()
}
}
