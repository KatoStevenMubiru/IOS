//
//  AppView.swift
//  Kedo
//
//  Created by Kato Steven Mubiru on 30/11/2022.
//

import SwiftUI

struct AppView: View {
    var body: some View {
        
        TabView{
            
            AvocadosView()
                .tabItem({
                    
                    Image("tabicon-branch")
                    Text("Avocados")
                    
                })
            ContentView(headers: headersData)
                .tabItem({
                    Image("tabicon-book")
                    Text("Recipes")
                    
                })
            RipeningStages()
                .tabItem({
                    Image("tabicon-avocado")
                    Text("Ripening")
                })
            SettingsView()
                .tabItem({
                    Image("tabicon-settings")
                    Text("Settings")
                    
                    
                })
            
            
            
        } // end of tab view
        
        .edgesIgnoringSafeArea(.top)
        .accentColor(Color.primary)
        
        
        
        
    }
}

struct AppView_Previews: PreviewProvider {
    static var previews: some View {
        AppView()
    }
}
