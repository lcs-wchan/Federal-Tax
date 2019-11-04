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
        let name = whatIsYourName.text!
        
        let inputedGrossincome = whatIsYourGrossIncome.text!
        let grossIncome = Double(inputedGrossincome)!
        
        
        //MARK: Methods
        switch grossIncome {
        case 0...47_630:
            print("name, your tax owing is grossIncome*0.15")
        case 47_631...95_259:
            print("name, your tax owing is grossIncome*0.205")
        case 95_260...147_667:
            print("name, your tax owing is grossIncome*0.26")
        case 147_668...270_371:
            print("name, your tax owing is grossIncome*0.29")
        default:
            print("name, your tax owing is grossIncome*0.33")
        }
    }
    
}




