//
//  SettingsLabelView.swift
//  Bibala
//
//  Created by Kato Steven Mubiru on 30/10/2022.
//

import SwiftUI

struct SettingsLabelView: View {
    
    var labelText: String
    var labelImage: String
    var body: some View {
        HStack{

    Text(labelText.uppercased())
    .fontWeight(.bold)
            
    Spacer()
     Image(systemName: labelImage)
}
    }
}

struct SettingsLabelView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsLabelView(labelText: "Fructus", labelImage: "info.circle")
    }
}
