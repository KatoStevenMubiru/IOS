//
//  MenuItemsOptionsView.swift
//  LittleLemonMenu
//
//  Created by Kato Steven Mubiru on 16/12/2022.
//

import SwiftUI

struct MenuItemsOptionsView: View {
    var body: some View {
        NavigationView{
            ScrollView {
                VStack {
                    Spacer()
                    Text("SELECTED CATEGORIES")
                        .foregroundColor(.gray)
                        
                    Text("Food")
    
                    Text("Drink")
                    Text("Dessert\n\n")
                    
                    
                    
                    Text("SORT BY")
                        .foregroundColor(.gray)
                    
                    Text("Most Popular")
                    Text("Price $-$$$")
                    Text("A-Z")
            
                      
                    
                    
                }// end of VSTACK
                .frame(width: 380, alignment: .leading)
            }// end of scroll view
            .navigationTitle("Filter")
        }
        
    }
}

struct MenuItemsOptionsView_Previews: PreviewProvider {
    static var previews: some View {
        MenuItemsOptionsView()
    }
}
