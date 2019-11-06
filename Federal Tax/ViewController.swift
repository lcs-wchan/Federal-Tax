//
//  ViewController.swift
//  Federal Tax
//
//  Created by William Chan on 2019-10-30.
//  Copyright © 2019 WilliamChan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var whatIsYourName: UITextField!
    
    @IBOutlet weak var whatIsYourGrossIncome: UITextField!
    // runs as soon as the view becomes visible
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func calculateTax(_ sender: Any) {
        guard let name = whatIsYourName.text else{
            whatIsYourName.text = "Please enter your name"
        }
        
        let inputedGrossincome = whatIsYourGrossIncome.text!
        guard let grossIncome = Double(inputedGrossincome) else{
            whatIsYourGrossIncome.text = "Please enter a numeric gross income"
        }
        
        
        //MARK: Methods
        switch grossIncome {
        case 0...47_630:
            var taxOwing = grossIncome*0.15
            print("name, your tax owing is $\(taxOwing)")
        case 47_631...95_259:
            var taxOwing = (grossIncome-47_630)*0.205+47_630*0.15
            print("name, your tax owing is $\(taxOwing)")
        case 95_260...147_667:
            var taxOwing = (grossIncome-95_260)*0.26+47_630*(0.205+0.15)
            print("name, your tax owing is $taxOwing)")
        case 147_668...270_370:
            var taxOwing = (grossIncome-147_668)*0.29+52_408*0.26+47_630*(0.205+0.15)
            print("name, your tax owing is $taxOwing")
        default:
            var taxOwing = (grossIncome-270_371)*0.33+122_703*0.29+52_408*0.26+47_630*(0.205+0.15)
            print("name, your tax owing is $taxOwing")
        }
      let effectiveTaxRate = (taxOwing/grossIncome)*100
        print("Effective tax rate is: effectiveTaxRate% ")
        
        outputtaxOwing.text =
        
    
    
    
    
}




