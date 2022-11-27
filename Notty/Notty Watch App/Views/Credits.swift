//
//  Credits.swift
//  Notty Watch App
//
//  Created by Kato Steven Mubiru on 27/11/2022.
//

import SwiftUI

struct Credits: View {
    
    var title : String = ""
    
    var body: some View {
        VStack {
            
            Image("IMG_8187")
                .resizable()
                .scaledToFit()
                .cornerRadius(12)
             Text(" CREDITS ")
                .font(.title3)
                .fontWeight(.bold)
            HStack{
                Capsule()
                    .frame(height: 1)
                
                Image(systemName: "note.text")
                
                Capsule()
                    .frame(height: 1)
                
            }// Hstack
            .foregroundColor(.accentColor)
            
            
            Text("Kato.Steven.Mubiru")
                .fontWeight(.semibold)
                .foregroundColor(.red)
            
            Text("Developer")
                .font(.footnote)
                .foregroundColor(.blue)
                .fontWeight(.light)
        }// end of Vstack
        
    }
}

struct Credits_Previews: PreviewProvider {
    static var previews: some View {
        Credits()
    }
}
