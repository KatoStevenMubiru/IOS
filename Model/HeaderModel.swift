//
//  HeaderData.swift
//  Kedo
//
//  Created by Kato Steven Mubiru on 08/12/2022.
//

import Foundation



struct  HeaderModel: Codable, Identifiable{
    
    
    var id =  UUID()
    var image : String
    var headline : String
    var subheadline : String
  
    
    
    
}
