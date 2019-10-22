//
//  Sotry.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import Foundation
struct Story {
    var title : String
    var choice1: String
    var choice2: String
    var choice1Destination:Int
    var choice2Destination:Int
    
    init(a:String, b:String,  choice1Destination:Int,c:String,choice2Destination:Int) {
        title=a
        choice1=b
        choice2=c
        self.choice2Destination=choice2Destination
        self.choice1Destination=choice1Destination
    }
    
}
