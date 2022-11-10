//
//  NavigationBar.swift
//  AmericanShop
//
//  Created by Kato Steven Mubiru on 08/11/2022.
//

import SwiftUI

struct NavigationBar: View {
    
    @State private var isAnimating: Bool = false
    
    var body: some View {
        
        HStack{
            
            Button(action: {}) {
                
                Image(systemName: "magnifyingglass")
                      .foregroundColor(.blue)
                      .font(.title)
                
            }// end of first Button
            
         
            
            
            Spacer()
            
            LogoView()
                .opacity(isAnimating ? 1 : 0)
                .offset(x: 0, y:  isAnimating ? 0 : -25)
                .onAppear {
                    withAnimation(.easeOut(duration: 0.5)){
                        isAnimating.toggle()
                        
                    }
                    
                }// this is the code that causes the animation on our logo.
            
            
            Spacer()
            Button(action: {}) {
                
                ZStack {
                    Image(systemName: "cart")
                        .foregroundColor(.blue)
                        .font(.title)
                    
                    Circle()
                        .foregroundColor(.red)
                        .frame(width: 14, height: 14, alignment: .center)
                        .offset(x: 10, y: -10)
                        
                }// Zstack
            }// end of the 2nd Button
           
            
            
        }// end of hstack
        .padding()
    }
}

struct NavigationBar_Previews: PreviewProvider {
    static var previews: some View {
        NavigationBar()
            .previewLayout(.sizeThatFits)
    }
}
