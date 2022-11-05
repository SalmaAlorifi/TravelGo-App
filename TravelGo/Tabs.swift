//
//  Tabs.swift
//  TravelGo
//
//  Created by salma alorifi on 07/04/1444 AH.
// 

import SwiftUI

struct Tabs: View {
    var body: some View {
        TabView {
          Home()
                .badge("")
                .tabItem {
                    Label("Home", systemImage: "house")
                }
           
            Chat()
                .badge(1)
                .tabItem {
                    Label("Chat", systemImage: "ellipsis.message.fill")
                }
            MyProfile()
                .badge("")
                .tabItem {
                    Label("Profile", systemImage: "person")
                }
            
            
    
        }
    }
}

struct Tabs_Previews: PreviewProvider {
    static var previews: some View {
        Tabs()
    }
}
