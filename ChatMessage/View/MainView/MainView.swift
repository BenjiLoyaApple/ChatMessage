//
//  ContentView.swift
//  ChatMessage
//
//  Created by Benji Loya on 26/02/2023.
//

import SwiftUI

struct MainView: View {
    var body: some View {
//        MARK: TabView with recent post's and profile tabs
        
        TabView{
            Text("Home page")
                .tabItem{
                    Image(systemName: "house")
                    Text("Home")
                }
            ProfileView()
                .tabItem{
                    Image(systemName: "person.circle")
                    Text("Profile")
                }
        }
//        Canging Tab Lable Tint To Black
        .tint(.black)
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
