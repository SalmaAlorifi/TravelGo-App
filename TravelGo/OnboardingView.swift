//
//  OnboardingView.swift
//  TravelGo
//
//  Created by Hind on 07/04/1444 AH.
//

import SwiftUI

struct OnboardingView: View {
@State private var pageIndex = 0
private let pages: [Page] = Page.samplePages
private let dotAppearance = UIPageControl.appearance()
    @State private var isPresentedFullScreenCover = false

var body: some View {
  NavigationView {
        TabView(selection: $pageIndex) {
            ForEach(pages) { page in
                VStack {
                    HStack{
                        HStack{
                            if pageIndex == 0 || pageIndex == 1 {
                                Spacer()
                                Button("Skip") {
                                    goToLast()
                                    
                                }
                            }
                            
                        }.padding()
                    }
                    
                    Spacer()
                    PageView(page: page)
                    Spacer()
                    
                        if page == pages.last {
                            Button("Sign In!", action: {
                                isPresentedFullScreenCover = true
                            })
                            .fullScreenCover(isPresented: $isPresentedFullScreenCover) {
                               SignIn()
                            }
                            .foregroundColor(Color("1"))
                            
                                                            
                            
                            
                        } else {
                            Button("next", action: incrementPage)
                                .buttonStyle(.borderedProminent)
                                
                        }
                   
                    
                    Spacer()
                }
                .tag(page.tag)
            }
        }
        // for animations (sliding)
        .animation(.easeInOut, value: pageIndex)// 2
        .indexViewStyle(.page(backgroundDisplayMode: .interactive))
        // for the dots appearance
        .tabViewStyle(PageTabViewStyle())
        .onAppear {
            dotAppearance.currentPageIndicatorTintColor = .black
            dotAppearance.pageIndicatorTintColor = .gray
       }.navigationBarBackButtonHidden(true)
  }
  
}
func incrementPage() {
    pageIndex += 1
}

func goToZero() {
    pageIndex = 0
}
func goToLast()
{
    pageIndex = 2
    
}
func goToSignup() {
 pageIndex = 3
}
    
}

struct OnboardingView_Previews: PreviewProvider {
static var previews: some View {
OnboardingView()
}
}
