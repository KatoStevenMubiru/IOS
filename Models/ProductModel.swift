//
//  ProductModel.swift
//  AmericanShop
//
//  Created by Kato Steven Mubiru on 11/11/2022.
//

import Foundation


struct products: Codable, Identifiable{
    
    let id: Int
    let name: String
    let image : String
    let price : Int
    let description : String
    let color : [Double]
    
    
    var red : Double{ return color[0] }
    var green : Double{ return color[1] }
    var blue : Double{ return color[2] }
    
    var Price: String{return "$\(price)"}
    
}
