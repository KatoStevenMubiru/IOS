//
//  ItemListView.swift
//  AmericanShop
//
//  Created by Kato Steven Mubiru on 11/11/2022.
//

import SwiftUI

struct ItemListView: View {
    
    let prod : products
    
    var body: some View {
        
        VStack(alignment: .leading, spacing: 6 , content:{
            
            
            ZStack{
                
                Image(prod.image)
                    .resizable()
                    .scaledToFit()
                    .padding(10)
                
                
                
               
                
           
               
            }// end of Zstack
            .background(Color(red: prod.red, green: prod.green, blue: prod.blue))
            .cornerRadius(15)
            
            Text(prod.name)
                .font(.title)
                .fontWeight(.heavy)
                .foregroundColor(.blue)
            
            Text("$\(prod.price)")
                .fontWeight(.light)
                .foregroundColor(.blue)
            
        })// end of Vstack
        
  
    }
}

struct ItemListView_Previews: PreviewProvider {
    static var previews: some View {
        ItemListView(prod: productDecoded[0])
            .previewLayout(.fixed(width: 200, height: 300))
            .padding()
            .background(colorBackground)
    }
}
