//
//  LandingPageVC.swift
//  FinalProject
//
//  Created by Saurav Modi on 2/18/24.
//

import UIKit

class LandingPageVC: UIViewController {
    
    static let identifier = "LandingPageVC"

    @IBOutlet weak var loginBtn: LargeButton!
    @IBOutlet weak var signUpBtn: LargeButton!
    
    
    @IBOutlet weak var topCircle: UIView!
    
    @IBOutlet weak var circle: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        loginBtn?.setup()
        // Do any additional setup after loading the view.
        
        signUpBtn?.layer.borderWidth = 2.0
        signUpBtn?.layer.borderColor = UIColor.theme.cgColor
        signUpBtn?.backgroundColor = UIColor.BG
        signUpBtn.layer.cornerRadius = 5
        
        
        topCircle.layer.cornerRadius = 50
        topCircle.layer.maskedCorners = [.layerMaxXMaxYCorner, .layerMaxXMinYCorner]
        topCircle.backgroundColor = UIColor.theme
    }


    @IBAction func loginBtn(_ sender: LargeButton) {
        loginBtn.tapped()
//        let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
//        let loginVC = storyBoard.instantiateViewController(withIdentifier: LoginVC().identifier) as! LoginVC
        //self.navigationController?.pushViewController(LoginVC(),animated: true)
        
//        performSegue(withIdentifier: "LoginVC", sender: self)
    }
}
