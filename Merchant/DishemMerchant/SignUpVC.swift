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

    @IBAction func btnsignup(_ sender: AnyObject) {
      signup()
    
    }
    @IBOutlet weak var mobno: UITextField!
    @IBOutlet weak var SetPassword: UITextField!
    @IBOutlet weak var emailtxt: UITextField!
    @IBOutlet weak var fullnametxt: UITextField!
    @IBOutlet weak var vw_signupbox: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
//shakey baby
        // Do any additional setup after loading the view.
        vw_signupbox.layer.cornerRadius = 10
        vw_signupbox.layer.shadowOffset = CGSize(width: -10, height: 10)
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
        
        
        
        let parameters  = ["userEmail":self.emailtxt.text!,"userPassword": self.SetPassword.text!,"userMobileNumber": self.mobno.text!,"userTypeId":"0",
        "userFirstName":"arjun","userLastName":"M","userLoggedInVia":"3",
        "userRegistrationLat":"12.12417","userRegistrationLng" :"77.2124",
        "lastLoginLat":"12.12417","lastLoginLng":"77.2124"]

        
        
//
    
//let parameters = ["userEmail": "jacinth9@gmail.com", "userPassword": "1234516" , "lastLoginLat": "\(curLat)", "lastLoginLng": "\(curLong)"]
    
    
    
        Alamofire.request("http://dishem.com/DishemBusiness/MerchantRegistration.php", parameters: parameters as! [String : String])
    .responseJSON { response in
 //   print(" body \(String(data: response.request!.HTTPBody!, encoding: NSUTF8StringEncoding))")  // original URL request
 //   print(response.response) // URL response
   // print(response.data)     // server data
   // print(response.result)   // result of response serialization
    
    if let JSON = response.result.value {
 //   print("JSON: \(JSON)")
    
    let Response:NSDictionary = JSON as! NSDictionary
   // print(Response)
    
    
    
    
   let MerchantSignUpStatus:NSArray = Response.object(forKey: "MerchantSignUpStatus") as! NSArray
    
    if(MerchantSignUpStatus.count > 0){
    
   // for index in 0...MerchantSignUpStatus.count-1
 //   {
    
   let createUserStatus: String = ((MerchantSignUpStatus[0] as AnyObject).object(forKey: "createUserStatus") as! String)
    print(createUserStatus)
        
    //                            self.performSegueWithIdentifier("segDashboard", sender: self)
    
  if(createUserStatus == "success"){
   self.otp()
  //self.performSegueWithIdentifier("otp", sender: self)
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
    
    
    
    let alertController = UIAlertController(title: "", message: "PLEASE enter valid data ", preferredStyle: .alert)
    let acceptance = UIAlertAction(title: "OK", style: .cancel, handler: nil)
    alertController.addAction(acceptance)
    self.present(alertController, animated: true, completion: nil)
   }
   // }
    
    }
   }
}
}
    func otp()
    {
      let parameters  = ["userMobileNumber":self.mobno.text!,"content":"good"]
        Alamofire.request("http:dishem.com/DishemBusiness/Otp.php", parameters: parameters as! [String : String])
            .responseJSON { response in
                if let JSON = response.result.value {
                    //   print("JSON: \(JSON)")
                    
                    let Response:NSDictionary = JSON as! NSDictionary
                 //    print(Response)
                    
                    
                    
                    
                    let sendOtpStatus:NSArray = Response.object(forKey: "OTPStatus") as! NSArray
                    
                    if(sendOtpStatus.count > 0){
                        
                        // for index in 0...MerchantSignUpStatus.count-1
                        //   {
                        
                        let createOtp: String = ((sendOtpStatus[0] as AnyObject).object(forKey: "sendOtpStatus") as! String)
                        print(createOtp)
                        
                        //                            self.performSegueWithIdentifier("segDashboard", sender: self)
                        
                        
                        
                        if(createOtp == "success"){
                            self.performSegue(withIdentifier: "otp", sender: self)
                            //self.LoginSuccess = true
                            //                                print(self.LoginSucces)
                            
                            
                            //                            dispatch_async(dispatch_get_main_queue()){
                            //                                if(self.LoginSucces == true){
                            //
                            //
                            //
                        }
                            
                        else{
                            print ("otp failed")
                            
                            
                            
                            let alertController = UIAlertController(title: "", message: "PLEASE enter valid Mobile Number ", preferredStyle: .alert)
                            let acceptance = UIAlertAction(title: "OK", style: .cancel, handler: nil)
                            alertController.addAction(acceptance)
                            self.present(alertController, animated: true, completion: nil)
                        }
                        // }
                        
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

