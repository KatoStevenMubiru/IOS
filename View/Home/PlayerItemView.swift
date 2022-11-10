//
//  PlayerItemView.swift
//  AmericanShop
//
//  Created by Kato Steven Mubiru on 09/11/2022.
//

import SwiftUI

struct PlayerItemView: View {
    
    let player : playerModel
    
    var body: some View {
        
        Image(player.image)
            .resizable()
            .scaledToFit()
            .cornerRadius(15)
        
    }
}

struct PlayerItemView_Previews: PreviewProvider {
    static var previews: some View {
        PlayerItemView(player: players[0])
            .previewLayout(.sizeThatFits)
            .padding()
            .background(colorBackground)
    }
}
