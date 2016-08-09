//
//  myOutletVC.swift
//  dishemforbusiness
//
//  Created by Praveen on 11/07/16.
//  Copyright © 2016 Nanite Solutions. All rights reserved.
//

import UIKit

class myOutletVC: UIViewController,UICollectionViewDelegate, UICollectionViewDataSource {
    
    
    @IBOutlet var myOutletCollectionView: myOutletCVCell!


    override func viewDidLoad() {
        super.viewDidLoad()
        title = "My Outlet"
        self.navigationController?.navigationBar.titleTextAttributes = [NSForegroundColorAttributeName:UIColor.blueColor()]
        

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 1
    }
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        
        // get a reference to our storyboard cell
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier("cell", forIndexPath: indexPath) as! myOutletCVCell
        
        
        
        cell.btnAddOutlet.layer.setValue(indexPath.row, forKey: "index")
        cell.btnAddOutlet.addTarget(self, action: "AddRow:", forControlEvents: UIControlEvents.TouchUpInside)
        
        // Remove the button from the first cell
       

     
        
        // UIColor(red: 80.0/255.0, green: 80.0/255.0, blue: 167/255.0, alpha: 1.0).CGColor
        
        return cell
    }
    func collectionView(collectionView: UICollectionView, didSelectItemAtIndexPath indexPath: NSIndexPath) {
        
//        myselectedRow = ( "(\(indexPath.row)") as String
//        tvOutletTransactions.reloadData()
//        // handle tap events
//        print("You selected cell #\(indexPath.item)!")
    }
    
    func AddRow(sender:UIButton) {
        
       print("button action sikatu")
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
