//
//  Car.swift
//  DZ Auto
//
//  Created by Polina on 28.02.17.
//  Copyright © 2017 Polina. All rights reserved.
//

import Foundation

struct Car {
    
    var price: Double
    
    enum Function {
        case leather
        case automat
        case air
        case luk
    }
    
    func makePrice(about: Function) -> Double {
        var allPrice = self.price
       
        switch about {
        case .leather: true
            allPrice += 20000
        case .air: true
            allPrice += 15000
        case .automat: true
            allPrice += 25000
        case .luk: true
            allPrice += 10000
        default:
            allPrice += 0
        }
    
        
        return allPrice
    }
    
    
    
    
    
    
    
    
}


