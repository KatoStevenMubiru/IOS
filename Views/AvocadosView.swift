//
//  AvocadosView.swift
//  Kedo
//
//  Created by Kato Steven Mubiru on 30/11/2022.
//

import SwiftUI

struct AvocadosView: View {
  
    
    @State private var pulsateAnimation : Bool = false
    
    
    var body: some View {
        
        VStack {
            
            Spacer()
            Image("avocado")
                .resizable()
                .aspectRatio( contentMode: .fit)
                .frame(width: 200, height: 200, alignment: .center)
                .shadow(radius: 30)
                .scaleEffect(self.pulsateAnimation ? 1 : 0.7)
                .opacity(self.pulsateAnimation ? 1 : 0.7 )
                .animation(Animation.easeInOut(duration: 1.5).repeatForever(autoreverses: true))
            VStack {
                Text(" AVOCADOS ")
                    .fontWeight(.bold)
                    .font(.largeTitle)
                    .fontDesign(.serif)
                    .foregroundColor(Color.white)
                    .padding()
                .shadow(radius:20)
                
                Text("""
Creamy, green, and full of nutrients! Avocado is a powerhouse ingredient at any meal. Enjoy these handpicked avocado recipes for breakfast, lunch, dinner & more!
""")
                .font(.headline)
                .fontDesign(.serif)
                .foregroundColor(Color("ColorGreenLight"))
                .multilineTextAlignment(.center)
                .lineSpacing(8)
                .frame(maxWidth: 640, minHeight: 120)
                
                    
            }// end of Vstack
            .padding()
            Spacer()
        }// end of Vstack
        .background(
        
        Image("background")
            .resizable()
            .aspectRatio( contentMode: .fill)
        )
        .edgesIgnoringSafeArea(.all)
        .onAppear(perform: {
            
            self.pulsateAnimation.toggle()
            
        })
        
    }
}

struct AvocadosView_Previews: PreviewProvider {
    static var previews: some View {
        AvocadosView()
            .environment(\.colorScheme, .dark)
    }
}
