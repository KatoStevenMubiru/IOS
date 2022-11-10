//
//  PlayerTabView.swift
//  AmericanShop
//
//  Created by Kato Steven Mubiru on 09/11/2022.
//

import SwiftUI

struct PlayerTabView: View {
    var body: some View {
        TabView{
            
            ForEach(players){ playerModel in
                
                PlayerItemView(player: playerModel)
                   
                
                
                
                
                
            }
            
            
            
        }// end of tabview
        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
    }
}

struct PlayerTabView_Previews: PreviewProvider {
    static var previews: some View {
        PlayerTabView()
            .previewLayout(.sizeThatFits)
            .background(Color.gray)
    }
}
