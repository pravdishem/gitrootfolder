//
//  LoginVC.swift
//  DishemMerchant
//
//  Created by administrator on 22/07/16.
//  Copyright © 2016 Dishem. All rights reserved.
//

import UIKit
import Alamofire
import SCLAlertView

class LoginVC: UIViewController {
    
    let alert = SCLAlertView()
    let curLat = 12.88660
    let curLong = 77
    var LoginSucces = false
    
    @IBOutlet var Username: UITextField!
    @IBOutlet weak var lblMessage: UILabel!
    
    
    @IBOutlet var btngetstarted: UIButton!
    @IBOutlet var Password: UITextField!
    
    
    //Forgot Password
    @IBAction func btnForgot_click(sender: AnyObject) {
        
        let txt = alert.addTextField("Email Id")
        alert.showEdit("Forgot Password", subTitle: "Please enter your email id")
        
    }
    //Have
    //bye
    //hello 
    //hiii
    
    //Login Button Click
    @IBAction func btnClick_getstarted(sender: AnyObject) {
        if(validateInput())
        {
            Login()
        }
    }
    
    func validateInput() -> Bool {
        if(Username.text == "" || Password.text == "")
        {
            lblMessage.hidden = false
            return false
        }
        else
        {
            lblMessage.hidden = true
            return true
        }
    }


    @IBOutlet weak var vw_loginbox: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        //To give shadow behind the loginbox
        vw_loginbox.layer.cornerRadius = 10
        vw_loginbox.layer.shadowOffset = CGSizeMake(-10, 10)
        vw_loginbox.layer.shadowRadius = 5
        vw_loginbox.layer.shadowOpacity = 0.5
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    func Login(){
        
        let parameters = ["userEmail": self.Username.text, "userPassword": self.Password.text , "lastLoginLat": "\(curLat)", "lastLoginLng": "\(curLong)"]
        
        
        //        let parameters = ["userEmail": "jacinth9@gmail.com", "userPassword": "1234516" , "lastLoginLat": "\(curLat)", "lastLoginLng": "\(curLong)"]
        
        
        
        Alamofire.request(.POST, "http://dishem.com/DishemBusiness/MerchantLogin.php", parameters: parameters as! [String : String])
            .responseJSON { response in
                print(response.request)  // original URL request
                print(response.response) // URL response
                print(response.data)     // server data
                print(response.result)   // result of response serialization
                
                if let JSON = response.result.value {
                    print("JSON: \(JSON)")
                    
                    let Response:NSDictionary = JSON as! NSDictionary
                    print(Response)
                    
                    
                    
                    
                    let MerchantLoginStatus:NSArray = Response.objectForKey("MerchantLoginStatus") as! NSArray
                    
                    if(MerchantLoginStatus.count > 0){
                        
                        for index in 0...MerchantLoginStatus.count-1{
                            
                            let loginStatus: String = MerchantLoginStatus[index].objectForKey("loginStatus") as! String
                            print(loginStatus)
                            //                            self.performSegueWithIdentifier("segDashboard", sender: self)
                            
                            
                            
                            if(loginStatus == "success"){
                                self.performSegueWithIdentifier("segDashboard", sender: self)
                                self.LoginSucces = true
                                //                                print(self.LoginSucces)
                            }
                                
                                //                            dispatch_async(dispatch_get_main_queue()){
                                //                                if(self.LoginSucces == true){
                                //
                                //
                                //
                                //                                }
                                
                            else{
                                print ("login failed")
                                
                                
                                
                                let alertController = UIAlertController(title: "", message: "You Have Entered An Incorrect Password, Please Enter Your Correct Username and Password  ", preferredStyle: .Alert)
                                let acceptance = UIAlertAction(title: "OK", style: .Cancel, handler: nil)
                                alertController.addAction(acceptance)
                                self.presentViewController(alertController, animated: true, completion: nil)
                            }
                        }
                        
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
