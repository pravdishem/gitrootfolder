//
//  ContinueManagerVC.swift
//  DishemMerchant
//
//  Created by Nireesh on 20/09/16.
//  Copyright © 2016 Dishem. All rights reserved.
//

import UIKit

class ContinueManagerVC: UIViewController {
       @IBOutlet weak var reminderDetails: UIButton!
    @IBOutlet weak var managerEmailid: UITextField!
    @IBOutlet weak var ManagerMobNo: UITextField!
    @IBOutlet weak var managername: UITextField!
    @IBOutlet weak var outletnumber: UITextField!
    @IBOutlet weak var locality: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func check()
    {
        let checkedImage = UIImage(named: "clickedbox")! as UIImage
        let uncheckedImage = UIImage(named: "unclickedbox")! as UIImage
         var isChecked: Bool = false
        if (isChecked == false){
            
            //let img = UIImage(named: "uncheck11")
            reminderDetails.setBackgroundImage(checkedImage, for: UIControlState())
            
            
            isChecked = true
        }
        else{
            
            // image1 = UIImageView(image: uncheckedImage)
            //let img = UIImage(checkedImage: "check11")
            reminderDetails.setBackgroundImage(uncheckedImage, for: UIControlState())
            isChecked = false
            
        }

    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
