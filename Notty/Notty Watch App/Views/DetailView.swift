//
//  DetailView.swift
//  Notty Watch App
//
//  Created by Kato Steven Mubiru on 27/11/2022.
//

import SwiftUI

struct DetailView: View {
    
    let note : Note
    let count : Int
    let index : Int
    
    @State private var isCreditVisible: Bool = false
    
    var body: some View {
        
        
        VStack(alignment: .center, spacing: 3){
            
            HStack{
                Capsule()
                    .frame(height: 1)
                
                Image(systemName: "note.text")
                
                Capsule()
                    .frame(height: 1)
                
                
                
            }// hstack
            .foregroundColor(.accentColor)
            
            Spacer()
            
            ScrollView(.vertical){
                
                Text(note.text)
                    .font(.title3)
                    .fontWeight(.bold)
                    .multilineTextAlignment(.center)
              
            }// end of scroll view
            Spacer()
            
            HStack(alignment: .center){
                
                Image(systemName: "gear")
                    .imageScale(.large)
                
                Spacer()
                
                Text("\(count) / \(index + 1)")
                
                Spacer()
                
                Image(systemName: "info.circle")
                    .imageScale(.large)
                    .onTapGesture {
                        isCreditVisible.toggle()
                    }// end of ontapgesture
                    .sheet(isPresented: $isCreditVisible) {
                        Credits()
                    }
                
            }// hstack
            
            
            
            
        }// vstack
        .padding(3)
    }
}

struct DetailView_Previews: PreviewProvider {
    
    static var sampleData: Note = Note(id: UUID(), text: "Detailed View")
    
    static var previews: some View {
        DetailView(note: sampleData, count: 5, index: 1)
    }
}
