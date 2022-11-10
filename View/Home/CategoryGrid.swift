//
//  CategoryGrid.swift
//  AmericanShop
//
//  Created by Kato Steven Mubiru on 10/11/2022.
//

import SwiftUI

struct CategoryGrid: View {
    
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false, content: {
            LazyHGrid(rows: grid, alignment:.center, spacing: columns, pinnedViews: [], content: {
                
                Section(header : Text("CATEGORIES").foregroundColor(.blue).rotationEffect(Angle(degrees: -90)).fontWeight(.bold), footer: Text("CATEGORIES").foregroundColor(.blue).rotationEffect(Angle(degrees: -90)).fontWeight(.bold)) {
                    ForEach(categories){
                        item in
                        
                        CategoryView(category: item)
                        
                        
                        
                    }
                }
                
                
                
            })// end of lazy grid

            
           
            
            
        }) // end of scrollView
        .frame(height: 150)
        .padding(.horizontal, 15)
        .padding(.vertical, 15)
    }
}

struct CategoryGrid_Previews: PreviewProvider {
    static var previews: some View {
        CategoryGrid()
            .previewLayout(.sizeThatFits)
            .padding()
            .background(colorBackground)
    }
}
