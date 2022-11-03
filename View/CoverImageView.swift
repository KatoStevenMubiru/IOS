//
//  CoverImageView.swift
//  Uganda
//
//  Created by Kato Steven Mubiru on 01/11/2022.
//

import SwiftUI

struct CoverImageView: View {
    // properties
    let coverImages:[CoverModel] = Bundle.main.decode("covers.json")
    
    
    // body
    
    var body: some View {
        TabView{
            
            ForEach(coverImages) { item in
                Image(item.name)
                    .resizable()
                    .scaledToFill()
            }
        }// end of tabview
        
        .tabViewStyle(PageTabViewStyle())
    }
    
}

// preview

struct CoverImageView_Previews: PreviewProvider {
    static var previews: some View {
        CoverImageView()
    }
}
