//
//  RegisterView.swift
//  LandMark
//
//  Created by Kato Steven Mubiru on 08/10/2022.
//

import SwiftUI

struct RegisterView: View {
    

    @State private var firstName = ""
    @State private var lastName = ""
    @State private var email = ""
    @State private var password = ""
    @State private var city = ""
  
    
    
    
    var body: some View {
        
        NavigationView{
            ZStack{
                Color.red.ignoresSafeArea()
                Circle()
                    .scale(1.8)
                    .foregroundColor(.white.opacity(0.15))
                Circle()
                    .scale(1.6)
                    .foregroundColor(.white)
                
                VStack{
                    Text("SignUp")
                        .font(.largeTitle)
                        .bold()
                        .padding()
                    TextField("First Name", text:$lastName)
                        .padding()
                        .frame(width:300,height: 50)
                        .background(Color.black.opacity(0.05))
                        .cornerRadius(10)
                    
                    TextField("Last Name", text:$lastName)
                        .padding()
                        .frame(width:300,height: 50)
                        .background(Color.black.opacity(0.05))
                        .cornerRadius(10)
                    
                    TextField("City", text:$city)
                        .padding()
                        .frame(width:300,height: 50)
                        .background(Color.black.opacity(0.05))
                        .cornerRadius(10)
                    
                    
                

                    SecureField("Password", text:$password)
                        .padding()
                        .frame(width:300,height: 50)
                        .background(Color.black.opacity(0.05))
                        .cornerRadius(10)
                    SecureField("Confirm Password", text:$password)
                        .padding()
                        .frame(width:300,height: 50)
                        .background(Color.black.opacity(0.05))
                        .cornerRadius(10)
                    
                    Button("Register"){
                        
                        
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
    
    
    struct  Register_Previews: PreviewProvider {
        static var previews: some View {
            RegisterView()
        }
    }
}
