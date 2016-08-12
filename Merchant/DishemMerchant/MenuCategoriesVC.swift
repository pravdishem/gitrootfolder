//
//  MenuCategoriesVC.swift
//  DishemMerchant
//
//  Created by Praveen on 10/08/16.
//  Copyright © 2016 Dishem. All rights reserved.
//

import UIKit
import Alamofire

class MenuCategoriesVC: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var arrMenuCategories: NSArray!
    var arrStrMenuCategories: [String] = []
   

    @IBOutlet weak var tvCategories: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        getMenuCategories()
        //refreshTableData()
        
    }
    
    func refreshTableData()
    {
        tvCategories.delegate = self
        tvCategories.dataSource = self
        tvCategories.reloadData()
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
    }
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrMenuCategories.count
    }
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath)
        
        cell.textLabel?.text = arrStrMenuCategories[indexPath.row] as! String
        
        return cell
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func getMenuCategories()
    {
        //let parameters = ["userEmail": self.Username.text, "userPassword": self.Password.text , "lastLoginLat": "\(curLat)", "lastLoginLng": "\(curLong)"]
        
        
        
            Alamofire.request(.POST, "http://dishem.com/DishemBusiness/GetCategory.php?restaurantId=115")
            .responseJSON { response in
                print(response.request)  // original URL request
                print(response.response) // URL response
                print(response.data)     // server data
                print(response.result)   // result of response serialization
                
                if let JSON = response.result.value {
                    print("JSON: \(JSON)")
                    
                    let Response:NSDictionary = JSON as! NSDictionary
                    print(Response)
                    
                    self.arrMenuCategories = Response.objectForKey("GetMenuCategory") as! NSArray
                    
                    if(self.arrMenuCategories.count > 0)
                    {
                        
                        for index in 0...self.arrMenuCategories.count-1{
                            
                            let strCategoryName: String = self.arrMenuCategories[index].objectForKey("categoryName") as! String
                            
                            self.arrStrMenuCategories.append(strCategoryName)
                            
                            print(strCategoryName)
                            }
                        self.refreshTableData()
                        
                    }
                    else{
                                print ("No records")
                            }
                        }
                        
                    }
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
