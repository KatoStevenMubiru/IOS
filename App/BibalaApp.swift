//
//  BibalaApp.swift
//  Bibala
//
//  Created by Kato Steven Mubiru on 28/10/2022.
//

import SwiftUI

@main
struct BibalaApp: App {
    
    @AppStorage("isOnboarding") var isOnboarding: Bool = true
    var body: some Scene {
        WindowGroup {
            if isOnboarding {
               
                ContentView()

            }
            else{
                OnboardingView()
            }
        }
    }
}
