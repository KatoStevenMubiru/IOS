//
//  ContentView.swift
//  Uganda
//
//  Created by Kato Steven Mubiru on 31/10/2022.
//

import SwiftUI

struct ContentView: View {
    
    let animals : [Animal] = Bundle.main.decode("animals.json")
    
    var body: some View {
       
        NavigationView{
            
            List{
                
                CoverImageView()
                    .frame(height: 300)
                    .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
                
                ForEach(animals) { animal in
                    
                    NavigationLink(destination: AnimalDetailView(animal: animal)) {
                        
                        AnimalListView(animal: animal)
                    }// end of the navigation view
                    
                }
                
                
                
            }// end of list
            .navigationBarTitle("UGANDA", displayMode: .large)
            
        }// end of navigationView
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
