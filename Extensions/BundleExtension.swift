//
//  BundleExtension.swift
//  AmericanShop
//
//  Created by Kato Steven Mubiru on 09/11/2022.
//

import Foundation

extension Bundle{
    
    func decode<T: Codable>(_ file: String) -> T{
        
        guard let url = self.url(forResource: file, withExtension: nil) else {
            
            fatalError(" Can't Locate the File \(file) ")
            
        }
        guard let data = try? Data(contentsOf: url) else{
            
            fatalError("Can't load file bundle")
            
        }
        let decoder = JSONDecoder()
        
        guard let decodedData = try? decoder.decode(T.self, from: data) else{
            
            fatalError(" Cant decode\(file) ")
        }
        
        return decodedData
        
        
        
        
        
        
        
        
    }
    
    
    
    
    
    
}

