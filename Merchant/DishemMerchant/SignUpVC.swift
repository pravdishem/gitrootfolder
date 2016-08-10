//
//  SignUpVC.swift
//  DishemMerchant
//
//  Created by Praveen on 01/08/16.
//  Copyright © 2016 Dishem. All rights reserved.
//

import UIKit
import Alamofire

class SignUpVC: UIViewController {

    let curLat = 12.88660
    let curLong = 77

    @IBOutlet weak var mobno: UITextField!
    @IBOutlet weak var SetPassword: UITextField!
    @IBOutlet weak var emailtxt: UITextField!
    @IBOutlet weak var fullnametxt: UITextField!
    @IBOutlet weak var vw_signupbox: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        vw_signupbox.layer.cornerRadius = 10
        vw_signupbox.layer.shadowOffset = CGSizeMake(-10, 10)
        vw_signupbox.layer.shadowRadius = 5
        vw_signupbox.layer.shadowOpacity = 0.5
        
    }
    //comment by nireesh
    //one more

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func signup()
    {
    let parameters = ["Entername": self.fullnametxt.text, "Enter EmailId": self.emailtxt.text,"SetPassword": self.SetPassword.text ,"Entermobno": self.mobno.text , "lastLoginLat": "\(curLat)", "lastLoginLng": "\(curLong)"]
    
    
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
    //self.LoginSuccess = true
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
