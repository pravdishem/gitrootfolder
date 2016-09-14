//
//  DiscountOfferVC.swift
//  dishemforbusiness
//
//  Created by Praveen on 01/07/16.
//  Copyright © 2016 Nanite Solutions. All rights reserved.
//

import UIKit

class DiscountOfferVC: UIViewController {

    @IBOutlet var btnHelp: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
   
        title = "DIscount Offer"
        self.navigationController?.navigationBar.titleTextAttributes = [NSForegroundColorAttributeName:UIColor.blue]

        
        btnHelp.layer.cornerRadius = 7
        // Do any additional setup after loading the view.
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
