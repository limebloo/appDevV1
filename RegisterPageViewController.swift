//
//  RegisterPageViewController.swift
//  singleViewLogin
//
//  Created by Carl Wall on 2/18/16.
//  Copyright © 2016 Timpanogos Digital. All rights reserved.
//

import UIKit

class RegisterPageViewController: UIViewController {

    @IBOutlet weak var UserEmailTextField: UITextField!
    @IBOutlet weak var UserPasswordTextField: UITextField!
    @IBOutlet weak var RepeatPasswordTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func RegisterButtonTapped(sender: AnyObject) {
        
        let userEmail = UserEmailTextField.text;
        let userPassword = UserPasswordTextField.text;
        let userRepeatPassword = RepeatPasswordTextField.text;
        
        // Check for empty fields
        if(userEmail!.isEmpty || userPassword!.isEmpty || userRepeatPassword!.isEmpty)
        
        {
        // Display alert message
            displayMyAlertMessage("All fields are required");
            
            
        return;
            
        }
        
        // Check if passwords match
        if(userPassword != userRepeatPassword){
            
            // Display alert message
            displayMyAlertMessage("Passwords do not match");
            return;
            
        }
        
        // Store data
        NSUserDefaults.standardUserDefaults().setObject(userEmail,
            forKey:"userEmail");
        NSUserDefaults.standardUserDefaults().setObject(userEmail,
            forKey:"userPassword");
        NSUserDefaults.standardUserDefaults().synchronize();
        
        // Display alert message with confirmation
        var myAlert = UIAlertController(title:"Alert", message:"Registration is successful. Thank you!", preferredStyle: UIAlertControllerStyle.Alert);
        let okAction = UIAlertAction(title:"OK", style:
            UIAlertActionStyle.Default){ action in
                self.dismissViewControllerAnimated(true, completion:nil);
        }
        
        
    }

    func displayMyAlertMessage(userMessage:String)
    {
    
    var myAlert = UIAlertController(title:"Alert", message:
    userMessage, preferredStyle: UIAlertControllerStyle.Alert);
        
        let okAction = UIAlertAction(title:"OK", style:
            UIAlertActionStyle.Default, handler:nil);
        
        myAlert.addAction(okAction);
        self.presentViewController(myAlert, animated:true, completion:nil);
    
}
    
    


}