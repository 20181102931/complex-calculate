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
    var num1=Double(0.0) //保存上一个值
    var op = ""//当前操作符号
    @IBAction func Number(_ sender: UIButton) {
        if(sender.currentTitle! == ".")  //判断只能输入一次小数点
        {
            if(Input.text?.contains("."))!
            {
                return
            }
        }
        //输入0.的话直接替换，不是的话正常输入
        if(Input.text! == "0"&&sender.currentTitle! != ".")
        {
            Input.text = sender.currentTitle!
        }
        else
        {
             Input.text = Input.text! + sender.currentTitle!
        }
    }
   @IBAction func calculate(_ sender: UIButton)
   {
      op = sender.currentTitle!
      num1 = Double(Input.text!)!
      Input.text = "0"
   }
    @IBAction func clear(_ sender: UIButton) {
        Input.text = "0"
    }
    
    //最后结果的计算
    @IBAction func finalresult(_ sender: UIButton) {
        
        let num2 = Double(Input.text!)!
        switch op
        {
        case "+":
            Input.text = String(num1+num2)
        case "-":
            Input.text = String(num1-num2)
        case "*":
            Input.text = String(num1*num2)
        case "/":
            Input.text = String(num1/num2)
        default:
            break
        }
        
    }
    
    
    //    @IBAction func result(_ sender: UIButton) {
//        Input.text
//    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

