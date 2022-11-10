//
//  LogoView.swift
//  AmericanShop
//
//  Created by Kato Steven Mubiru on 09/11/2022.
//

import SwiftUI

struct LogoView: View {
    var body: some View {
        
        HStack(spacing : 4) {
            
            Text("A")
                .font(.title3)
                .fontWeight(.black)
            
        
            Image("logo-dark")
                .resizable()
                .scaledToFit()
                .frame(width: 30, height: 30, alignment: .center)
            
            Text("FOOTBALL")
                .font(.title3)
                .fontWeight(.light)
            
        }// end of hstack
    }
}

struct LogoView_Previews: PreviewProvider {
    static var previews: some View {
        LogoView()
            .previewLayout(.sizeThatFits)
    }
}
