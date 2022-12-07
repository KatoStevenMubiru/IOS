//
//  ContentView.swift
//  TextFiledDemo
//
//  Created by Kato Steven Mubiru on 06/12/2022.
//

import SwiftUI

struct ContentView: View {
    
    @State var customerName:String = ""
    var body: some View {
        Form {
            TextField("Type Your Name",
                      text:$customerName,
                      onEditingChanged: { status in
                print(status)
            })
            .onSubmit({
                print("submitted")
            })
            .onChange(of: customerName, perform: { newValue in
                print(newValue)
            })
            
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
