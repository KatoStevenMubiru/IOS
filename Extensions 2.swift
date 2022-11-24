//
//  Extensions 2.swift
//  
//
//  Created by Kato Steven Mubiru on 24/11/2022.
//

import Foundation


class Area{
    
    var radius : Double
    
    
}

extension   Area {
    
    var diameter : Double {
        
        return 2 * radius
    
    }
    
    var areaOfCircle : Double{
        
        return 3.14* radius * radius
        
    }
    
    func giveArea(areaOfCircle : Double)  {
        
        print("The area is \(areaOfCircle)")
    }
}

area1 = Area()

area1.giveArea(areaOfCircle: 6.8)
