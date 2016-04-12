//
//  ColorModel.swift
//  FunFacts
//
//  Created by Shale Gulbas on 1/29/16.
//  Copyright © 2016 ShaleGulbas. All rights reserved.
//

import UIKit
import GameKit

struct ColorModel {
    let colors = [
        UIColor(red: 90/255.0, green: 187/255.0, blue: 181/255.0, alpha: 1.0), // teal color
        UIColor(red: 84/255.0, green: 34/255.0, blue: 234/255.0, alpha: 1.0),
        UIColor(red: 105/255.0, green: 94/255.0, blue: 133/255.0, alpha: 1.0),
        UIColor(red: 77/255.0, green: 75/255.0, blue: 82/255.0, alpha: 1.0)
    ]
    
    func getRandomColor() -> UIColor {
        let randomNumber = GKRandomSource.sharedRandom().nextIntWithUpperBound(colors.count)
        // this is just creating a random variable with a limit of # of contraints in our array to change the background color every time we hit the buttton
        
        return colors[randomNumber]
    }
}
