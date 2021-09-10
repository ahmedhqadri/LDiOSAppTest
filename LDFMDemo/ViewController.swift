//
//  ViewController.swift
//  LDFMDemo
//
//  Created by Ahmed Qadri on 9/10/21.
//

import UIKit
import LaunchDarkly

class ViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var contactTextField: UITextField!
    @IBOutlet weak var companyTextField: UITextField!
    @IBOutlet weak var submitButton: UIButton!
    @IBOutlet weak var banner: UIImageView!
    
    let config = LDConfig(mobileKey: "mob-d41e8efe-c801-4857-a3f6-16011cf3eac0")
    let user = LDUser(key: "LDTestUseriOS")
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        LDClient.start(config: config, user: user)
        
        
        self.companyTextField.delegate = self
        self.nameTextField.delegate = self
        self.contactTextField.delegate = self
        checkFlags()
    
        
        // Do any additional setup after loading the view.
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
            self.view.endEditing(true)
            return false
        }
    
    func checkFlags() {
        let client = LDClient.get()!
        
        let showFeature = client.variation(forKey: "showBanner", defaultValue: false)
        if showFeature {
            self.banner.isHidden = false;
        }
        else {
            self.banner.isHidden = true;
        }
        
    }
    
    @IBAction func submitButton(_ sender: Any) {
        
        nameTextField.text = ""
        companyTextField.text = ""
        contactTextField.text = ""
        checkFlags()
    }
    

}

