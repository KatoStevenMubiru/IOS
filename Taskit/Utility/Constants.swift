//
//  Constants.swift
//  Taskit
//
//  Created by Kato Steven Mubiru on 13/11/2022.
//

import SwiftUI

// formatter

 let itemFormatter: DateFormatter = {
    let formatter = DateFormatter()
    formatter.dateStyle = .short
    formatter.timeStyle = .medium
    return formatter
}()

// ui
var backgroundGradient: LinearGradient{
    
    return LinearGradient(gradient: Gradient(colors: [Color.pink, Color.blue]), startPoint: .top, endPoint: .bottomTrailing)
    
}


// ux

