//
//  ContentView.swift
//  Taskit2
//
//  Created by Kato Steven Mubiru on 20/11/2022.
//

import SwiftUI
import CoreData
import UIKit

struct ContentView: View {
    // property
    @State var assignment: String = ""
    
    private var isButtonDisabled: Bool {
        assignment.isEmpty
        
    }
    
    //fetching data
    
    @Environment(\.managedObjectContext) private var viewContext

    @FetchRequest(
        sortDescriptors: [NSSortDescriptor(keyPath: \Item.timestamp, ascending: true)],
        animation: .default)
    private var items: FetchedResults<Item>
    
    private func addItem() {
        withAnimation {
            let newItem = Item(context: viewContext)
            newItem.timestamp = Date()
            newItem.assignment = assignment
            newItem.finished = false
            newItem.id = UUID()// this saves the added task on to the list
            

            do {
                try viewContext.save()
            } catch {
                
                let nsError = error as NSError
                fatalError("Unresolved error \(nsError), \(nsError.userInfo)")
            }
        }
    }

    private func deleteItems(offsets: IndexSet) {
        withAnimation {
            offsets.map { items[$0] }.forEach(viewContext.delete)

            do {
                try viewContext.save()
            } catch {
                
                let nsError = error as NSError
                fatalError("Unresolved error \(nsError), \(nsError.userInfo)")
            }
        }
    }
    
    // body

    var body: some View {
        NavigationView {
            ZStack {
                VStack {
                    
                    
                    
                    List {
                       
                            ForEach(items) { item in
                             
                                
                                
                                VStack(alignment : .leading) {
                                    
                                    Text(item.assignment ??  "")
                                        .font(.headline)
                                        .fontWeight(.bold)
                                    
                                    Text("Item at \(item.timestamp!, formatter: itemFormatter)")
                                        .font(.footnote)
                                        .foregroundColor(.gray)
                                    .fontWeight(.heavy)
                                }// end of Vstack
                            
                              
                            }// end of for each loop
                            .onDelete(perform: deleteItems)
                            .listRowBackground(Color.yellow)
                      
                    }// end of list
                    .listStyle(InsetGroupedListStyle())
                }// end of vstack
               
            }// end of Zstack
            
             .background(
                 backgroundColors.ignoresSafeArea()

             )
             
            .background(
            backgroundView()
            
            )
            .onAppear() {
              UITableView.appearance().backgroundColor = UIColor.clear
            }
            .navigationBarTitle("Assignments", displayMode: .large)
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    EditButton()
                }
        }// end of tool bar
           
            Text("Select an item")
        }// end of Navigation View
        
        
        .navigationViewStyle(StackNavigationViewStyle())
    }
    
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
    }
}
