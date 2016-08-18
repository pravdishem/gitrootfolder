//
//  managerReviewVC.swift
//  DishemMerchant
//
//  Created by Nireesh on 16/08/16.
//  Copyright © 2016 Dishem. All rights reserved.
//

import UIKit

class managerReviewVC: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate,UITableViewDataSource,UITableViewDelegate{
    let reuseIdentifier = "cell"
    //let reuseIdentifier1 = "cell"// also enter this string as the cell identifier in the storyboard
    @IBOutlet weak var managerReviewtv: UITableView!
    @IBOutlet weak var managerReviewcv: UICollectionView!
    var items = ["Outlet1", "Outlet2", "Outlet3"]
    var names = ["jon deo","Ramesh s"]
    let uncheckedImage = UIImage(named: "unclickcheckbox")! as UIImage
    
    let checkedImage = UIImage(named: "clickcheckbox")! as UIImage
    
    var isChecked: Bool = false
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.items.count
    }
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        
        // get a reference to our storyboard cell
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier(reuseIdentifier, forIndexPath: indexPath) as!managerReviewCVcell
        
        // Use the outlet in our custom class to get a reference to the UILabel in the cell
        cell.mylabel.text = self.items[indexPath.item]
        cell.layer.backgroundColor = UIColor.yellowColor().CGColor // make cell more visible in our example project
        
        return cell
    }
    func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
        return 1
    }
    func collectionView(collectionView: UICollectionView, didSelectItemAtIndexPath indexPath: NSIndexPath) {
        // handle tap events
        print("You selected cell #\(indexPath.item+1)!")
    }
    /////////////
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.names.count
        
    }
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell
    {
        let cell = tableView.dequeueReusableCellWithIdentifier("cell") as! managerReviewTVCell
        cell.lblname.text = names[indexPath.row]
        //pubbutt ()
        
        return cell
        
    }
    func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    
    func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            names.removeAtIndex(indexPath.row)
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view.
        }
    }
    


    override func viewDidLoad() {
        super.viewDidLoad()
        managerReviewcv.delegate = self
        managerReviewcv.dataSource = self
        managerReviewtv.delegate = self
        managerReviewtv.dataSource = self

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
