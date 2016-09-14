//
//  offerTemplateTVCell.swift
//  DishemMerchant
//
//  Created by Nireesh on 17/08/16.
//  Copyright © 2016 Dishem. All rights reserved.
//

import UIKit

class offerTemplateTVCell: UITableViewCell {
    @IBOutlet weak var checkbox: UIButton!
    @IBOutlet weak var preview: UIButton!
    @IBOutlet weak var editbtn: UIButton!

    @IBOutlet weak var typelbl: UILabel!
    @IBOutlet weak var offer: UILabel!
    //offer.lineBreakMode = .ByWordWrapping // or NSLineBreakMode.ByWordWrapping
   // offer.numberOfLines = 0
    let checkedImage = UIImage(named: "unclickcheckbox")! as UIImage
    let uncheckedImage = UIImage(named: "clickcheckbox")! as UIImage
    
    var isChecked: Bool = false
    
    @IBAction func click(_ sender: AnyObject) {
        if (isChecked == false){
            
            //let img = UIImage(named: "uncheck11")
            checkbox.setBackgroundImage(checkedImage, for: UIControlState())
            
            
            isChecked = true
        }
        else{
            
            // image1 = UIImageView(image: uncheckedImage)
            //let img = UIImage(checkedImage: "check11")
            checkbox.setBackgroundImage(uncheckedImage, for: UIControlState())
            isChecked = false
            
            
        }
        
        
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
