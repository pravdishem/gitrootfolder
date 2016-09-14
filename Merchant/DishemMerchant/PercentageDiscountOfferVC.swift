//
//  PercentageDiscountOfferVC.swift
//  dishemforbusiness
//
//  Created by Praveen on 01/07/16.
//  Copyright © 2016 Nanite Solutions. All rights reserved.
//

import UIKit

class PercentageDiscountOfferVC: UIViewController {

    @IBOutlet var View2: UIView!
    
    @IBOutlet var View3: UIView!
    
    @IBOutlet var btnPlus2: UIButton!
    
    @IBOutlet var btnPlus3: UIButton!
    
    @IBOutlet var btnPlus1: UIButton!
    
    @IBOutlet var btnHelp: UIButton!
    
    
    var btnStatus:Bool = false
    var expandArray:[String] = []
  
    override func viewDidLoad() {
        super.viewDidLoad()
        View2.isHidden = true
//        View3.hidden = true
//          btnHelp.layer.cornerRadius = 7
//        title = "Percentage DIscount Offer"
//        self.navigationController?.navigationBar.titleTextAttributes = [NSForegroundColorAttributeName:UIColor.blueColor()]

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func btnClickPlus1(_ sender: AnyObject) {
      
        btnStatus = true
        if (btnStatus == true){
            
         
            btnStatus = false
            expandArray.append("A")
            
            if(expandArray.count == 1){
                View2.isHidden = false
            }
            if(expandArray.count == 2){
                View2.isHidden = false
                View3.isHidden = false
                
                
            }
            
            
        }
            
      

    }

    @IBAction func btnClickPlus2(_ sender: AnyObject) {
      
     View2.isHidden = true
        expandArray.removeLast()
        
        
        
    }
    
    @IBAction func btnPlusClick3(_ sender: AnyObject) {
        View3.isHidden = true
        expandArray.removeLast()
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
