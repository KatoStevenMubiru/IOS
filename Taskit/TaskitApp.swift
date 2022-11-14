//
//  TaskitApp.swift
//  Taskit
//
//  Created by Kato Steven Mubiru on 13/11/2022.
//

import SwiftUI

@main
struct TaskitApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
