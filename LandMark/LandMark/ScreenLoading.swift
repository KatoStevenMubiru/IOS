//
//  ScreenLoading.swift
//  LandMark
//
//  Created by Kato Steven Mubiru on 07/10/2022.
//

import SwiftUI

struct ScreenLoading: View {
    @State private var isActive = false
    @State private var size = 0.8
    @State private var opacity = 0.5
    
    
    
    var body: some View {
        if isActive{
            ContentView()
            
        }else{
            
            
        }
        VStack{
            VStack{
                
                Image(systemName:"book.fill")
                    .font(.system(size : 100))
                    .foregroundColor(.red)
               Text("Tusome.")
                    .font(Font.custom("Verdana", size: 30))
                    .bold()
                    .italic()
                    .foregroundColor(.black.opacity(0.8))
                    
                
            }
            .scaleEffect(size)
            .opacity(opacity)
            .onAppear(){
                
                
            }
            
            
        }
        
    }
}
struct ScreenLoading_Previews: PreviewProvider {
    static var previews: some View {
        ScreenLoading()
    }
}
