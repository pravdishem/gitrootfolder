//
//  SriniDashboardVC.swift
//  DishemMerchant
//
//  Created by Srinidhi Ramesh on 12/08/16.
//  Copyright © 2016 Dishem. All rights reserved.
//

import UIKit
import Alamofire

class SriniDashboardVC: UIViewController {
    
    @IBOutlet weak var topvw: UIView!
    @IBOutlet weak var dashtitle: UILabel!
    @IBOutlet weak var topimg: UIImageView!
    
    @IBOutlet weak var img1: UIImageView!
    @IBOutlet weak var img2: UIImageView!
    @IBOutlet weak var img3: UIImageView!
    @IBOutlet weak var img4: UIImageView!
    @IBOutlet weak var img5: UIImageView!
    @IBOutlet weak var img6: UIImageView!
    
    @IBOutlet weak var vw: UIView!
    
    @IBOutlet weak var btn1: UIButton!
    @IBOutlet weak var btn2: UIButton!
    @IBOutlet weak var btn3: UIButton!
    @IBOutlet weak var btn4: UIButton!
    
    let aspectRatio = CGFloat(488.0/386.0)
    let topAndBottomMinimum : CGFloat = 15.0
    let leftRightGap : CGFloat = 15.0
    let btnToImgs : CGFloat = 12.0
    let horGap : CGFloat = 10.0
    let verGap : CGFloat = 10.0
    let btnHt : CGFloat = 30.0
    let topVwHt : CGFloat = 50.0
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        
        let widthConstraint = (vw.bounds.width - horGap)/(2*aspectRatio)
        let heightConstraint = (vw.bounds.height - btnHt*2 - topAndBottomMinimum*2 - btnToImgs*2 - verGap*2)/3
     
        print("wc \(widthConstraint) hc \(heightConstraint)")
        
