//
//  ContentView.swift
//  Meditator
//
//  Created by Kato Steven Mubiru on 26/10/2022.
//

import SwiftUI

struct ContentView: View {
    
@AppStorage("onboarding") var isOnboardingViewActive : Bool = true
    
    var body: some View {
        ZStack {
            if isOnboardingViewActive{
                
                OnboardingView()
            } else{
                HomeView()
            }
            
            Text("Hello, world!")
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
