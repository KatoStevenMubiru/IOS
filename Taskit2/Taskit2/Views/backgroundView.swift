//
//  backgroundView.swift
//  Taskit2
//
//  Created by Kato Steven Mubiru on 24/11/2022.
//

import SwiftUI

struct backgroundView: View {
    var body: some View {
        Image("rocket")
            .antialiased(true)
            .resizable()
            .scaledToFill()
            .ignoresSafeArea(.all)
            
    }
}

struct backgroundView_Previews: PreviewProvider {
    static var previews: some View {
        backgroundView()
    }
}
