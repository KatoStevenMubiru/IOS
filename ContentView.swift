//
//  ContentView.swift
//  Slot
//
//  Created by Kato Steven Mubiru on 28/12/2022.
//

import SwiftUI

struct ContentView: View {
    @State var showingInfoView: Bool = false
    
    var body: some View {
        
        ZStack {
            LinearGradient(gradient:Gradient(colors: [Color("ColorPink") ,Color("ColorPurple")]), startPoint: .top, endPoint: .bottom).edgesIgnoringSafeArea(.all)
            
            VStack(alignment: .center , spacing: 5) {
                
               LocalView()
                
                Spacer()
                
                HStack {
                    //1st Hstack
                    HStack{
                        
                        Text("Your\nCoins".uppercased())
                            .foregroundColor(.white)
                            .font(.system(size: 10, design: .rounded))
                            .fontWeight(.bold)
                            .multilineTextAlignment(.trailing)
                        Text("100")
                            .foregroundColor(.white)
                            .fontDesign(.rounded)
                            .fontWeight(.heavy)
                            .font(.title)
                        
                        
                        
                    }// hstack
                    .padding(.vertical, 4)
                    .padding(.horizontal, 16)
                    .frame(minWidth: 128)
                    .background(
                    Capsule()
                        .foregroundColor(Color("ColorBlack"))
                )
                    
                    Spacer()
                    
                    //2nd Hstack
                    HStack{
                        Text("200")
                            .foregroundColor(.white)
                            .fontDesign(.rounded)
                            .fontWeight(.heavy)
                            .font(.title)
                        Text("High\nScore".uppercased())
                            .foregroundColor(.white)
                            .font(.system(size: 10, design: .rounded))
                            .fontWeight(.bold)
                            .multilineTextAlignment(.leading)
                      
                        
                        
                        
                    }// hstack
                    .padding(.vertical, 4)
                    .padding(.horizontal, 16)
                    .frame(minWidth: 128)
                    .background(
                    Capsule()
                        .foregroundColor(Color("ColorBlack"))
                )
                }//outer hstack
                
                VStack(alignment: .center, spacing: 0){
                    
                    //reel 1
                    ZStack {
                        RealView()
                        Image("gfx-bell")
                            .resizable()
                            .scaledToFit()
                            .frame(minWidth: 140, idealWidth: 200, maxWidth: 220, minHeight: 130, idealHeight: 190, maxHeight: 200, alignment: .center)
                    }// zstack
                    
                    //reel 2
                    HStack(alignment: .center, spacing: 0){
                        ZStack {
                            RealView()
                            Image("gfx-seven")
                                .resizable()
                                .scaledToFit()
                                .frame(minWidth: 140, idealWidth: 200, maxWidth: 220, minHeight: 130, idealHeight: 190, maxHeight: 200, alignment: .center)
                        }// zstack
                        ZStack {
                            RealView()
                            Image("gfx-cherry")
                                .resizable()
                                .scaledToFit()
                                .frame(minWidth: 140, idealWidth: 200, maxWidth: 220, minHeight: 130, idealHeight: 190, maxHeight: 200, alignment: .center)
                        }// zstack
                        
                        
                    }//end of hstack
                    
                    //reel 3
                    
                    
                    //spin button
                    
                    Button(action:{
                        print("Spin the wheel")
                    }){
                        Image("gfx-spin")
                            .resizable()
                            .scaledToFit()
                            .frame(minWidth: 140, idealWidth: 200, maxWidth: 220, minHeight: 130, idealHeight: 190, maxHeight: 200, alignment: .center)
                        
                    }
                    
                    
                    
                }// end of vstack//slot machine
                .layoutPriority(2)
                
                Spacer()
                
                HStack{
                    
                    HStack(alignment: .center, spacing: 10) {
                        Button(action:{
                            print("Spin the wheel")
                        }){
                            Text("20")
                                .fontWeight(.heavy)
                                .foregroundColor(.white)
                                .font(.title)
                                .fontDesign(.rounded)
                                .frame(width: 90)
                        }
                        .background(
                        Capsule()
                            .fill(LinearGradient(gradient: Gradient(colors: [Color("ColorPink"), Color("ColorPurple")]), startPoint: .top, endPoint: .bottom))
                        )
                        .padding(3)
                        .background(
                            Capsule()
                                .fill(LinearGradient(gradient: Gradient(colors: [Color("ColorPink"), Color("ColorPurple")]), startPoint: .bottom, endPoint: .top))
                    )
                        Image("gfx-casino-chips")
                            .resizable()
                            .scaledToFit()
                            .opacity(0)
                            .frame(height: 64)
                            .animation(.default)
                        
                    }// button Hstack
                    
                    HStack(alignment: .center, spacing: 10) {
                        
                        Image("gfx-casino-chips")
                            .resizable()
                            .scaledToFit()
                            .opacity(2)
                            .frame(height: 64)
                            .animation(.default)
                        
                        Button(action:{
                            print("Spin the wheel")
                        }){
                            Text("20")
                                .fontWeight(.heavy)
                                .foregroundColor(.yellow)
                                .font(.title)
                                .fontDesign(.rounded)
                                .frame(width: 90)
                        }
                        .background(
                        Capsule()
                            .fill(LinearGradient(gradient: Gradient(colors: [Color("ColorPink"), Color("ColorPurple")]), startPoint: .top, endPoint: .bottom))
                        )
                        .padding(3)
                        .background(
                            Capsule()
                                .fill(LinearGradient(gradient: Gradient(colors: [Color("ColorPink"), Color("ColorPurple")]), startPoint: .bottom, endPoint: .top))
                    )
                        
                        
                    }// button Hstack
                    
                }//hstack
                
                
                
            }// vstack
            .overlay(
            
                Button(action: {
                    
                    print("Reset the game")
                    
                }){
                    Image(systemName: "arrow.2.circlepath.circle")
                }
                    .modifier(buttonModifier()),
                alignment: .topLeading
            
            )// end of overlay
            .overlay(
            
                Button(action: {
                    
                    self.showingInfoView = true
                    
                }){
                    Image(systemName: "info.circle")
                }
                    .modifier(buttonModifier()),
                alignment: .topTrailing
            
            )
            
            .padding()
            .frame(maxWidth: 720)
        }// Zstack
        .sheet(isPresented: $showingInfoView) {
            InfoView()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
