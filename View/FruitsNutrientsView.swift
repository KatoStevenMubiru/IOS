//
//  FruitsNutrientsView.swift
//  Bibala
//
//  Created by Kato Steven Mubiru on 30/10/2022.
//

import SwiftUI

struct FruitsNutrientsView: View {
    
    var fruit : Fruit
    let nutrients: [String] = ["Energy", "Sugar", "Fat", "Protein", "Vitamins", "Minerals"]
    
    
    var body: some View {
        GroupBox(){
            
            DisclosureGroup("Nutritional value per 100g"){
                
                ForEach(0..<nutrients.count, id: \.self ) { item in
                    Divider().padding(.vertical, 2)
                    
                    HStack {
                        Group {
                            Image(systemName: "info.circle")
                            Text(nutrients[item])
                        }
                        .foregroundColor(fruit.gradientColors[1])
                        .font(Font.system(.body).bold())
                        Spacer(minLength: 30)
                        Text(fruit.nutrition[item])
                            .multilineTextAlignment(.trailing)
                    }
                    
                        
                }
            }
            
            
            
            
        }// END OF GROPUP BOX
    }
}

struct FruitsNutrientsView_Previews: PreviewProvider {
    static var previews: some View {
        FruitsNutrientsView(fruit: fruitsData[0])
            .preferredColorScheme(.dark)
            .padding()
    }
}
