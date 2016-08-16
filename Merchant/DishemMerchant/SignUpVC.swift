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

    @IBAction func btnsignup(sender: AnyObject) {
      signup()
    }
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
    
    // committed by shekar
    // another commit
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func signup()
    {
        
        
//        let parameters = ["userEmail": "megha@gmail.com" ,
//                          "userPassword": self.SetPassword.text,
//                          "userTypeId":"-1",
//                          "userMobileNumber": self.mobno.text,
//                           "userFirstName":self.fullnametxt.text,
//                            "userLastName":"K",
//                            "userLoggedInVia":3,
//                            "userRegistrationLat":12.12417,
//                            "userRegistrationLng" :77.2124,
//                            "lastLoginLat":12.12417,
//                            "lastLoginLng":77.2124]
        
        
        
        let parameters  = ["userEmail":self.emailtxt.text!,"userPassword": self.SetPassword.text!,"userMobileNumber": self.mobno.text!,"userTypeId":0,
        "userFirstName":"arjun","userLastName":"M","userLoggedInVia":3,
        "userRegistrationLat":12.12417,"userRegistrationLng" :77.2124,
        "lastLoginLat":12.12417,"lastLoginLng":77.2124]

        
        
//
    
//let parameters = ["userEmail": "jacinth9@gmail.com", "userPassword": "1234516" , "lastLoginLat": "\(curLat)", "lastLoginLng": "\(curLong)"]
    
    
    
        Alamofire.request(.POST, "http://dishem.com/DishemBusiness/MerchantRegistration.php", parameters: parameters as! [String : AnyObject])
    .responseJSON { response in
    print(response.request)  // original URL request
    print(response.response) // URL response
    print(response.data)     // server data
    print(response.result)   // result of response serialization
    
    if let JSON = response.result.value {
    print("JSON: \(JSON)")
    
    let Response:NSDictionary = JSON as! NSDictionary
    print(Response)
    
    
    
    
   let MerchantSignUpStatus:NSArray = Response.objectForKey("MerchantSignUpStatus") as! NSArray
    
    if(MerchantSignUpStatus.count > 0){
    
    for index in 0...MerchantSignUpStatus.count-1{
    
   let emailMoblileExists: String = (MerchantSignUpStatus[index].objectForKey("createUserStatus") as! String)
    print(emailMoblileExists)
        
    //                            self.performSegueWithIdentifier("segDashboard", sender: self)
    
    
    
  if(emailMoblileExists == "success"){
  self.performSegueWithIdentifier("otp", sender: self)
    //self.LoginSuccess = true
    //                                print(self.LoginSucces)
    
    
    //                            dispatch_async(dispatch_get_main_queue()){
    //                                if(self.LoginSucces == true){
    //
    //
    //
                                  }
    
    else{
    print ("login failed")
    
    
    
    let alertController = UIAlertController(title: "", message: "PLEASE enter valid data ", preferredStyle: .Alert)
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

