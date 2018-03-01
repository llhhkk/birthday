//
//  ViewController.swift
//  Swift1
//
//  Created by LinHK on 2017/8/23.
//  Copyright © 2017年 LinHK. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    
    @IBOutlet weak var yeartext: UITextField!
    @IBOutlet weak var imageV: UIImageView!
    
    var offet = 2008 % 12
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        yeartext.resignFirstResponder()
    }

    @IBAction func btnClick(_ sender: Any) {
        yeartext.resignFirstResponder()
        let string1 = yeartext.text!
        if  string1.isEmpty{
            print("不要输入空")
            return
        }
        let year = Int(yeartext.text!)!
        if year > 0{
            let imageStr = (year - offet ) % 12
            imageV.image = UIImage(named:String(imageStr))
        }
        
    }
}

