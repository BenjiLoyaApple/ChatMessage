//
//  ContentView.swift
//  ChatMessage
//
//  Created by Benji Loya on 26/02/2023.
//

import SwiftUI

struct ContentView: View {
    @AppStorage("log_status") var logStatus: Bool = false
    var body: some View {
//        MARK: Redirecting User Based on Log Status
        if logStatus {
            MainView()
        }else{
            LoginView()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
