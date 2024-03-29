//
//  TitleView.swift
//  AmericanShop
//
//  Created by Kato Steven Mubiru on 11/11/2022.
//

import SwiftUI

struct TitleView: View {
    
    var title: String
    
    var body: some View {
        
        HStack {
            Text(title)
                .font(.largeTitle)
            .fontWeight(.heavy)
            
            
            Spacer()
            
        }// end of hstack
        .padding(.horizontal)
        .padding(.top, 15)
        .padding(.bottom, 15)
        
    }
}

struct TitleView_Previews: PreviewProvider {
    
    static var previews: some View {
        
        TitleView(title: "Helmet")
            .previewLayout(.sizeThatFits)
            .background(colorBackground)
    }
}
