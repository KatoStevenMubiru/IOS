//
//  Header.swift
//  Kedo
//
//  Created by Kato Steven Mubiru on 02/12/2022.
//

import SwiftUI

struct Header: View {
    
    var header : HeaderModel
    
    @State private var showHeadline: Bool = false
    
   
    
    var slideAnimation: Animation{
        Animation.spring(response: 1.5, dampingFraction: 0.5, blendDuration: 0.5)
            .speed(1)
            .delay(0.25)
        
        
    }
    
    
    var body: some View {
    
        
        ZStack {
            
            Image(header.image)
                .resizable()
                .aspectRatio( contentMode: .fill)
            
            HStack(alignment: .top, spacing: 0) {
                
                Rectangle()
                    .fill(Color("ColorGreenLight"))
                    .frame(width: 5)
                
                
                VStack(alignment: .leading, spacing: 0) {
                    
                    Text(header.headline)
                        .fontDesign(.serif)
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .shadow(radius: 5)
                    
                    Text(header.subheadline)
                        .font(.footnote)
                        .lineLimit(2)
                        .multilineTextAlignment(.leading)
                        .foregroundColor(.white)
                        .shadow(radius: 5)
                    
                    
                }// end of Vstack
                .padding(.vertical, 0)
                .padding(.horizontal, 20)
               .frame(width: 281, height: 105)
           .background(Color("ColorBlackLightMode"))
            }// end of Hstack
            .frame(width: 280, height: 108,alignment: .center)
            .offset(x : -66, y: showHeadline ? 75 : 220)
            .animation(slideAnimation)
            .onAppear(perform: {
                self.showHeadline.toggle()
            })
            
        }// end of Zstack
        .frame(width: 480, height: 320,alignment: .center)
    }
}

struct Header_Previews: PreviewProvider {
    static var previews: some View {
        Header(header: headersData[1])
            .previewLayout(.sizeThatFits)
            .environment(\.colorScheme, .dark)
    }
}
