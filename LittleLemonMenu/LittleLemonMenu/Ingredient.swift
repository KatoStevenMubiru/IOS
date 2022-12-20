//
//  Ingredient.swift
//  LittleLemonMenu
//
//  Created by Kato Steven Mubiru on 16/12/2022.
//

import Foundation

protocol ExampleProtocol {
    var simpleDescription: String { get }
    mutating func adjust()
}


enum ingredient : ExampleProtocol{
    
    case Spinach
    case Broccoli
    case Carrot
    case Pasta
    case Tomatosauce
    
    var simpleDescription: String {
        return self.getDescription()
    }
    
    mutating func adjust() {
        self = ingredient.Broccoli
    }
    func getDescription() -> String {
            switch self {
            case .Spinach:
                return "spinach"
            case .Broccoli:
                return "broccoli"
            case .Carrot:
                return "carrot"
            case .Pasta:
                return "pasta"
            case .Tomatosauce:
                return "tomatosauce"
            }
        }
    
    
   
    
    
}
