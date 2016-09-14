//
//  TransactionsVC.swift
//  dishemforbusiness
//
//  Created by Praveen on 28/06/16.
//  Copyright © 2016 Nanite Solutions. All rights reserved.
//

import UIKit
fileprivate func < <T : Comparable>(lhs: T?, rhs: T?) -> Bool {
  switch (lhs, rhs) {
  case let (l?, r?):
    return l < r
  case (nil, _?):
    return true
  default:
    return false
  }
}


class TransactionsVC: UIViewController,UICollectionViewDataSource,UICollectionViewDelegate,UITableViewDelegate,UITableViewDataSource {
    
    
    @IBOutlet var cvOutletName: UICollectionView!
     var myselectedRow:NSString = NSString()
    
    @IBOutlet var tvOutletTransactions: UITableView!
    
      var items = ["0","1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43", "44", "45", "46", "47", "48"]
    var offerTitle = ["Vada Pav", "Biriyani", "Dosa", "Idli", "Upma", "Bisibele Bhat"]
   var selectedOffersTitle = [String]()
   var color1 = UIColor(red: 217.0/255.0, green: 35.0/255.0, blue: 95/255.0, alpha: 1.0)
    var color2 = UIColor(red: 0.0/255.0, green: 187.0/255.0, blue: 93/255.0, alpha: 1.0)
     var color3 = UIColor(red: 254.0/255.0, green: 194.0/255.0, blue: 18/255.0, alpha: 1.0)
    var color4 = UIColor(red: 119.0/255.0, green: 118.0/255.0, blue: 185/255.0, alpha: 1.0)
    var color5 = UIColor(red: 247.0/255.0, green: 133.0/255.0, blue: 44/255.0, alpha: 1.0)
     var color6 = UIColor(red: 5.0/255.0, green: 37.0/255.0, blue: 186/255.0, alpha: 1.0)
    var dishemColors = [UIColor]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setTabBarVisible(!tabBarIsVisible(), animated: true)
        
        title = "Transactions"
        self.navigationController?.navigationBar.titleTextAttributes = [NSForegroundColorAttributeName:UIColor.blue]
        
      dishemColors = [ color1, color2, color3, color4, color5, color6]
        
        self.cvOutletName.isPagingEnabled = true
  
        
        //cvOutletName.layer.backgroundColor = UIColor (red: 80.0/255.0, green: 80.0/255.0, blue: 167/255.0, alpha: 1.0).CGColor
        

        
        // Do any additional setup after loading the view.
    }
    
    func setTabBarVisible(_ visible:Bool, animated:Bool) {
        
        //* This cannot be called before viewDidLayoutSubviews(), because the frame is not set before this time
        
        // bail if the current state matches the desired state
        if (tabBarIsVisible() == visible) { return }
        
        // get a frame calculation ready
        let frame = self.tabBarController?.tabBar.frame
        let height = frame?.size.height
        let offsetY = (visible ? -height! : height)
        
        // zero duration means no animation
        let duration:TimeInterval = (animated ? 0.3 : 0.0)
        
        //  animate the tabBar
        if frame != nil {
            UIView.animate(withDuration: duration, animations: {
                self.tabBarController?.tabBar.frame = frame!.offsetBy(dx: 0, dy: offsetY!)
                return
            }) 
        }
    }
    
    func tabBarIsVisible() ->Bool {
        return self.tabBarController?.tabBar.frame.origin.y < self.view.frame.maxY
    }
    
    // Call the function from tap gesture recognizer added to your view (or button)
    
    @IBAction func tapped(_ sender: AnyObject) {
        setTabBarVisible(!tabBarIsVisible(), animated: true)
    }

    
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.items.count
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        // get a reference to our storyboard cell
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! TransactionCVCell
        
        cell.lblOutletName.text = self.items[(indexPath as NSIndexPath).row]
        cell.backgroundColor = dishemColors[((indexPath as NSIndexPath).row) % 6]
            
           // UIColor(red: 80.0/255.0, green: 80.0/255.0, blue: 167/255.0, alpha: 1.0).CGColor
        
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        myselectedRow = ( "(\((indexPath as NSIndexPath).row)") as String as NSString
    tvOutletTransactions.reloadData()
        // handle tap events
        print("You selected cell #\((indexPath as NSIndexPath).item)!")
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return offerTitle.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! OutletTransactionTVCell
        
        
        
        
        cell.lblOfferTitle?.text = offerTitle[(indexPath as NSIndexPath).row]
        
        
        
        if cell.isSelected
        {
            cell.accessoryType = UITableViewCellAccessoryType.checkmark
        }
        else
        {
            cell.accessoryType = UITableViewCellAccessoryType.none
        }
        
        
        
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath)
    {
        let cell = tableView.cellForRow(at: indexPath) as! OutletTransactionTVCell
        
        if cell.isSelected == true
        {
            cell.accessoryType = UITableViewCellAccessoryType.checkmark
            
            
            
            
            selectedOffersTitle.append((cell.lblOfferTitle.text)!)
            
            
            
            
            
            
        }
        else
        {
            cell.accessoryType = UITableViewCellAccessoryType.none
            
            
            
            
            selectedOffersTitle = selectedOffersTitle.filter {$0 != offerTitle[(indexPath as NSIndexPath).row]}
            print(selectedOffersTitle)
            
            
            
        }
        
        
    }
    
    func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
        let cell = tableView.cellForRow(at: indexPath)
        
        if cell!.isSelected == true
        {
            cell!.accessoryType = UITableViewCellAccessoryType.checkmark
            
            selectedOffersTitle.append((cell?.textLabel?.text)!)
            print(selectedOffersTitle)
            
        }
        else
        {
            cell!.accessoryType = UITableViewCellAccessoryType.none
            
            
            selectedOffersTitle = selectedOffersTitle.filter {$0 != offerTitle[(indexPath as NSIndexPath).row]}
            print(selectedOffersTitle)
            
            
        }
    }
    
    
    func tableView(_ tableView: UITableView, editActionsForRowAt indexPath: IndexPath) -> [UITableViewRowAction]? {
        
        
        let previewAction = UITableViewRowAction(style: .normal, title: "Preview Offer") { (rowAction:UITableViewRowAction, indexPath:IndexPath) -> Void in
            //TODO: preview the row at indexPath here
            
            print("preview is clicked ")
        }
        previewAction.backgroundColor = UIColor(red: 5.0/255.0, green: 37.0/255.0, blue: 186/255.0, alpha: 1.0)
        return [previewAction]
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
