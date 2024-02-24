//
//  SignUpVC.swift
//  FinalProject
//
//  Created by Saurav Modi on 2/17/24.
//

import UIKit
import FirebaseAuth


class SignUpVC: UIViewController {

    @IBOutlet weak var emailField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    @IBOutlet weak var confirmPasswordField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        let topCircle = UIView(frame: CGRect(x: -200, y: -200, width: 400, height: 400))
//        topCircle.layer.cornerRadius = 200
//        topCircle.backgroundColor = UIColor(named: "Theme")
//        self.view.addSubview(topCircle)

        // Do any additional setup after loading the view.
        
        self.navigationController?.setNavigationBarHidden(true, animated: false)
        
        
    }
    
  
    @IBAction func setEmail(_ sender: Any) {
        
    }
    
    
    @IBAction func signUp(_ sender: UIButton) {
        guard let email = emailField.text else {return}
        guard let password = passwordField.text else {return}
        guard let cnfEmail = confirmPasswordField.text else {return}
        guard passwordField.text == confirmPasswordField.text else {return}
        
        Auth.auth().createUser(withEmail: email, password: password) { authResult, error in
            print(authResult?.additionalUserInfo ?? "No info found")
        }
    }
    
    
    @IBAction func cancelBtn(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }
}