        if(widthConstraint < heightConstraint)
        {
            NSLayoutConstraint(item: img1,
                               attribute: .Width,
                               relatedBy: .Equal,
                               toItem: nil,
                               attribute: .NotAnAttribute,
                               multiplier: 0.0,
                               constant: widthConstraint*aspectRatio).active = true
        }
        else
        {
            NSLayoutConstraint(item: img1,
                               attribute: .Height,
                               relatedBy: .Equal,
                               toItem: nil,
                               attribute: .NotAnAttribute,
                               multiplier: 0.0,
                               constant: heightConstraint).active = true
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
        removeConstraints(self.view,topvw,dashtitle,topimg,vw,img1,img2,img3,img4,img5,img6,btn1,btn2,btn3,btn4)
        
        maskFalse(topvw,dashtitle,topimg,vw,img1,img2,img3,img4,img5,img6,btn1,btn2,btn3,btn4)

        
        NSLayoutConstraint(item: topvw,
                           attribute: .Leading,
                           relatedBy: .Equal,
                           toItem: self.view,
                           attribute: .Leading,
                           multiplier: 1.0,
                           constant: 0.0).active = true
        
        NSLayoutConstraint(item: topvw,
                           attribute: .Trailing,
                           relatedBy: .Equal,
                           toItem: self.view,
                           attribute: .Trailing,
                           multiplier: 1.0,
                           constant: 0.0).active = true
        
        NSLayoutConstraint(item: topvw,
                           attribute: .Height,
                           relatedBy: .Equal,
                           toItem: nil,
                           attribute: .NotAnAttribute,
                           multiplier: 0.0,
                           constant: topVwHt).active = true
        
        NSLayoutConstraint(item: topvw,
                           attribute: .Top,
                           relatedBy: .Equal,
                           toItem: self.view,
                           attribute: .Top,
                           multiplier: 1.0,
                           constant: 0.0).active = true
        
        NSLayoutConstraint(item: dashtitle,
                           attribute: .CenterX,
                           relatedBy: .Equal,
                           toItem: topvw,
                           attribute: .CenterX,
                           multiplier: 1.0,
                           constant: 0.0).active = true
        
        NSLayoutConstraint(item: dashtitle,
                           attribute: .CenterY,
                           relatedBy: .Equal,
                           toItem: topvw,
                           attribute: .CenterY,
                           multiplier: 1.0,
                           constant: 8.0).active = true
        
        
        NSLayoutConstraint(item: topimg,
                           attribute: .Height,
                           relatedBy: .Equal,
                           toItem: nil,
                           attribute: .NotAnAttribute,
                           multiplier: 0.0,
                           constant: 25.0).active = true
        
        NSLayoutConstraint(item: topimg,
                           attribute: .Width,
                           relatedBy: .Equal,
                           toItem: nil,
                           attribute: .NotAnAttribute,
                           multiplier: 0.0,
                           constant: 25.0).active = true
        
        NSLayoutConstraint(item: topimg,
                           attribute: .Trailing,
                           relatedBy: .Equal,
                           toItem: topvw,
                           attribute: .Trailing,
                           multiplier: 1.0,
                           constant: -10.0).active = true
        
        NSLayoutConstraint(item: topimg,
                           attribute: .CenterY,
                           relatedBy: .Equal,
                           toItem: topvw,
                           attribute: .CenterY,
                           multiplier: 1.0,
                           constant: 8.0).active = true
        
        
        NSLayoutConstraint(item: vw,
                           attribute: .Leading,
                           relatedBy: .Equal,
                           toItem: self.view,
                           attribute: .Leading,
                           multiplier: 1.0,
                           constant: 10.0).active = true
        
        NSLayoutConstraint(item: vw,
                           attribute: .Trailing,
                           relatedBy: .Equal,
                           toItem: self.view,
                           attribute: .Trailing,
                           multiplier: 1.0,
                           constant: -10.0).active = true
        
        NSLayoutConstraint(item: vw,
                           attribute: .Top,
                           relatedBy: .Equal,
                           toItem: topvw,
                           attribute: .Bottom,
                           multiplier: 1.0,
                           constant: 0.0).active = true
        
        NSLayoutConstraint(item: vw,
                           attribute: .Bottom,
                           relatedBy: .Equal,
                           toItem: self.view,
                           attribute: .Bottom,
                           multiplier: 1.0,
                           constant: 0.0).active = true
        
        NSLayoutConstraint(item: img1,
                           attribute: .Width,
                           relatedBy: .Equal,
                           toItem: img1,
                           attribute: .Height,
                           multiplier: aspectRatio,
                           constant: 0.0).active = true
        
        NSLayoutConstraint(item: img2,
                           attribute: .Width,
                           relatedBy: .Equal,
                           toItem: img2,
                           attribute: .Height,
                           multiplier: aspectRatio,
                           constant: 0.0).active = true
        
        NSLayoutConstraint(item: img3,
                           attribute: .Width,
                           relatedBy: .Equal,
                           toItem: img3,
                           attribute: .Height,
                           multiplier: aspectRatio,
                           constant: 0.0).active = true
        
        NSLayoutConstraint(item: img4,
                           attribute: .Width,
                           relatedBy: .Equal,
                           toItem: img4,
                           attribute: .Height,
                           multiplier: aspectRatio,
                           constant: 0.0).active = true
      
        NSLayoutConstraint(item: img5,
                           attribute: .Width,
                           relatedBy: .Equal,
                           toItem: img5,
                           attribute: .Height,
                           multiplier: aspectRatio,
                           constant: 0.0).active = true
      
        NSLayoutConstraint(item: img6,
                           attribute: .Width,
                           relatedBy: .Equal,
                           toItem: img6,
                           attribute: .Height,
                           multiplier: aspectRatio,
                           constant: 0.0).active = true
        
        
        NSLayoutConstraint(item: img1,
                           attribute: .Trailing,
                           relatedBy: .Equal,
                           toItem: img3,
                           attribute: .Trailing,
                           multiplier: 1.0,
                           constant: 0.0).active = true
        
        NSLayoutConstraint(item: img1,
                           attribute: .Trailing,
                           relatedBy: .Equal,
                           toItem: img5,
                           attribute: .Trailing,
                           multiplier: 1.0,
                           constant: 0.0).active = true
        
        NSLayoutConstraint(item: img2,
                           attribute: .Leading,
                           relatedBy: .Equal,
                           toItem: img4,
                           attribute: .Leading,
                           multiplier: 1.0,
                           constant: 0.0).active = true
        
        NSLayoutConstraint(item: img2,
                           attribute: .Leading,
                           relatedBy: .Equal,
                           toItem: img6,
                           attribute: .Leading,
                           multiplier: 1.0,
                           constant: 0.0).active = true
      
        NSLayoutConstraint(item: img1,
                           attribute: .Top,
                           relatedBy: .Equal,
                           toItem: img2,
                           attribute: .Top,
                           multiplier: 1.0,
                           constant: 0.0).active = true
        
        NSLayoutConstraint(item: img3,
                           attribute: .Top,
                           relatedBy: .Equal,
                           toItem: img4,
                           attribute: .Top,
                           multiplier: 1.0,
                           constant: 0.0).active = true
        
        NSLayoutConstraint(item: img5,
                           attribute: .Top,
                           relatedBy: .Equal,
                           toItem: img6,
                           attribute: .Top,
                           multiplier: 1.0,
                           constant: 0.0).active = true
        
        
        NSLayoutConstraint(item: img3,
                           attribute: .CenterY,
                           relatedBy: .Equal,
                           toItem: vw,
                           attribute: .CenterY,
                           multiplier: 1.0,
                           constant: 0.0).active = true
        
        
        NSLayoutConstraint(item: img1,
                           attribute: .Bottom,
                           relatedBy: .Equal,
                           toItem: img3,
                           attribute: .Top,
                           multiplier: 1.0,
                           constant: -(verGap)).active = true
        
        NSLayoutConstraint(item: img5,
                           attribute: .Top,
                           relatedBy: .Equal,
                           toItem: img3,
                           attribute: .Bottom,
                           multiplier: 1.0,
                           constant: verGap).active = true
        
        NSLayoutConstraint(item: img1,
                           attribute: .Trailing,
                           relatedBy: .Equal,
                           toItem: vw,
                           attribute: .CenterX,
                           multiplier: 1.0,
                           constant: -(horGap/2)).active = true
        
        NSLayoutConstraint(item: img2,
                           attribute: .Leading,
                           relatedBy: .Equal,
                           toItem: vw,
                           attribute: .CenterX,
                           multiplier: 1.0,
                           constant: horGap/2).active = true
        
        NSLayoutConstraint(item: img1,
                           attribute: .Width,
                           relatedBy: .Equal,
                           toItem: img2,
                           attribute: .Width,
                           multiplier: 1.0,
                           constant: 0.0).active = true
        
        NSLayoutConstraint(item: img1,
                           attribute: .Width,
                           relatedBy: .Equal,
                           toItem: img3,
                           attribute: .Width,
                           multiplier: 1.0,
                           constant: 0.0).active = true
        
        NSLayoutConstraint(item: img1,
                           attribute: .Width,
                           relatedBy: .Equal,
                           toItem: img4,
                           attribute: .Width,
                           multiplier: 1.0,
                           constant: 0.0).active = true
        
        NSLayoutConstraint(item: img1,
                           attribute: .Width,
                           relatedBy: .Equal,
                           toItem: img5,
                           attribute: .Width,
                           multiplier: 1.0,
                           constant: 0.0).active = true
        
        NSLayoutConstraint(item: img1,
                           attribute: .Width,
                           relatedBy: .Equal,
                           toItem: img6,
                           attribute: .Width,
                           multiplier: 1.0,
                           constant: 0.0).active = true
     
        NSLayoutConstraint(item: btn1,
                           attribute: .Leading,
                           relatedBy: .Equal,
                           toItem: img1,
                           attribute: .Leading,
                           multiplier: 1.0,
                           constant: 0.0).active = true
        
        NSLayoutConstraint(item: btn1,
                           attribute: .Trailing,
                           relatedBy: .Equal,
                           toItem: vw,
                           attribute: .CenterX,
                           multiplier: 1.0,
                           constant: -(horGap)).active = true
        
        NSLayoutConstraint(item: btn2,
                           attribute: .Leading,
                           relatedBy: .Equal,
                           toItem: vw,
                           attribute: .CenterX,
                           multiplier: 1.0,
                           constant: horGap).active = true
        
        NSLayoutConstraint(item: btn2,
                           attribute: .Trailing,
                           relatedBy: .Equal,
                           toItem: img2,
                           attribute: .Trailing,
                           multiplier: 1.0,
                           constant: 0.0).active = true
        
        NSLayoutConstraint(item: btn3,
                           attribute: .Leading,
                           relatedBy: .Equal,
                           toItem: img5,
                           attribute: .Leading,
                           multiplier: 1.0,
                           constant: 0.0).active = true
        
        NSLayoutConstraint(item: btn3,
                           attribute: .Trailing,
                           relatedBy: .Equal,
                           toItem: vw,
                           attribute: .CenterX,
                           multiplier: 1.0,
                           constant: -(horGap)).active = true
        
        NSLayoutConstraint(item: btn4,
                           attribute: .Leading,
                           relatedBy: .Equal,
                           toItem: vw,
                           attribute: .CenterX,
                           multiplier: 1.0,
                           constant: horGap).active = true
        
        NSLayoutConstraint(item: btn4,
                           attribute: .Trailing,
                           relatedBy: .Equal,
                           toItem: img6,
                           attribute: .Trailing,
                           multiplier: 1.0,
                           constant: 0.0).active = true
        
        NSLayoutConstraint(item: btn1,
                           attribute: .Height,
                           relatedBy: .Equal,
                           toItem: nil,
                           attribute: .NotAnAttribute,
                           multiplier: 0.0,
                           constant: btnHt).active = true
        
        NSLayoutConstraint(item: btn2,
                           attribute: .Height,
                           relatedBy: .Equal,
                           toItem: nil,
                           attribute: .NotAnAttribute,
                           multiplier: 0.0,
                           constant: btnHt).active = true
        
        NSLayoutConstraint(item: btn3,
                           attribute: .Height,
                           relatedBy: .Equal,
                           toItem: nil,
                           attribute: .NotAnAttribute,
                           multiplier: 0.0,
                           constant: btnHt).active = true
        
        NSLayoutConstraint(item: btn4,
                           attribute: .Height,
                           relatedBy: .Equal,
                           toItem: nil,
                           attribute: .NotAnAttribute,
                           multiplier: 0.0,
                           constant: btnHt).active = true
        
        NSLayoutConstraint(item: btn1,
                           attribute: .Bottom,
                           relatedBy: .Equal,
                           toItem: img1,
                           attribute: .Top,
                           multiplier: 1.0,
                           constant: -(btnToImgs)).active = true
        
        NSLayoutConstraint(item: btn2,
                           attribute: .Bottom,
                           relatedBy: .Equal,
                           toItem: img1,
                           attribute: .Top,
                           multiplier: 1.0,
                           constant: -(btnToImgs)).active = true
        
        NSLayoutConstraint(item: btn3,
                           attribute: .Top,
                           relatedBy: .Equal,
                           toItem: img5,
                           attribute: .Bottom,
                           multiplier: 1.0,
                           constant: btnToImgs).active = true
        
        NSLayoutConstraint(item: btn4,
                           attribute: .Top,
                           relatedBy: .Equal,
                           toItem: img5,
                           attribute: .Bottom,
                           multiplier: 1.0,
                           constant: btnToImgs).active = true

    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
    func removeConstraints(v : UIView...) {
        var list = [NSLayoutConstraint]()
        for vi in v
        {
         let constraints = vi.constraints
            for c in constraints {
                    list.append(c)
        }
        vi.removeConstraints(list)
        }
    }
    
    func maskFalse(v : UIView...)
    {
        for vi in v
        {
            vi.translatesAutoresizingMaskIntoConstraints = false
        }
    }

}
