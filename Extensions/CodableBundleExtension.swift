//
//  CodableBundleExtension.swift
//  Uganda
//
//  Created by Kato Steven Mubiru on 01/11/2022.
//

import Foundation

extension Bundle{
    
    func decode<T : Codable>(_ file : String)-> T{
        
        // we are locating the json file.
        guard let url =  self.url(forResource: file, withExtension: nil) else{
            
            fatalError("Failed to find the file \(file) in bundle")
            
        }
        
        guard let data = try? Data(contentsOf: url) else{
            
            fatalError("Failed to find the data in \(file)")
            
        }
        
        let decoder = JSONDecoder()
        
        guard let loaded = try? decoder.decode(T.self, from:data)else {
            
            fatalError("Failed to decdoe the file \(file) from bundle")
        }
        
        return loaded
        
        
        
        
    }
    
    
    
    
}
