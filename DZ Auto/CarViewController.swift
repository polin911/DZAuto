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
    
    @IBOutlet var viewBackground: UIView!
    
    @IBOutlet var priceLabel: UILabel!
    
    var price = 100000
    
    @IBOutlet var choseColorOutlet: UISegmentedControl!
    
    
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
        
        //choseColorOutlet.addTarget(self, action: #selector(choseColor), for: .valueChanged)
        
        discound()
        
    }
    
    @IBAction func leatherOnSwitch(_ sender: UISwitch) {
        
        if leatherSwitchOutlet.isOn {
            price += allAboutCar.makePrice(car: .leather)
        } else  { price -= allAboutCar.makePrice(car: .leather)}
        priceLabel.text = String("\(price)$ ")
        
        discound()
    }
    
    @IBAction func autoOnSwitch(_ sender: UISwitch) {
        
        if automatSwitchOutlet.isOn {
            price += allAboutCar.makePrice(car: .automat)
        } else {price -= allAboutCar.makePrice(car: .automat)}
        priceLabel.text = String("\(price)$ ")
        
        discound()
    }
    
    
    @IBAction func lukOnSwitch(_ sender: UISwitch) {
        
        
        if lukSwitchOutlet.isOn {
            price += allAboutCar.makePrice(car: .luk)
        } else {price -= allAboutCar.makePrice(car: .luk)}
        priceLabel.text = String("\(price)$ ")
        
        discound()
    }
    
    
    @IBAction func climateOnSwitch(_ sender: UISwitch) {
        
        
        if climateSwitchOutlet.isOn {
            price += allAboutCar.makePrice(car: .air)
        } else {price -= allAboutCar.makePrice(car: .air)}
        priceLabel.text = String("\(price)$ ")
        
        discound()
    }
    
    @IBAction func choseColorButtonPressed(_ sender: UISegmentedControl) {
        if choseColorOutlet.selectedSegmentIndex == 0 {
            viewBackground.backgroundColor = UIColor(red: 205.0/255.0, green: 185.0/255.0, blue: 255.0/255.0, alpha: 1.0)
            price += allAboutCar.makePrice(car: .colorYellow)
            priceLabel.text = String("\(price)$ ")
        }
        if choseColorOutlet.selectedSegmentIndex == 1 {
            viewBackground.backgroundColor = UIColor.red
            price += allAboutCar.makePrice(car: .colorRed)
            priceLabel.text = String("\(price)$ ")

        }
        if choseColorOutlet.selectedSegmentIndex == 2 {
            viewBackground.backgroundColor = UIColor.blue
            price += allAboutCar.makePrice(car: .colorBlue)
            priceLabel.text = String("\(price)$ ")
        }
        
    }
    ////////////
    
    func choseColor() {
        switch choseColorOutlet.selectedSegmentIndex {
        case 0:
            viewBackground.backgroundColor = UIColor(red: 205.0/255.0, green: 185.0/255.0, blue: 255.0/255.0, alpha: 1.0)
            price += allAboutCar.makePrice(car: .colorYellow)
            priceLabel.text = String("\(price)$ ")
        case 1:
            viewBackground.backgroundColor = UIColor.red
            price += allAboutCar.makePrice(car: .colorRed)
            priceLabel.text = String("\(price)$ ")
        case 2:
            viewBackground.backgroundColor = UIColor.blue
            price += allAboutCar.makePrice(car: .colorBlue)
            priceLabel.text = String("\(price)$ ")
        default: break
            
        }
    }
    
    
    func discound() {
        if climateSwitchOutlet.isOn && lukSwitchOutlet.isOn && automatSwitchOutlet.isOn && leatherSwitchOutlet.isOn {
            
          priceLabel.textColor = UIColor.red
            priceLabel.text = "221 580$"
        } else {
            priceLabel.textColor = UIColor(red: 106.0/255.0, green: 27.0/255.0, blue: 154.0/255.0, alpha: 1.0)
        }
    }
    
}






