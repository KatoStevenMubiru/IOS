//
//  CategoryView.swift
//  AmericanShop
//
//  Created by Kato Steven Mubiru on 10/11/2022.
//

import SwiftUI

struct CategoryView: View {
    
    let category : CategoryModel
    
    var body: some View {
        
        Button(action: {}, label: {
            
            HStack(alignment: .center, spacing: 6) {
                
                Image(category.image)
                    .renderingMode(.template)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 20, height: 20,alignment: .center)
                
                Text(category.name)
                    .fontWeight(.light)
                
                Spacer()
                
                
                
            }// end of Hstack
            
            .padding()
            .background(Color.white.cornerRadius(15))
            .background(RoundedRectangle(cornerRadius: 15)
                .stroke(Color.blue, lineWidth: 2))
            
            
        })// end of button
        
    }
}

struct CategoryView_Previews: PreviewProvider {
    static var previews: some View {
        
        CategoryView(category: categories[0])
            .previewLayout(.sizeThatFits)
            .padding()
            .background(colorBackground)
    }
}
