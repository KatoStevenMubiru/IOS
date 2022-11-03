//
//  AnimalDetailView.swift
//  Uganda
//
//  Created by Kato Steven Mubiru on 01/11/2022.
//

import SwiftUI

struct AnimalDetailView: View {
    
    let animal: Animal
    
    var body: some View {
        
        ScrollView(.vertical, showsIndicators: false) {
            VStack(alignment: .center, spacing: 20){
            
                // animal cover image below
                Image(animal.image)
                    .resizable()
                    .scaledToFit()
                
                // the title
                
                Text(animal.name.uppercased())
                    .font(.title2)
                    .fontWeight(.heavy)
                    .multilineTextAlignment(.center)
                    .padding(.vertical, 8)
                    .foregroundColor(.primary)
                    .background(
                    
                        Color.accentColor
                            .frame(height: 5)
                            .offset(y : 22)
                    )
                
                
                // headline
                
                Text(animal.headline)
                    .font(.headline)
                    .multilineTextAlignment(.leading)
                    .foregroundColor(.accentColor)
                    .padding(.horizontal)
                
                Group{
                    
                    HeadingView(headingImage: "photo.on.rectangle.angled", headingText: "The Wilderness personified")
                    
                    InsertGalleryView(animal: animal)
                }
                
                Group{
                    
                    HeadingView(headingImage: "questionmark.circle", headingText: " Did you know about this ?")
                    
                    InsertFactView(animal: animal)
                    
                    
                    
                    
                }// end of fact group
                .padding(.horizontal)
                
                Group{
                    
                    HeadingView(headingImage: "info.circle", headingText: "All about \(animal.name)")
                    
                    Text(animal.description)
                        .multilineTextAlignment(.leading)
                    
                    
                    
                    
                    
                }// heading group
                .padding(.horizontal)
                
                Group{
                    
                    HeadingView(headingImage: "map", headingText: "Our national Parks")
                    
                    InsertMapView()
                    
                    
                    
                }// end of map group
                .padding(.horizontal)
                
                Group{
                    
                    
                    
                    
                    
                }
                
                
            }// end of vstack
            .navigationBarTitle("Learn more about \(animal.name)", displayMode: .inline)
            
        }// end of scroll view
        
    }
}

struct AnimalDetailView_Previews: PreviewProvider {
    
    static let animals : [Animal] = Bundle.main.decode("animals.json")
    
    
    static var previews: some View {
        
        NavigationView {
            AnimalDetailView(animal: animals[0])
        }
        
    }
}
