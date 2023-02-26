//
//  ChatMessageApp.swift
//  ChatMessage
//
//  Created by Benji Loya on 26/02/2023.
//

import SwiftUI
import Firebase

@main
struct ChatMessageApp: App {
    init(){
        FirebaseApp.configure()
    }
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
