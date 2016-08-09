//
//  MenuItems1ViewController.swift
//  DishemMerchant
//
//  Created by lakshminarayana yadav on 8/3/16.
//  Copyright © 2016 Dishem. All rights reserved.
//

import UIKit

class MenuItems1ViewController: UIViewController {

    @IBOutlet var MD: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        
        
        self.MD.layer.borderWidth = 1
        self.MD.layer.borderColor = UIColor(red:222/255.0, green:225/255.0, blue:227/255.0, alpha: 1.0).CGColor
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
}
