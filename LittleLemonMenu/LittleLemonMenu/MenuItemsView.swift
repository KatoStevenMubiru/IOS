//
//  MenuItemsView.swift
//  LittleLemonMenu
//
//  Created by Kato Steven Mubiru on 16/12/2022.
//

import SwiftUI

struct MenuItemsView: View {
    private var gridItem = [GridItem(.flexible()), GridItem(.flexible()),GridItem(.flexible())]
    
    var body: some View {
        
        NavigationStack {
            ScrollView {
                Text("Food")
                   
                LazyVGrid(columns: gridItem, spacing: 5) {
                    
                    
                    ForEach(0 ..< 10) { item in
                        Rectangle()
                            .fill(.black)
                            .frame(width: 100, height: 100)
                    } // end of for each loop
                }// end of lazyVgrid
                Text("Drinks")
                   
                LazyVGrid(columns: gridItem, spacing: 5) {
                    
                    
                    ForEach(0 ..< 10) { item in
                        Rectangle()
                            .fill(.black)
                            .frame(width: 100, height: 100)
                    } // end of for each loop
                }// end of lazyVgrid
                Text("Desserts")
                   
                LazyVGrid(columns: gridItem, spacing: 5) {
                    
                    
                    ForEach(0 ..< 10) { item in
                        Rectangle()
                            .fill(.black)
                            .frame(width: 100, height: 100)
                    } // end of for each loop
                }// end of lazyVgrid
            }// end of scroll view
            .navigationTitle("Menu")
            .toolbar{
                
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button {
                        //
                    } label: {
                        Image(systemName: "list.bullet.circle")
                            .foregroundColor(.blue)
                    }

                }
                
                
            }
        }
    }
}

struct MenuItemsView_Previews: PreviewProvider {
    static var previews: some View {
        MenuItemsView()
    }
}
