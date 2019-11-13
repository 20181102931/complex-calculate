//
//  ViewController.swift
//  complex calculate
//
//  Created by s20181102931 on 2019/11/13.
//  Copyright © 2019 s20181102931. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var Input: UITextField!
    @IBAction func Number(_ sender: UIButton) {
        Input.text = Input.text! + sender.currentTitle!
    }
   @IBAction func calculate(_ sender: UIButton) {
         // Number(_ sender: UIButton)
    let op = sender.title as! String
        switch op
        {
        case "+":
            Input.text = "\(Input.text + )"
        case "-":
            Input.text = "\(Input.text)"
        case "*":
            Input.text = "\(Input.text)"
        case "/":
            Input.text = "\(Input.text)"
        default:
            break
        }
   }
    
    @IBAction func clear(_ sender: UIButton) {
        Input.text = ""
    }
    
    @IBAction func result(_ sender: UIButton) {
        Input.text
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

