//
//  ManagerregistrationVC.swift
//  DishemMerchant
//
//  Created by administrator on 03/08/16.
//  Copyright © 2016 Dishem. All rights reserved.
//

import UIKit

class ManagerregistrationVC: UIViewController {

    @IBOutlet var Outletview: UIView!
    @IBOutlet var Ownerview: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func btnswitch1_click(sender: AnyObject) {
        Ownerview.hidden = true
    }
    
    @IBAction func btnswitch2_click(sender: AnyObject) {
        Outletview.hidden = true
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
