//
//  MyOutletController.swift
//  DishemMerchant
//
//  Created by Srinidhi Ramesh on 03/08/16.
//  Copyright © 2016 Dishem. All rights reserved.
//

import UIKit

class MyOutletController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    @IBOutlet weak var coll: UICollectionView!
    
    let size = 4
    
    override func viewDidLoad() {
        super.viewDidLoad()
        coll.backgroundColor = UIColor.whiteColor()
        
    }
    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return size
    }
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier("cell", forIndexPath: indexPath) as! CustomCell
        
        cell.contentView.layer.cornerRadius = 2.0;
        cell.contentView.layer.borderWidth = 1.0;
        cell.contentView.layer.borderColor = UIColor.clearColor().CGColor;
        cell.contentView.layer.masksToBounds = true;
        
        cell.layer.shadowColor = UIColor.grayColor().CGColor;
        cell.layer.shadowOffset = CGSizeMake(0, 2.0);
        cell.layer.shadowRadius = 2.0;
        cell.layer.shadowOpacity = 1.0;
        cell.layer.masksToBounds = false;
        cell.layer.shadowPath = UIBezierPath(roundedRect:cell.bounds, cornerRadius:cell.contentView.layer.cornerRadius).CGPath;
        
        
        if(indexPath.row == size - 1)
        {
             cell.btn1!.hidden = true
             cell.btn2!.hidden = true
             cell.vw1!.hidden = true
             cell.img1!.hidden = true
            cell.txt1!.hidden = true
            cell.txt2!.hidden = true
            cell.txt4!.hidden = true
            cell.txt3!.hidden = false
            cell.img2!.hidden = false
            return cell
        }
        else
        {
            cell.btn1!.hidden = false
            cell.btn2!.hidden = false
            cell.vw1!.hidden = false
            cell.img1!.hidden = false
            cell.txt1!.hidden = false
            cell.txt2!.hidden = false
            cell.txt4!.hidden = false
            cell.txt3!.hidden = true
            cell.img2!.hidden = true
        }
        
        
        
        cell.btn1!.backgroundColor = UIColor.clearColor()
        cell.btn1!.layer.cornerRadius = 5
        cell.btn1!.layer.borderWidth = 1
        cell.btn1!.layer.borderColor = UIColor.blueColor().CGColor
    
        cell.btn2!.backgroundColor = UIColor.clearColor()
        cell.btn2!.layer.cornerRadius = 5
        cell.btn2!.layer.borderWidth = 1
        cell.btn2!.layer.borderColor = UIColor.blueColor().CGColor
 
        cell.txt1!.text = "Outlet \(indexPath.row + 1)"
        cell.txt2!.lineBreakMode = .ByWordWrapping // or NSLineBreakMode.ByWordWrapping
        cell.txt2!.numberOfLines = 0
//        if(cell.btn?.layer.valueForKey("index")==nil)
//        {
//        cell.btn?.addTarget(self, action: "btnClick:", forControlEvents: UIControlEvents.TouchUpInside)
//        }
//        cell.btn?.layer.setValue(indexPath.row, forKey: "index")
return cell
    }
    
    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAtIndexPath indexPath: NSIndexPath) -> CGSize {
        let kWhateverHeightYouWant = 170
        return CGSizeMake(collectionView.bounds.size.width/2 - 10, CGFloat(kWhateverHeightYouWant))
    }
    
    
    
    func btnClick(sender:UIButton) {
        
        let i : Int = (sender.layer.valueForKey("index")) as! Int
       print("pos is \(i)")
    }
    

}
