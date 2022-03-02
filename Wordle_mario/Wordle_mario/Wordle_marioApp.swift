//
//  Wordle_marioApp.swift
//  Wordle_mario
//
//  Created by  on 2/2/22.
//

import SwiftUI
import Firebase

@main
struct Wordle_marioApp: App {
    
    init() {
            FirebaseApp.configure()
        }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
