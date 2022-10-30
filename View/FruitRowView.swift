//
//  FruitRowView.swift
//  Bibala
//
//  Created by Kato Steven Mubiru on 29/10/2022.
//

import SwiftUI

struct FruitRowView: View {
    
    var fruit : Fruit
    
    var body: some View {
        HStack{
            Image(fruit.image)
                .renderingMode(.original).resizable()
                .scaledToFit()
                .frame(width: 80, height: 80 , alignment: .center)
                .shadow(color: Color(red:0, green: 0,blue: 0, opacity: 0.6 ), radius: 3, x: 2, y: 2)
                .background(
                    LinearGradient(gradient: Gradient(colors:fruit.gradientColors), startPoint: .leading, endPoint: .trailing)
                )
                .cornerRadius(9)
            
            VStack(alignment: .leading, spacing: 5){
                Text(fruit.title)
                    .font(.title3)
                    .fontWeight(.bold)
                Text(fruit.headline)
                    .font(.caption)
                    .foregroundColor(.secondary)
                
                
            }
            
        }// hstack
    }//body
}

struct FruitRowView_Previews: PreviewProvider {
    static var previews: some View {
        FruitRowView(fruit: fruitsData[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
