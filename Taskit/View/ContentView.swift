//
//  ContentView.swift
//  Taskit
//
//  Created by Kato Steven Mubiru on 13/11/2022.
//

import SwiftUI
import CoreData

struct ContentView: View {
    
    @State var task: String = ""
    
    private var isButtonOff: Bool{
        
        task.isEmpty
    }
    
    @Environment(\.managedObjectContext) private var viewContext

    @FetchRequest(
        sortDescriptors: [NSSortDescriptor(keyPath: \Item.timestamp, ascending: true)],
        animation: .default)
    private var items: FetchedResults<Item>

    var body: some View {
        
        
        NavigationView {
            
            ZStack {
                
                
                VStack {
                    
                    VStack(spacing : 16){
                        
                        TextField("New Task", text: $task)
                            .padding()
                            .background(
                              
                                Color(UIColor.systemGray6)
                            
                            )
                            .cornerRadius(12)
                        
                       Button(action: {addItem()}, label: {
                           
                           Spacer()
                           Text("SAVE")
                           Spacer()
                           
                       })
                       .disabled(isButtonOff)
                       .padding()
                       .foregroundColor(.white)
                       .font(.headline)
                       .background(isButtonOff ? Color.pink : Color.gray)
                       .cornerRadius(15)
                      
                        
                    }// end of vstack
                    .padding()
                    
                    
                
                        List {
                            ForEach(items) { item in
                                NavigationLink {
                                    VStack(alignment: .leading) {
                                        Text(item.task ?? "")
                                            .font(.headline)
                                            .fontWeight(.bold)
                                        
                                        Text("Item at \(item.timestamp!, formatter: itemFormatter)")
                                            .font(.footnote)
                                        .foregroundColor(.gray)
                                    }
                                } label: {
                                    Text("Item at \(item.timestamp!, formatter: itemFormatter)")
                                }
                                
                            }
                            
                            .onDelete(perform: deleteItems)
                        }
                        .listStyle(InsetGroupedListStyle())
                        
                       
                        
                        .navigationBarTitle("Day to Day Tasks", displayMode: .large)
                        .toolbar {
                            ToolbarItem(placement: .navigationBarTrailing) {
                                EditButton()
                            }
                            ToolbarItem {
                                Button(action: addItem) {
                                    Label("Add Item", systemImage: "plus")
                                }
                            }
                    }
                   
                    
                    
                }// end of navigation view
                
                
                .navigationViewStyle(StackNavigationViewStyle())
                .background(backgroundGradient.ignoresSafeArea(.all))
            }// end of Vstack.
            Text("Select an item")
                
                
        }// end of z stack
       
    }
        

    private func addItem() {
        withAnimation {
            let newItem = Item(context: viewContext)
            newItem.timestamp = Date()
            newItem.task = task
            newItem.completion = false
            newItem.id = UUID()

            do {
                try viewContext.save()
            } catch {
                // Replace this implementation with code to handle the error appropriately.
                // fatalError() causes the application to generate a crash log and terminate. You should not use this function in a shipping application, although it may be useful during development.
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
                // Replace this implementation with code to handle the error appropriately.
                // fatalError() causes the application to generate a crash log and terminate. You should not use this function in a shipping application, although it may be useful during development.
                let nsError = error as NSError
                fatalError("Unresolved error \(nsError), \(nsError.userInfo)")
            }
        }
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
    }
}
