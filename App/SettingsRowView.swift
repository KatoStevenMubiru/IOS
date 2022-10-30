//
//  SettingsRowView.swift
//  Bibala
//
//  Created by Kato Steven Mubiru on 30/10/2022.
//

import SwiftUI

struct SettingsRowView: View {
    
    var name : String
    var content : String? = nil
    var linkLabel : String? = nil
    var linkDestination : String? = nil
    
    
    
    var body: some View {
        VStack {
            Divider().padding(.vertical, 4)
            
            HStack{
                
                Text(name).foregroundColor(.gray)
                Spacer()
                
                if content != nil {
                    Text(content!)
                } else if (linkLabel != nil && linkDestination != nil){
                    
                    Link(linkLabel!, destination: URL(string: "https//\(linkDestination!)")!)
                    Image(systemName: "arrow.up.right.square").foregroundColor(.purple)
                    
                }else {
                    
                    EmptyView()
                    
                }
                
                
                
            }
        }
        
    }
}

struct SettingsRowView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsRowView(name: "Developer", content: "Kato Steven Mubiru")
            .padding()
        SettingsRowView(name: "Website", linkLabel: "katostevenmubiru", linkDestination:"www.linkedin.com/in/kato-steven-907b49109")
            .padding()
            
            
    }
}
