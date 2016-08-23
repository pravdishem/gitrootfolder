//
//  offerTemplatesVC.swift
//  DishemMerchant
//
//  Created by Nireesh on 17/08/16.
//  Copyright © 2016 Dishem. All rights reserved.
//

import UIKit

class offerTemplatesVC: UIViewController,UICollectionViewDataSource,UICollectionViewDelegate,UITableViewDelegate,UITableViewDataSource {
let reuseIdentifier = "cell"
    let reuseIdentifier1 = "cell1"
    var items = ["Outlet1", "Outlet2", "Outlet3"]
    var offer = ["offer price RS:100","offer price 300"]
    
    @IBOutlet weak var tv: UITableView!
    @IBOutlet weak var cv: UICollectionView!
    //collection view
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.items.count
    }
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        
        // get a reference to our storyboard cell
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier(reuseIdentifier, forIndexPath: indexPath) as!offerTemplatesCVCell
        
        // Use the outlet in our custom class to get a reference to the UILabel in the cell
        cell.label1.text = self.items[indexPath.item]
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
    //tableview
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.offer.count
        
    }
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell
    {
        let cell1 = tableView.dequeueReusableCellWithIdentifier("cell1") as! offerTemplateTVCell
        
        cell1.offer.text = offer[indexPath.row]
        //pubbutt ()
        
        return cell1
        
    }
    func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    
    func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            offer.removeAtIndex(indexPath.row)
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view.
        }
    }
    


    override func viewDidLoad() {
        super.viewDidLoad()

    cv.delegate = self
        cv.dataSource = self
        tv.delegate = self
        tv.dataSource = self
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
