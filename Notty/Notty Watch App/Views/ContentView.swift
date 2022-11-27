//
//  ContentView.swift
//  Notty Watch App
//
//  Created by Kato Steven Mubiru on 26/11/2022.
//

import SwiftUI

struct ContentView: View {
    // property
    @State private var notes : [Note] = [Note]()
    @State private var text : String = ""
    
    
    // functions
    
    func getDocumentDirectory() -> URL{
        
        let path = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)
        
        return path[0]
        
        
    }
    
    
    
    func save(){
        //dump(notes)
        
        do{
          
            let data = try JSONEncoder().encode(notes)
            
            let url = getDocumentDirectory().appendingPathComponent("notes")

            
            try data.write(to: url)
            
            
        } catch {
            
            print(" Saving Data has failed ")
            
        }

    }
    
    func load(){
        
        DispatchQueue.main.async {
            do{
                let url = getDocumentDirectory().appendingPathComponent("notes")
                
                let data = try Data(contentsOf: url)
                
                notes = try JSONDecoder().decode([Note].self, from: data)
                
                
            }catch{
                
                
                
            }
        }
    }// end of func load
    
    func delete(offsets: IndexSet){
        
        withAnimation{
            notes.remove(atOffsets: offsets)
            save()
            
        }
        
        
    }
    
    var body: some View {
       
        VStack{
                
                HStack(alignment: .center, spacing: 6) {
                    
                    TextField("Enter Note", text: $text)
                       
                    Button {
                        //action
                        
                        guard text.isEmpty == false else { return }
                        
                        let note = Note(id: UUID(), text: text)
                        
                        notes.append(note)// append the note to the array(notes)
                        
                        
                        text = ""
                        
                        save()
                        
                    } label: {
                        Image(systemName: "plus.circle")
                            .font(.system(size:40, weight: .semibold))
                    }
                    .fixedSize()
                    .buttonStyle(PlainButtonStyle())
                    .foregroundColor(.accentColor)
                  
                  //  .buttonStyle(BorderedButtonStyle(tint: .accentColor))

                }// end of hstack
            
               Spacer()
            
            if notes.count >= 1 {
                List{
                    ForEach(0..<notes.count, id: \.self) { i in
                        
                        NavigationLink(destination : DetailView(note: notes[i], count: notes.count, index: i)) {
                            HStack{
                                Capsule()
                                    .frame(width: 5)
                                    .foregroundColor(.accentColor)
                                
                                Text(notes[i].text)
                                    .lineLimit(1)
                                    .padding(.leading, 5)
                                
                            }// end of hstack
                        } // end of navigation link
                    }// end of for each loop
                    .onDelete(perform: delete)
                    
                    
                }//end of list
            } else {
                Spacer()
                Image(systemName: "list.bullet.clipboard.fill")
                    .resizable()
                    .scaledToFit()
                    .foregroundColor(.accentColor)
                    .opacity(0.3)
                    .padding(25)
                
                Spacer()
            }
            
            //Text("\(notes.count)")
            }// END OF VSTACk
        .onAppear( perform:{
            load()
            
        })
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
