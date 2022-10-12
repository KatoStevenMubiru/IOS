//
//  Questions.swift
//  Quizzler-iOS13
//
//  Created by Kato Steven Mubiru on 25/09/2022.
//  Copyright © 2022 The App Brewery. All rights reserved.
//

import Foundation

struct Questions{
    
    let text: String
    let answer: String
    
    init(q: String, a: String) {
        self.text = q
        self.answer = a
    }
}
