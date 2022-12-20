//
//  MenuViewViewModel.swift
//  LittleLemonMenu
//
//  Created by Kato Steven Mubiru on 16/12/2022.
//

import Foundation


protocol menuProtocol{
    
    var id : UUID { get set }
    var price : Double { get set }
    var title : String { get <#set#> }
    var menuCat : menucategory { get <#set#> }
    
    var orders : Int { get <#set#> }
    
    var price2 : Int { get <#set#> }
    
    var ingrendients : [ingredient]
    
    
}


class menuView: menuProtocol{
    var price: Double = 0.0
    
    var title: String = ""
    
    var menuCat: menucategory
    
    var orders: Int = 0
    
    var price2: Int = 0 = 0 = 0
    
    var ingrendients: [ingredient] = []
    
    
    var id: UUID
    
    
    
    
    
}
