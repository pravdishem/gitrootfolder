//
//  managerReviewTVCell.swift
//  DishemMerchant
//
//  Created by Nireesh on 16/08/16.
//  Copyright © 2016 Dishem. All rights reserved.
//

import UIKit

class managerReviewTVCell: UITableViewCell {

    @IBOutlet weak var lblname: UILabel!
    @IBOutlet weak var designbtn: UIButton!
    @IBOutlet weak var publishbtn: UIButton!
     let checkedImage = UIImage(named: "unclickcheckbox")! as UIImage
    let uncheckedImage = UIImage(named: "clickcheckbox")! as UIImage
    
    var isChecked: Bool = false
    
    @IBAction func publishclick(sender: AnyObject) {
            if (isChecked == false){
            
            //let img = UIImage(named: "uncheck11")
            publishbtn.setBackgroundImage(checkedImage, forState: .Normal)
            
            
            isChecked = true
        }
        else{
            
            // image1 = UIImageView(image: uncheckedImage)
            //let img = UIImage(checkedImage: "check11")
            publishbtn.setBackgroundImage(uncheckedImage, forState: .Normal)
            isChecked = false
            
            
        }
        
        
    }
    @IBAction func designclicked(sender: AnyObject) {
        
        if (isChecked == false){
            
            //let img = UIImage(named: "uncheck11")
            designbtn.setBackgroundImage(checkedImage, forState: .Normal)
            
            
            isChecked = true
        }
        else{
            
            // image1 = UIImageView(image: uncheckedImage)
            //let img = UIImage(checkedImage: "check11")
            designbtn.setBackgroundImage(uncheckedImage, forState: .Normal)
            isChecked = false
            
            
        }
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
