//
//  OnboardingView.swift
//  Meditator
//
//  Created by Kato Steven Mubiru on 26/10/2022.
//

import SwiftUI

struct OnboardingView: View {
    
    @AppStorage("onboarding")  var isOnboardingActive: Bool = true
    
    @State private var buttonWidth: Double = UIScreen.main.bounds.width-80
    @State private var buttonOffset: CGFloat = 0
    @State private var isAnimating = true
    
    
    var body: some View {
        ZStack {
            Color("ColorGreen")
                .edgesIgnoringSafeArea(.all)
            
            VStack(spacing : 20) {
                // HEADER
                Spacer()
                
                VStack(spacing: 0) {
                    Text("Sheyaringa")
                        .font(.system(size: 60))
                        .fontWeight(.heavy)
                        .foregroundColor(.white)
                    
                    
                    Text("""
                     Ekkilu tekili kukugaba.Naye Kili kukwagala kwe tugaba
                     """)
                    .font(.title3)
                    .fontWeight(.light)
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal,10)
                    
                    
                }
                .opacity(isAnimating ? 1 : 0)
                .offset(y: isAnimating ? 0 : -40)
                .animation(.easeOut(duration: 1), value: isAnimating)
                
               
                Button( action : {
                    
                    isOnboardingActive = false
                    // action
                }){
                    Text("Tandika")
                        
                }
                ZStack{
                    ZStack{
                        Circle()
                            .stroke(.white.opacity(0.5), lineWidth: 40)
                            .frame(width: 260,height: 260, alignment: .center)
                        Circle()
                            .stroke(.white.opacity(0.2), lineWidth: 80)
                            
                        Image("character-1")
                            .resizable()
                            .scaledToFit()
                            .opacity(isAnimating ? 1 : 0)
                            .animation(.easeOut(duration: 0.5), value: isAnimating)
                    }// end of Zstack
                    
                    
                    
                }
                
                Spacer()
                
                // new container to put the button
                ZStack{
                  
                    Capsule()
                        .fill(.white.opacity(0.3))
                    Capsule()
                        .fill(.white.opacity(0.2))
                        .padding(8)
                    
                    Text("Tandikira wano")
                        .foregroundColor(.white)
                        .fontWeight(.bold)
                        .font(.system(.title3, design: .rounded))
                        .offset(x: 20)
                    
                    HStack{
                        Capsule()
                            .fill(Color("ColorPurple"))
                            .frame(width: buttonOffset + 80)
                        
                        Spacer()
                        
                        
                    }
                    HStack {
                        ZStack{
                            Circle()
                                .fill(Color("ColorPurple"))
                            Circle()
                                .fill(.black.opacity(0.15))
                                .padding(8)
                            Image(systemName: "chevron.right.2")
                                .font(.system(size:24 , weight: .bold))
                            
                            
                        }
                        .foregroundColor(.white)
                    .frame(width: 80, height: 80, alignment: .center)
                    .offset(x : buttonOffset)
                    .gesture(
                        DragGesture()
                            .onChanged{ gesture in
                                if gesture.translation.width > 0 && buttonOffset <= buttonWidth-80{
                                    
                                    buttonOffset = gesture.translation.width
                                }
                            }
                            .onEnded({ _ in
                                
                                if buttonOffset > buttonWidth/2{
                                    
                                    buttonOffset = buttonWidth-80
                                    isOnboardingActive = false
                                } else {
                                    buttonOffset = 0
                                }
                            })
                    
                    )// end of the gesture
                        
                        Spacer()
                    }
                
                }
                .frame(width: buttonWidth ,height: 80, alignment: .center)
                .padding()
                // FOOTER BUTTON
                
                

            }//End of vstack
        }// End of zstack
        .onAppear(perform:{
            isAnimating = true
            
        })
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}
