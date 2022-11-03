//
//  MainView.swift
//  Uganda
//
//  Created by Kato Steven Mubiru on 31/10/2022.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        TabView{
            
            ContentView()
                .tabItem{
                    Image(systemName: "square.grid.2x2")
                    Text("Browse")
                    
                }
            VideoListView()
                .tabItem{
                    Image(systemName: "play.rectangle")
                        Text("Videos")
                }// end of videoListView
            MapView()
                .tabItem {
                    Image(systemName: "map")
                    Text("Locations")
                }
            
            GalleryView()
                .tabItem {
                    Image(systemName: "photo")
                        Text("Gallery")
                }
                
                
                
            
            
        }// end of tab view
    }
}
struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
