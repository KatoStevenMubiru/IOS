//
//  Locations view.swift
//  LittleLemon
//
//  Created by Kato Steven Mubiru on 11/12/2022.
//

import SwiftUI
struct Locations_view: View {
    
    @EnvironmentObject var model:Model
    var body: some View {
        VStack {
            LittleLemonLogo()
                .padding(.top, 50)
            
            Text (model.displayingReservationForm ? "Reservation Details" :
                    "Select a location")
            .padding([.leading, .trailing], 40)
            .padding([.top, .bottom], 8)
            .background(Color.gray.opacity(0.2))
            .cornerRadius(20)
            
            NavigationView {
         
                List(model.restaurants, id: \.self) { restaurant in
                    NavigationLink(destination: ReservationForm(restaurant)) {
                        RestaurantView(restaurant)
                    }
                }
                .navigationBarTitle("")
                .navigationBarHidden(true)
            }
            
            .onDisappear{
                if model.tabBarChanged { return }
                
                model.displayingReservationForm = true
            }
            
            .frame(maxHeight: .infinity)
            .padding(.top, -10)
                        
                        // makes the list background invisible, default is gray
                        .scrollContentBackground(.hidden)
                    }
                    
                }
            }

            struct ContentView_Previews: PreviewProvider {
                static var previews: some View {
                    Locations_view().environmentObject(Model())
                }
            }
