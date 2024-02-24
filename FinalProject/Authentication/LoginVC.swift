//
//  LoginVC.swift
//  FinalProject
//
//  Created by Saurav Modi on 2/17/24.
//

import UIKit
import FirebaseAuth

class LoginVC: UIViewController {
    
    let identifier:String = "LoginVC"
    
    @IBOutlet weak var email: UITextField!
    @IBOutlet weak var password: UITextField!
    
    var customButton = LargeButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.modalTransitionStyle = .coverVertical

        // Do any additional setup after loading the view.
        
        self.navigationController?.setNavigationBarHidden(true, animated: false)
        
    }
    
    @IBAction func signUp(_ sender: UIButton) {
        let next = self.storyboard?.instantiateViewController(withIdentifier: "SignUpVC") as! SignUpVC
        self.navigationController?.pushViewController(next, animated: true)
    }
    
    @IBAction func login() {
       
        
        let tabBarController = self.storyboard?.instantiateViewController(withIdentifier: TabBarViewController().identifier) as! TabBarViewController
        
        Auth.auth().signIn(withEmail: email.text!, password: password.text!) { (result, error) in
            if error != nil {
                
            }else{
                UserDefaults.standard.set(true, forKey: "isUserLoggedIn")
                UserDefaults.standard.synchronize()
                if let scene = UIApplication.shared.connectedScenes.first?.delegate as? SceneDelegate {
                    scene.setRootViewController(tabBarController)
                }
            }
        }
        
        
        
    }

    @IBAction func cancelBtn(_ sender: UIButton) {
    
        self.navigationController?.popViewController(animated: true)
        
    }
}
