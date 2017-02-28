//
//  CarViewController.swift
//  DZ Auto
//
//  Created by Polina on 28.02.17.
//  Copyright © 2017 Polina. All rights reserved.
//

import UIKit

class CarViewController: UIViewController {
    
    var allAboutCar: Car = Car()
    
    
    @IBOutlet var priceLabel: UILabel!
    
    var price = 10000
    
    
    
    @IBOutlet var leatherSwitchOutlet: UISwitch!
    
    @IBOutlet var automatSwitchOutlet: UISwitch!
    
    @IBOutlet var lukSwitchOutlet: UISwitch!
    
    @IBOutlet var climateSwitchOutlet: UISwitch!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        priceLabel.text = String(price)
        
        automatSwitchOutlet.setOn(false, animated: true)
        leatherSwitchOutlet.setOn(false, animated: true)
        lukSwitchOutlet.setOn(false, animated: true)
        climateSwitchOutlet.setOn(false, animated: true)
        
        
        
        
    }
    
    
    
    
    ////////////////need help!!!
    @IBAction func leatherOnSwitch(_ sender: UISwitch) {
        //var newPrice = price
        if leatherSwitchOutlet.isOn {
            price += allAboutCar.makePrice(car: .leather)
        } else  { price -= allAboutCar.makePrice(car: .leather)}
        priceLabel.text = String(price)
    }
    
    @IBAction func autoOnSwitch(_ sender: UISwitch) {
        //var newPrice = price
        
        if automatSwitchOutlet.isOn {
            price += allAboutCar.makePrice(car: .automat)
        } else {price -= allAboutCar.makePrice(car: .automat)}
        priceLabel.text = String(price)
    }
    
    
    @IBAction func lukOnSwitch(_ sender: UISwitch) {
        
        
        if lukSwitchOutlet.isOn {
            price += allAboutCar.makePrice(car: .luk)
        } else {price -= allAboutCar.makePrice(car: .luk)}
        priceLabel.text = String(price)
    }
    
    
    @IBAction func climateOnSwitch(_ sender: UISwitch) {
        
        
        if climateSwitchOutlet.isOn {
            price += allAboutCar.makePrice(car: .air)
        } else {price -= allAboutCar.makePrice(car: .air)}
        priceLabel.text = String(price)
    }
    
    
}
