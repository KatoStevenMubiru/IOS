//
//  ContentView.swift
//  AmericanShop
//
//  Created by Kato Steven Mubiru on 07/11/2022.
//

import SwiftUI

struct ContentView: View {
    
    
    
    var body: some View {
       
        ZStack {
            VStack(spacing : 0) {
                
                NavigationBar()
                    .padding()
                    .background(Color.white)
                    .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
                    
                ScrollView(.vertical, showsIndicators: false, content: {
                    VStack(spacing: 0) {
                        
                        PlayerTabView()
                            .padding(.vertical, 20)
                            .frame(width: 400, height:400, alignment: .center)
                        
                        CategoryGrid()
               
                    
                        
                        FooterView()
                            .padding(.horizontal)
                    }// end of Vstack
                    
                })// end of ScrollView
                
                
                
                
                
                
            }// end of Vstack
            .background(colorBackground.ignoresSafeArea(.all , edges: .all))
        }// end of Zstack
        .ignoresSafeArea(.all, edges: .top)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
