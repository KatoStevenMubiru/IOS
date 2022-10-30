//
//  OnboardingView.swift
//  Bibala
//
//  Created by Kato Steven Mubiru on 29/10/2022.
//

import SwiftUI

struct OnboardingView: View {
    var fruits: [Fruit] = fruitsData
    
    var body: some View {
        
        TabView{
            ForEach(fruits[0...6]){ item in
                
                
                
                FruitCardView(fruit: item)
            }
          
        }
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical, 20)
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView(fruits: fruitsData)
            
    }
}
