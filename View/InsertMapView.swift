//
//  InsertMapView.swift
//  Uganda
//
//  Created by Kato Steven Mubiru on 03/11/2022.
//

import SwiftUI
import MapKit

struct InsertMapView: View {
    
   
    @State private var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 2.145768, longitude: 31.806906), span: MKCoordinateSpan(latitudeDelta: 8.0, longitudeDelta: 8.0))
    
    var body: some View {
        
       Map(coordinateRegion: $region)
            .overlay(
                NavigationLink(destination: MapView()){
                    
                    HStack{
                        
                        Image(systemName: "mappin.circle")
                            .foregroundColor(Color.white)
                            .imageScale(.large)
                        
                        Text("Locations")
                            .foregroundColor(.accentColor)
                            .fontWeight(.bold)
                        
                    }// end of stack
                    
                    .padding(.vertical, 10)
                    .padding(.horizontal, 15)
                    .background(Color.black .opacity(0.5) .cornerRadius(8))
                    
                    
                }// end of navigation link
                    .padding(12), alignment: .trailing
                    
            )
            .frame(height: 200)
            .cornerRadius(12)
    }
}

struct InsertMapView_Previews: PreviewProvider {
    static var previews: some View {
        InsertMapView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
