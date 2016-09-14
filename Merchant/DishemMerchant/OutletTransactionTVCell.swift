//
//  OutletTransactionTVCell.swift
//  dishemforbusiness
//
//  Created by Praveen on 28/06/16.
//  Copyright © 2016 Nanite Solutions. All rights reserved.
//

import UIKit

class OutletTransactionTVCell: UITableViewCell {

    @IBOutlet var lblOfferPrize: UILabel!

    @IBOutlet var lblOfferTitle: UILabel!
    
    @IBOutlet var imgView: UIImageView!
    
    @IBOutlet var lblView: UILabel!
    @IBOutlet var imgInterest: UIImageView!
    
    @IBOutlet var lblInterest: UILabel!
    
    @IBOutlet var imgOfferStatus: UIImageView!
    
    @IBOutlet var lblOfferStatus: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
