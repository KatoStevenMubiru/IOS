//
//  HeadingView.swift
//  Uganda
//
//  Created by Kato Steven Mubiru on 01/11/2022.
//

import SwiftUI

struct HeadingView: View {
    
    var headingImage : String
    var headingText : String
    
    
    
    var body: some View {
        HStack {
            Image(systemName: headingImage)
                .foregroundColor(.accentColor)
                .imageScale(.large)
            
            Text(headingText)
                .fontWeight(.bold)
                .font(.title3)
        }
        .padding(.vertical)
    }
}

struct HeadingView_Previews: PreviewProvider {
    static var previews: some View {
        HeadingView(headingImage: "photo.on.rectangle.angled", headingText: "The Wilderness personified")
            .padding()
    }
}
