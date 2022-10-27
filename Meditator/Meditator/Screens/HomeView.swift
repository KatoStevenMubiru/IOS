//
//  HomeView.swift
//  Meditator
//
//  Created by Kato Steven Mubiru on 26/10/2022.
//

import SwiftUI

struct HomeView: View {
    
    @AppStorage("onboarding") var isOnboardingViewActive:Bool = false
    var body: some View {
        VStack {
            //HEADER
            Spacer()
            
            ZStack {
                Circle()
                    .stroke(.green.opacity(0.5), lineWidth: 40)
                    .frame(width: 260,height: 260, alignment: .center)
                Circle()
                    .stroke(.green.opacity(0.2), lineWidth: 80)
                
                Image("character-2")
                    .resizable()
                    .scaledToFit()
                .padding()
            }
            
            // CENTER
            
            Text("Okwagaliza guma mutima mulungi")
                .font(.title3)
                .fontWeight(.light)
                .foregroundColor(.secondary)
                .multilineTextAlignment(.center)
                .padding()
            
            Spacer()
            
            
            
            
          
            Button(action : {
                
                isOnboardingViewActive = true
                // action
            }){
                Image(systemName: "arrow.triangle.2.circlepath.circle.fill")
                    .imageScale(.large)
                    
                Text("Tudeyo Emabega")
                    .font(.system(.title3, design: .rounded))
                    .fontWeight(.bold)
                    
            }// end of button
            .buttonStyle(.borderedProminent)
            .buttonBorderShape(.capsule)
            .controlSize(.large)
            
            
        }// End of Vertical Stack
        
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
