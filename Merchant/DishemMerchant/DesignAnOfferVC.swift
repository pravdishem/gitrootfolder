//
//  DesignAnOfferVC.swift
//  dishemforbusiness
//
//  Created by Abhay on 07/06/16.
//  Copyright © 2016 Nanite Solutions. All rights reserved.
//

import UIKit

class DesignAnOfferVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Design An Offer"
        self.navigationController?.navigationBar.titleTextAttributes = [NSForegroundColorAttributeName:UIColor.blueColor()]
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func btnDidNotFindTheRightOfferType(sender: AnyObject) {
        
        let alertController = UIAlertController(title: "Did Not Find The Right Offer Type?\n\n\n\n\n\n", message: nil, preferredStyle: UIAlertControllerStyle.ActionSheet)
        
        let margin:CGFloat = 8.0
        let rect = CGRectMake(margin, margin*4, alertController.view.bounds.size.width - margin * 4.0, 100.0)
        let customView = UITextView(frame: rect)
        
        customView.backgroundColor = UIColor.clearColor()
        customView.font = UIFont(name: "Helvetica", size: 15)
        customView.text               = "Tell us more about the offer that you are trying to Design .."
        
        
          customView.backgroundColor = UIColor.clearColor()
        alertController.view.addSubview(customView)
        
        let somethingAction = UIAlertAction(title: "Send", style: UIAlertActionStyle.Default, handler: {(alert: UIAlertAction!) in print("Send")
            
            print(customView.text)
            
        })
        
        let cancelAction = UIAlertAction(title: "Cancel", style: UIAlertActionStyle.Cancel, handler: {(alert: UIAlertAction!) in print("cancel")})
        
        alertController.addAction(somethingAction)
        alertController.addAction(cancelAction)
        
        self.presentViewController(alertController, animated: true, completion:{})
    }
    
}
