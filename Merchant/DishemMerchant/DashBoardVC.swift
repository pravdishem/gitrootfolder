//
//  DashBoardVC.swift
//  dishemforbusiness
//
//  Created by Abhay on 06/06/16.
//  Copyright © 2016 Nanite Solutions. All rights reserved.
//

import UIKit

class DashBoardVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Dashboard"
        self.navigationController?.navigationBar.titleTextAttributes = [NSForegroundColorAttributeName:UIColor.blueColor()]
        

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
