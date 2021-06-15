//
//  ViewController.swift
//  TemperatureConvertor
//
//  Created by Alexey Yarov on 15.06.2021.
//  Copyright © 2021 Alexey Yarov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var count = 0   // we can do it also     var count: Int = 0
    @IBOutlet weak var conversionNumLabel: UILabel!
    @IBOutlet weak var tempEntry: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    

    @IBAction func convertClicked(_ sender: Any)
    {
        //print("Convert Clicked") <- for checking
        if let result = tempEntry.text //checks text property
        {
            if (result == "")
            {
                return
            }
            else
            {
                if let num = Double(result)
                {
                    let output = num * (9/5) + 32
                    resultLabel.text = String(output)
                    
                    updateCountByOne()
                }
            }
        }
    }
    
    func updateCountByOne()
    {
        count += 1 // or count = count + 1
        conversionNumLabel.text = String(count) + " conversions"
    }
    
}

