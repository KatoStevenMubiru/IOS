//
//  Taskit2App.swift
//  Taskit2
//
//  Created by Kato Steven Mubiru on 20/11/2022.
//

import SwiftUI

@main
struct Taskit2App: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
            
            // we store the managed objects here, 
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
