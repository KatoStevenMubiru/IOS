//
//  constant.swift
//  Taskit2
//
//  Created by Kato Steven Mubiru on 21/11/2022.
//

import SwiftUI

// formarter

 let itemFormatter: DateFormatter = {
    let formatter = DateFormatter()
    formatter.dateStyle = .short
    formatter.timeStyle = .medium
    return formatter
}()


// User Interface
var backgroundColors : LinearGradient{
    
    return LinearGradient(gradient: Gradient(colors: [Color.yellow, Color.blue]), startPoint: .topLeading, endPoint: .bottomTrailing)
}


// User Experience



