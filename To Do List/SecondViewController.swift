//
//  SecondViewController.swift
//  To Do List
//
//  Created by Ahmed nabil on 8/7/18.
//  Copyright © 2018 Ahmed nabil. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    
    @IBOutlet weak var outout: UITextField!
    
    
    @IBAction func Additem(_ sender: Any) {
        
        
        if (outout.text != "")
        
        {
        
            list.append(outout.text!)
            outout.text = ""
            
        
        }
        
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

