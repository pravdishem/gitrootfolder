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
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.items.count
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        // get a reference to our storyboard cell
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath) as!managerReviewCVcell
        
        // Use the outlet in our custom class to get a reference to the UILabel in the cell
        cell.mylabel.text = self.items[(indexPath as NSIndexPath).item]
        cell.layer.backgroundColor = UIColor.yellow.cgColor // make cell more visible in our example project
        
        return cell
    }
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        // handle tap events
        print("You selected cell #\((indexPath as NSIndexPath).item+1)!")
    }
    /////////////
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.names.count
        
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as! managerReviewTVCell
        cell.lblname.text = names[(indexPath as NSIndexPath).row]
        //pubbutt ()
        
        return cell
        
    }
    func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            names.remove(at: (indexPath as NSIndexPath).row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
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
