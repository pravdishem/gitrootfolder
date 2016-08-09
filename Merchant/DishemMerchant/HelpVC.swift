//
//  HelpVC.swift
//  DishemMerchant
//
//  Created by administrator on 03/08/16.
//  Copyright © 2016 Dishem. All rights reserved.
//

import UIKit

class HelpVC: UIViewController {
    @IBOutlet var view2: UIView!

    @IBOutlet var view1: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        view2.hidden = true

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func btnDemo_Click(sender: AnyObject) {
        view1.hidden = true
        view2.hidden = false
    }

    @IBAction func btnFAQ_Click(sender: AnyObject) {
       // view2.hidden = false
        view1.hidden = false
        
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
