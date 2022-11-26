//
//  Persistence.swift
//  Taskit2
//
//  Created by Kato Steven Mubiru on 20/11/2022.
//

import CoreData

struct PersistenceController {
    
    // controller
    static let shared = PersistenceController()

    
    
    
    
// storage property for core data
    let container: NSPersistentContainer

    
    // persistence store loaded
    init(inMemory: Bool = false) {
        container = NSPersistentContainer(name: "Taskit2")
        if inMemory {
            container.persistentStoreDescriptions.first!.url = URL(fileURLWithPath: "/dev/null")
        }
        container.loadPersistentStores(completionHandler: { (storeDescription, error) in
            if let error = error as NSError? {
                fatalError("Unresolved error \(error), \(error.userInfo)")
            }
        })
        container.viewContext.automaticallyMergesChangesFromParent = true
    }
    
    // preview
    
    
    static var preview: PersistenceController = {
  
        // switch to in memory store.
        let result = PersistenceController(inMemory: true)
        
        
        let viewContext = result.container.viewContext
        
        // we use the for each loop to display sample data
        for i in 0..<5 {
            let newItem = Item(context: viewContext)
            newItem.timestamp = Date()
            newItem.assignment = "Sample assginment\(i)"
            newItem.finished = false
            newItem.id = UUID()
        }
        do {
            try viewContext.save()
        } catch {
            
            let nsError = error as NSError
            fatalError("Unresolved error \(nsError), \(nsError.userInfo)")
        }
        return result
    }()
    
}
