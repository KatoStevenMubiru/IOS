//
//  ContentView.swift
//  LandMark
//
//  Created by Kato Steven Mubiru on 07/10/2022.
//

import SwiftUI

struct ContentView: View {
    

    @State private var username = ""
    @State private var password = ""
    
    
    var body: some View {
        
        NavigationView{
            ZStack{
                Color.red.ignoresSafeArea()
                Circle()
                    .scale(1.7)
                    .foregroundColor(.white.opacity(0.15))
                Circle()
                    .scale(1.35)
                    .foregroundColor(.white)
                
                VStack{
                    Text("Login")
                        .font(.largeTitle)
                        .bold()
                        .padding()
                    TextField("Username", text:$username)
                        .padding()
                        .frame(width:300,height: 50)
                        .background(Color.black.opacity(0.05))
                        .cornerRadius(10)
                    
                    SecureField("Password", text:$password)
                        .padding()
                        .frame(width:300,height: 50)
                        .background(Color.black.opacity(0.05))
                        .cornerRadius(10)
                    
                    Button("Login"){
                        
                        
                    }
                    .foregroundColor(.white)
                    .frame(width:200,height:50)
                    .background(Color.red)
                    .cornerRadius(15)
                    
                    
                }
                .navigationBarHidden(true)
            }
            
        }
    }
    
    
    struct  ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}
