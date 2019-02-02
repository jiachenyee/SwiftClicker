//
//  LoginDeveloperViewController.swift
//  SwiftClicker
//
//  Created by JiaChen(: on 13/3/18.
//  Copyright © 2018 JiaChen(:. All rights reserved.
//

import UIKit

class LoginDeveloperViewController: UIViewController {
    
    @IBAction func passwordDone(_ sender: Any) {
        passwordText.resignFirstResponder()
        
        if usernameText.text?.isEmpty == true || passwordText.text?.isEmpty == true {
            usernameText.text = ""
            passwordText.text = ""
            errorMessage.text = "Looks like your username or password is empty!"
        }
        else if usernameText.text == "Aurelius Yeo" && passwordText.text == "aurelius" {
            errorMessage.text = "Tap on next!"
            nextButton.isHidden = false
        }
        else {
            errorMessage.text = "Wrong username or password!"
        }
    }
    
    @IBOutlet weak var nextButton: UIButton!
    @IBOutlet weak var errorMessage: UILabel!
    @IBOutlet weak var usernameText: UITextField!
    @IBOutlet weak var passwordText: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nextButton.isHidden = true

        // Do any additional setup after loading the view.
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
