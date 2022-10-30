//
//  SettingsView.swift
//  Bibala
//
//  Created by Kato Steven Mubiru on 30/10/2022.
//

import SwiftUI

struct SettingsView: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    @AppStorage("isOnboarding") var isOnboarding : Bool = false
   
    
    var body: some View {
        NavigationView{
            ScrollView(.vertical,showsIndicators: false) {
                
               
                VStack(spacing: 20){
                    
                    GroupBox( label:
                        
                                
                        SettingsLabelView(labelText: "Bibala", labelImage: "info.circle")
                      
                    ){
                        Divider().padding(.vertical, 4)

                        HStack(alignment: .center, spacing: 0){
                            Image("Bible")
                                .resizable()
                                .scaledToFit()
                                .frame(width:80, height: 90)
                                .cornerRadius(9)
                            Spacer()
                            
                            Text("Most Fruits are naturally filled with a variety of crutial ingredients.")
                                .font(.footnote)
                                
                           
                            
                            
                        }
                        
                    }
                    GroupBox(label: SettingsLabelView(labelText: "Customization", labelImage: "paintbrush")){
                        Divider().padding(.vertical, 5)
                        
                        Text("If you want to restart the application, this will start the onboarding process and you will see the welcome screen again")
                            .padding(.vertical, 8)
                            .frame(minHeight : 60)
                            .layoutPriority(1)
                            .font(.footnote)
                            .multilineTextAlignment(.leading)
                        
                        
                        Toggle(isOn: $isOnboarding){
                            
                            Text("RESTART")
                        }
                        
                        
                        
                        
                    }
                    
                    
                    
                    GroupBox( label : SettingsLabelView(labelText: "Application", labelImage: "apps.iphone")){
                        
                        
                        SettingsRowView(name: "Developer", content: "Kato Steven Mubiru")
                        SettingsRowView(name: "Designer", content: "KSM")
                        SettingsRowView(name: "Compartibilty", content: "iOS 15")
                        SettingsRowView(name: "LinkedIn" , linkLabel: "Katosteve", linkDestination: "www.linkedin.com/in/kato-steven-907b49109")
                        
                        SettingsRowView(name: "SwiftUI", content: "2.0")
                        SettingsRowView(name: "Version", content: "2.1.0")
                        
                    }// the third group box
                  
                    
                }// end of vs stack
                .navigationBarTitle(Text("Settings"), displayMode: .large)
                .padding()
                .navigationBarItems( trailing:
                
                                        Button(action: {
                    
                    presentationMode.wrappedValue.dismiss()
                    
                }){
                    Image(systemName: "xmark")
                    
                    
                }
                
            
                )
                    
                }
            }// end of scrollView
         
            
        }// end of navigationView...
    }


struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
