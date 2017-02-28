//
//  Car.swift
//  DZ Auto
//
//  Created by Polina on 28.02.17.
//  Copyright © 2017 Polina. All rights reserved.
//

import Foundation

struct Car {
    
   // var price: Int
    
    enum Function {
        case leather
        case automat
        case air
        case luk
        
    }
    
    func makePrice(car: Function)-> Int {
        var price = 0
        
        switch car {
        case .leather:
            price += 25000
        case .air:
            price += 30500
        case.automat:
            price += 40700
        case .luk:
            price += 50000
        }
        return price
        
    }

    
//    func makePrice() -> String {
//        var allPrice = 00
//       
//        switch Function.self {
//        case .leather:
//            allPrice += 20000
//        case .air:
//            allPrice += 15000
//        case .automat:
//            allPrice += 25000
//        case .luk:
//            allPrice += 10000
//        
//        }
    
        
//        return String(allPrice)
//    }
    
    
    
    
}


