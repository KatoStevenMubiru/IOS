//
//  FruitModel.swift
//  Bibala
//
//  Created by Kato Steven Mubiru on 29/10/2022.
//

import SwiftUI

// this our fruits data model.

struct Fruit: Identifiable{
    var id = UUID()
    var title : String
    var headline : String
    var image : String
    var gradientColors : [Color]
    var description : String
    var nutrition : [String]
    
    
}
