//
//  SriniDashboardVC.swift
//  DishemMerchant
//
//  Created by Srinidhi Ramesh on 12/08/16.
//  Copyright © 2016 Dishem. All rights reserved.
//

import UIKit
//import Alamofire

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
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        let widthConstraint = (vw.bounds.width - horGap)/(2*aspectRatio)
        let heightConstraint = (vw.bounds.height - btnHt*2 - topAndBottomMinimum*2 - btnToImgs*2 - verGap*2)/3
     
        print("wc \(widthConstraint) hc \(heightConstraint)")
        
        if(widthConstraint < heightConstraint)
        {
            NSLayoutConstraint(item: img1,
                               attribute: .width,
                               relatedBy: .equal,
                               toItem: nil,
                               attribute: .notAnAttribute,
                               multiplier: 0.0,
                               constant: widthConstraint*aspectRatio).isActive = true
        }
        else
        {
            NSLayoutConstraint(item: img1,
                               attribute: .height,
                               relatedBy: .equal,
                               toItem: nil,
                               attribute: .notAnAttribute,
                               multiplier: 0.0,
                               constant: heightConstraint).isActive = true
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
        removeConstraints(self.view,topvw,dashtitle,topimg,vw,img1,img2,img3,img4,img5,img6,btn1,btn2,btn3,btn4)
        
        maskFalse(topvw,dashtitle,topimg,vw,img1,img2,img3,img4,img5,img6,btn1,btn2,btn3,btn4)

        
        NSLayoutConstraint(item: topvw,
                           attribute: .leading,
                           relatedBy: .equal,
                           toItem: self.view,
                           attribute: .leading,
                           multiplier: 1.0,
                           constant: 0.0).isActive = true
        
        NSLayoutConstraint(item: topvw,
                           attribute: .trailing,
                           relatedBy: .equal,
                           toItem: self.view,
                           attribute: .trailing,
                           multiplier: 1.0,
                           constant: 0.0).isActive = true
        
        NSLayoutConstraint(item: topvw,
                           attribute: .height,
                           relatedBy: .equal,
                           toItem: nil,
                           attribute: .notAnAttribute,
                           multiplier: 0.0,
                           constant: topVwHt).isActive = true
        
        NSLayoutConstraint(item: topvw,
                           attribute: .top,
                           relatedBy: .equal,
                           toItem: self.view,
                           attribute: .top,
                           multiplier: 1.0,
                           constant: 0.0).isActive = true
        
        NSLayoutConstraint(item: dashtitle,
                           attribute: .centerX,
                           relatedBy: .equal,
                           toItem: topvw,
                           attribute: .centerX,
                           multiplier: 1.0,
                           constant: 0.0).isActive = true
        
        NSLayoutConstraint(item: dashtitle,
                           attribute: .centerY,
                           relatedBy: .equal,
                           toItem: topvw,
                           attribute: .centerY,
                           multiplier: 1.0,
                           constant: 8.0).isActive = true
        
        
        NSLayoutConstraint(item: topimg,
                           attribute: .height,
                           relatedBy: .equal,
                           toItem: nil,
                           attribute: .notAnAttribute,
                           multiplier: 0.0,
                           constant: 25.0).isActive = true
        
        NSLayoutConstraint(item: topimg,
                           attribute: .width,
                           relatedBy: .equal,
                           toItem: nil,
                           attribute: .notAnAttribute,
                           multiplier: 0.0,
                           constant: 25.0).isActive = true
        
        NSLayoutConstraint(item: topimg,
                           attribute: .trailing,
                           relatedBy: .equal,
                           toItem: topvw,
                           attribute: .trailing,
                           multiplier: 1.0,
                           constant: -10.0).isActive = true
        
        NSLayoutConstraint(item: topimg,
                           attribute: .centerY,
                           relatedBy: .equal,
                           toItem: topvw,
                           attribute: .centerY,
                           multiplier: 1.0,
                           constant: 8.0).isActive = true
        
        
        NSLayoutConstraint(item: vw,
                           attribute: .leading,
                           relatedBy: .equal,
                           toItem: self.view,
                           attribute: .leading,
                           multiplier: 1.0,
                           constant: 10.0).isActive = true
        
        NSLayoutConstraint(item: vw,
                           attribute: .trailing,
                           relatedBy: .equal,
                           toItem: self.view,
                           attribute: .trailing,
                           multiplier: 1.0,
                           constant: -10.0).isActive = true
        
        NSLayoutConstraint(item: vw,
                           attribute: .top,
                           relatedBy: .equal,
                           toItem: topvw,
                           attribute: .bottom,
                           multiplier: 1.0,
                           constant: 0.0).isActive = true
        
        NSLayoutConstraint(item: vw,
                           attribute: .bottom,
                           relatedBy: .equal,
                           toItem: self.view,
                           attribute: .bottom,
                           multiplier: 1.0,
                           constant: 0.0).isActive = true
        
        NSLayoutConstraint(item: img1,
                           attribute: .width,
                           relatedBy: .equal,
                           toItem: img1,
                           attribute: .height,
                           multiplier: aspectRatio,
                           constant: 0.0).isActive = true
        
        NSLayoutConstraint(item: img2,
                           attribute: .width,
                           relatedBy: .equal,
                           toItem: img2,
                           attribute: .height,
                           multiplier: aspectRatio,
                           constant: 0.0).isActive = true
        
        NSLayoutConstraint(item: img3,
                           attribute: .width,
                           relatedBy: .equal,
                           toItem: img3,
                           attribute: .height,
                           multiplier: aspectRatio,
                           constant: 0.0).isActive = true
        
        NSLayoutConstraint(item: img4,
                           attribute: .width,
                           relatedBy: .equal,
                           toItem: img4,
                           attribute: .height,
                           multiplier: aspectRatio,
                           constant: 0.0).isActive = true
      
        NSLayoutConstraint(item: img5,
                           attribute: .width,
                           relatedBy: .equal,
                           toItem: img5,
                           attribute: .height,
                           multiplier: aspectRatio,
                           constant: 0.0).isActive = true
      
        NSLayoutConstraint(item: img6,
                           attribute: .width,
                           relatedBy: .equal,
                           toItem: img6,
                           attribute: .height,
                           multiplier: aspectRatio,
                           constant: 0.0).isActive = true
        
        
        NSLayoutConstraint(item: img1,
                           attribute: .trailing,
                           relatedBy: .equal,
                           toItem: img3,
                           attribute: .trailing,
                           multiplier: 1.0,
                           constant: 0.0).isActive = true
        
        NSLayoutConstraint(item: img1,
                           attribute: .trailing,
                           relatedBy: .equal,
                           toItem: img5,
                           attribute: .trailing,
                           multiplier: 1.0,
                           constant: 0.0).isActive = true
        
        NSLayoutConstraint(item: img2,
                           attribute: .leading,
                           relatedBy: .equal,
                           toItem: img4,
                           attribute: .leading,
                           multiplier: 1.0,
                           constant: 0.0).isActive = true
        
        NSLayoutConstraint(item: img2,
                           attribute: .leading,
                           relatedBy: .equal,
                           toItem: img6,
                           attribute: .leading,
                           multiplier: 1.0,
                           constant: 0.0).isActive = true
      
        NSLayoutConstraint(item: img1,
                           attribute: .top,
                           relatedBy: .equal,
                           toItem: img2,
                           attribute: .top,
                           multiplier: 1.0,
                           constant: 0.0).isActive = true
        
        NSLayoutConstraint(item: img3,
                           attribute: .top,
                           relatedBy: .equal,
                           toItem: img4,
                           attribute: .top,
                           multiplier: 1.0,
                           constant: 0.0).isActive = true
        
        NSLayoutConstraint(item: img5,
                           attribute: .top,
                           relatedBy: .equal,
                           toItem: img6,
                           attribute: .top,
                           multiplier: 1.0,
                           constant: 0.0).isActive = true
        
        
        NSLayoutConstraint(item: img3,
                           attribute: .centerY,
                           relatedBy: .equal,
                           toItem: vw,
                           attribute: .centerY,
                           multiplier: 1.0,
                           constant: 0.0).isActive = true
        
        
        NSLayoutConstraint(item: img1,
                           attribute: .bottom,
                           relatedBy: .equal,
                           toItem: img3,
                           attribute: .top,
                           multiplier: 1.0,
                           constant: -(verGap)).isActive = true
        
        NSLayoutConstraint(item: img5,
                           attribute: .top,
                           relatedBy: .equal,
                           toItem: img3,
                           attribute: .bottom,
                           multiplier: 1.0,
                           constant: verGap).isActive = true
        
        NSLayoutConstraint(item: img1,
                           attribute: .trailing,
                           relatedBy: .equal,
                           toItem: vw,
                           attribute: .centerX,
                           multiplier: 1.0,
                           constant: -(horGap/2)).isActive = true
        
        NSLayoutConstraint(item: img2,
                           attribute: .leading,
                           relatedBy: .equal,
                           toItem: vw,
                           attribute: .centerX,
                           multiplier: 1.0,
                           constant: horGap/2).isActive = true
        
        NSLayoutConstraint(item: img1,
                           attribute: .width,
                           relatedBy: .equal,
                           toItem: img2,
                           attribute: .width,
                           multiplier: 1.0,
                           constant: 0.0).isActive = true
        
        NSLayoutConstraint(item: img1,
                           attribute: .width,
                           relatedBy: .equal,
                           toItem: img3,
                           attribute: .width,
                           multiplier: 1.0,
                           constant: 0.0).isActive = true
        
        NSLayoutConstraint(item: img1,
                           attribute: .width,
                           relatedBy: .equal,
                           toItem: img4,
                           attribute: .width,
                           multiplier: 1.0,
                           constant: 0.0).isActive = true
        
        NSLayoutConstraint(item: img1,
                           attribute: .width,
                           relatedBy: .equal,
                           toItem: img5,
                           attribute: .width,
                           multiplier: 1.0,
                           constant: 0.0).isActive = true
        
        NSLayoutConstraint(item: img1,
                           attribute: .width,
                           relatedBy: .equal,
                           toItem: img6,
                           attribute: .width,
                           multiplier: 1.0,
                           constant: 0.0).isActive = true
     
        NSLayoutConstraint(item: btn1,
                           attribute: .leading,
                           relatedBy: .equal,
                           toItem: img1,
                           attribute: .leading,
                           multiplier: 1.0,
                           constant: 0.0).isActive = true
        
        NSLayoutConstraint(item: btn1,
                           attribute: .trailing,
                           relatedBy: .equal,
                           toItem: vw,
                           attribute: .centerX,
                           multiplier: 1.0,
                           constant: -(horGap)).isActive = true
        
        NSLayoutConstraint(item: btn2,
                           attribute: .leading,
                           relatedBy: .equal,
                           toItem: vw,
                           attribute: .centerX,
                           multiplier: 1.0,
                           constant: horGap).isActive = true
        
        NSLayoutConstraint(item: btn2,
                           attribute: .trailing,
                           relatedBy: .equal,
                           toItem: img2,
                           attribute: .trailing,
                           multiplier: 1.0,
                           constant: 0.0).isActive = true
        
        NSLayoutConstraint(item: btn3,
                           attribute: .leading,
                           relatedBy: .equal,
                           toItem: img5,
                           attribute: .leading,
                           multiplier: 1.0,
                           constant: 0.0).isActive = true
        
        NSLayoutConstraint(item: btn3,
                           attribute: .trailing,
                           relatedBy: .equal,
                           toItem: vw,
                           attribute: .centerX,
                           multiplier: 1.0,
                           constant: -(horGap)).isActive = true
        
        NSLayoutConstraint(item: btn4,
                           attribute: .leading,
                           relatedBy: .equal,
                           toItem: vw,
                           attribute: .centerX,
                           multiplier: 1.0,
                           constant: horGap).isActive = true
        
        NSLayoutConstraint(item: btn4,
                           attribute: .trailing,
                           relatedBy: .equal,
                           toItem: img6,
                           attribute: .trailing,
                           multiplier: 1.0,
                           constant: 0.0).isActive = true
        
        NSLayoutConstraint(item: btn1,
                           attribute: .height,
                           relatedBy: .equal,
                           toItem: nil,
                           attribute: .notAnAttribute,
                           multiplier: 0.0,
                           constant: btnHt).isActive = true
        
        NSLayoutConstraint(item: btn2,
                           attribute: .height,
                           relatedBy: .equal,
                           toItem: nil,
                           attribute: .notAnAttribute,
                           multiplier: 0.0,
                           constant: btnHt).isActive = true
        
        NSLayoutConstraint(item: btn3,
                           attribute: .height,
                           relatedBy: .equal,
                           toItem: nil,
                           attribute: .notAnAttribute,
                           multiplier: 0.0,
                           constant: btnHt).isActive = true
        
        NSLayoutConstraint(item: btn4,
                           attribute: .height,
                           relatedBy: .equal,
                           toItem: nil,
                           attribute: .notAnAttribute,
                           multiplier: 0.0,
                           constant: btnHt).isActive = true
        
        NSLayoutConstraint(item: btn1,
                           attribute: .bottom,
                           relatedBy: .equal,
                           toItem: img1,
                           attribute: .top,
                           multiplier: 1.0,
                           constant: -(btnToImgs)).isActive = true
        
        NSLayoutConstraint(item: btn2,
                           attribute: .bottom,
                           relatedBy: .equal,
                           toItem: img1,
                           attribute: .top,
                           multiplier: 1.0,
                           constant: -(btnToImgs)).isActive = true
        
        NSLayoutConstraint(item: btn3,
                           attribute: .top,
                           relatedBy: .equal,
                           toItem: img5,
                           attribute: .bottom,
                           multiplier: 1.0,
                           constant: btnToImgs).isActive = true
        
        NSLayoutConstraint(item: btn4,
                           attribute: .top,
                           relatedBy: .equal,
                           toItem: img5,
                           attribute: .bottom,
                           multiplier: 1.0,
                           constant: btnToImgs).isActive = true

    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
    func removeConstraints(_ v : UIView...) {
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
    
    func maskFalse(_ v : UIView...)
    {
        for vi in v
        {
            vi.translatesAutoresizingMaskIntoConstraints = false
        }
    }

}
