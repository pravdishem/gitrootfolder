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
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.items.count
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        // get a reference to our storyboard cell
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath) as!offerTemplatesCVCell
        
        // Use the outlet in our custom class to get a reference to the UILabel in the cell
        cell.label1.text = self.items[(indexPath as NSIndexPath).item]
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
    //tableview
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.offer.count
        
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell1 = tableView.dequeueReusableCell(withIdentifier: "cell1") as! offerTemplateTVCell
        
        cell1.offer.text = offer[(indexPath as NSIndexPath).row]
        //pubbutt ()
        
        return cell1
        
    }
    func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            offer.remove(at: (indexPath as NSIndexPath).row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
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
