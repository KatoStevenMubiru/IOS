//
//  FruitDetailView.swift
//  Bibala
//
//  Created by Kato Steven Mubiru on 29/10/2022.
//

import SwiftUI

struct FruitDetailView: View {
    
    var fruit : Fruit
    
    var body: some View {
        
        NavigationView{
            
            ScrollView(.vertical, showsIndicators: false){
                
                VStack(alignment: .center, spacing: 20){
                    
                    FruitHeaderView(fruit: fruit)
                    
                    VStack(alignment: .leading, spacing: 20) {
                        
                        Text(fruit.title)
                            .font(.largeTitle)
                            .fontWeight(.heavy)
                            .foregroundColor(fruit.gradientColors[1])
                        
                        
                        Text(fruit.headline)
                            .fontWeight(.bold)
                            .multilineTextAlignment(.leading)
                        FruitsNutrientsView(fruit: fruit)
                        
                        Text("Learn more About \(fruit.title)".uppercased())
                            .fontWeight(.bold)
                            .foregroundColor(fruit.gradientColors[1])
                        
                        
                        Text(fruit.description)
                            .multilineTextAlignment(.leading)
                        
                        SourceLinkView()
                            .padding(.top, 10)
                            .padding(.bottom, 40)
                    }// end of inner Vstack
                    .padding(.horizontal, 20)
                    .frame(maxWidth: 640, alignment: .center)
                    
                }// end of outer Vstack
                
                .navigationBarTitle(fruit.title, displayMode: .inline)
                .navigationBarHidden(true)
            }//end of scroll view
            .edgesIgnoringSafeArea(.top)
            
        }// end of navigation
        
      
    }
}

struct FruitDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FruitDetailView(fruit: fruitsData[0])
    }
}
