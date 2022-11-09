//
//  AnnotationView.swift
//  Uganda
//
//  Created by Kato Steven Mubiru on 05/11/2022.
//

import SwiftUI

struct AnnotationView: View {
    
   var location : NationalParkLocations
    
    @State private var animation: Double = 0.0
    var body: some View {
        
        ZStack {
            
            Circle()
                .fill(Color.accentColor)
                .frame(width: 60, height: 60, alignment: .center)
            
            
            Circle()
                .stroke(Color.accentColor, lineWidth: 3)
                .frame(width: 55, height: 55, alignment: .center)
                .scaleEffect(1 + CGFloat(animation))
                .opacity(1-animation)
            
            Image(location.image)
                .resizable()
                .scaledToFit()
                .frame(width: 50, height: 50, alignment: .center)
            .clipShape(Circle())
            
            
        }// Zstack
        .onAppear{
            withAnimation(Animation.easeOut(duration: 3).repeatForever(autoreverses: false)){
                
                animation = 1
            }
            
            
        }
            
        
       
    }
}

struct AnnotationView_Previews: PreviewProvider {
    
  static  var locations: [NationalParkLocations] = Bundle.main.decode("locations.json")
    
    static var previews: some View {
        
        
        
        AnnotationView(location: locations[5])
            .previewLayout(.sizeThatFits)
    }
}
