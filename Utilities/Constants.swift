//
//  Constants.swift
//  AmericanShop
//
//  Created by Kato Steven Mubiru on 07/11/2022.
//

import SwiftUI
import UIKit

let categories:[CategoryModel] = Bundle.main.decode("category.json")// category data

let players: [playerModel] = Bundle.main.decode("player.json")// player image data

let colorBackground: Color = Color("ColorBackground")// here we dont want to reference the color now and then.

let colorGray : Color  = Color(UIColor.systemGray4)// ui system color

// our grid layout

let columns: CGFloat = 10
let rows: CGFloat = 10

var grid: [GridItem] {
    return Array(repeating: GridItem(.flexible(), spacing: rows), count: 2)
    
}

