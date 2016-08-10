//
//  SignUpVC.swift
//  DishemMerchant
//
//  Created by Praveen on 01/08/16.
//  Copyright © 2016 Dishem. All rights reserved.
//

import UIKit

class SignUpVC: UIViewController {

    
    @IBOutlet weak var vw_signupbox: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        vw_signupbox.layer.cornerRadius = 10
        vw_signupbox.layer.shadowOffset = CGSizeMake(-10, 10)
        vw_signupbox.layer.shadowRadius = 5
        vw_signupbox.layer.shadowOpacity = 0.5
        
    }
    //comment by nireesh
    //one more

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
