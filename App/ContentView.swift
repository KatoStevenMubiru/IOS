//
//  ContentView.swift
//  Bibala
//
//  Created by Kato Steven Mubiru on 28/10/2022.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isShowingSettings: Bool = false
    
    var fruits : [Fruit] = fruitsData
    
    var body: some View {
        NavigationView{
            
            List {
                ForEach(fruits.shuffled()) { fruit in
                    
                    NavigationLink(destination: FruitDetailView(fruit: fruit)){
                        
                        FruitRowView(fruit: fruit)
                            .padding(.vertical, 4)
                        
                    }
                    
                }
                
            }
            .navigationTitle("Fruits")
            .navigationBarItems( trailing: Button(action: {
                isShowingSettings = true
            }){
                
                Image(systemName: "slider.horizontal.3")
            }// end of button
                .sheet(isPresented: $isShowingSettings){
                    SettingsView()
                    
                }
            )
        }// navigation view
            
       
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(fruits: fruitsData)
        
    }
}
