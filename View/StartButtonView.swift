//
//  StartButtonView.swift
//  Bibala
//
//  Created by Kato Steven Mubiru on 28/10/2022.
//

import SwiftUI

struct StartButtonView: View {
    
    @AppStorage("isOnboarding") var isOnboarding: Bool?
    
    var body: some View {
        Button( action : {
            
        isOnboarding = true
            
        }){
            HStack(spacing : 8) {
                Text("Start")
                
                Image(systemName: "arrow.right.circle")
                    .imageScale(.large)
            }
            .padding(.horizontal , 16)
            .padding(.vertical , 10)
            .background(
                Capsule().strokeBorder(Color.white, lineWidth: 1.25)
            
            )
        }
        .accentColor(Color.white)
        
        
    }
}

struct StartButtonView_Previews: PreviewProvider {
    static var previews: some View {
        StartButtonView()
            .previewLayout(.sizeThatFits)
        
    }
}
