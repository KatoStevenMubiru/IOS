//
//  InsertFactView.swift
//  Uganda
//
//  Created by Kato Steven Mubiru on 03/11/2022.
//

import SwiftUI

struct InsertFactView: View {
    let animal : Animal
    
    var body: some View {
        
        GroupBox{
            
            TabView{
                
                ForEach(animal.fact , id: \.self) { item in
                    
                    Text(item)
                }// end of the for each loop
                
            }// end of tab view
            .tabViewStyle(PageTabViewStyle())
            .frame(minHeight : 148, idealHeight: 168 , maxHeight: 180)
            
        }// end of group box
    }
}

struct InsertFactView_Previews: PreviewProvider {
    static let animals : [Animal] = Bundle.main.decode("animals.json")
    
    static var previews: some View {
        InsertFactView(animal: animals[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
