//
//  AboutdishemViewController.swift
//  DishemMerchant
//
//  Created by administrator on 03/08/16.
//  Copyright © 2016 Dishem. All rights reserved.
//

import UIKit

class AboutdishemViewController: UIViewController {

    @IBOutlet var cancellationview4: UIView!
    @IBOutlet var privacyview3: UIView!
    @IBOutlet var termsview2: UIView!
    @IBOutlet var aboutdishemview1: UIView!
    
    
    
    @IBAction func btnaboutdishem_click(sender: AnyObject) {
        aboutdishemview1.hidden = false
    }
    @IBAction func btnterm_click(sender: AnyObject) {
        termsview2.hidden = false
        
        aboutdishemview1.hidden = true
    }
    
    @IBAction func btnprivacy_click(sender: AnyObject) {
        privacyview3.hidden = false
        
        
    }
    @IBAction func btncancellation_click(sender: AnyObject) {
        cancellationview4.hidden = false
        
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        aboutdishemview1.hidden = true
        termsview2.hidden = true
        privacyview3.hidden = true
        cancellationview4.hidden = true

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
