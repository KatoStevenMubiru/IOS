//
//  ContentView.swift
//  Kedo
//
//  Created by Kato Steven Mubiru on 29/11/2022.
//

import SwiftUI

struct ContentView: View {
    
    var headers : [HeaderModel]
    
    var body: some View {
        
        ScrollView(.vertical, showsIndicators: true){
            
           
            VStack(alignment: .center, spacing: 20){
                
                
                ScrollView(.horizontal, showsIndicators: true) {
                    
                    HStack(alignment :.center, spacing: 0) {
                        
                        ForEach(headers) { item in
                            
                            Header(header: item )
                        }
                        
                        
                    }
                }
                
                
                VStack(alignment: .center, spacing: 20) {
                    Text("All about avocados")
                        .font(.system(.title, design: .serif))
                        .fontWeight(.bold)
                        .foregroundColor(Color("GreenAdaptive"))
                    .padding(8)
                    Text("Everything you always wanted to know  about Avocados, but you were to afraid to ask.")
                        .fontDesign(.serif)
                        .multilineTextAlignment(.center)
                        .foregroundColor(Color.gray)
                    
                    
                }// end of inner vstack
                .frame(maxWidth: 640)
                .padding()
                .padding(.bottom, 85)
                
            } // end of vstack
            
        }// end of scroll view
        .edgesIgnoringSafeArea(.all)
        .padding(0)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(headers: headersData)
    }
}
