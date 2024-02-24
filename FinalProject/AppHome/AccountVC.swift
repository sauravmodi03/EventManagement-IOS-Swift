//
//  AccountVC.swift
//  FinalProject
//
//  Created by Saurav Modi on 2/18/24.
//

import UIKit

class AccountVC: UIViewController {

    @IBOutlet weak var profileImage: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        profileImage.layer.cornerRadius = 60
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

    @IBAction func logoutUser(_ sender: UIButton) {
        logoutConfirmation()
    }
    
    
    func logoutConfirmation(){
        
        let option = UIAlertController(title: "Confirm", message: "Are you sure you want to logout?", preferredStyle: .actionSheet)
        
        let confirmAction = UIAlertAction(title: "Yes", style: .default, handler: {
            (UIAlertAction) in
            UserDefaults.standard.set(false, forKey: "isUserLoggedIn")
            UserDefaults.standard.synchronize()
            let landingVC = self.storyboard?.instantiateViewController(withIdentifier: LandingPageVC.identifier) as! LandingPageVC
            if let scene = UIApplication.shared.connectedScenes.first?.delegate as? SceneDelegate {
                scene.setRootViewController(landingVC)
            }
        })
        
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel)
        
        option.addAction(confirmAction)
        option.addAction(cancelAction)
        
        self.present(option, animated: true)
    }
}
