//
//  TabBarViewController.swift
//  FinalProject
//
//  Created by Saurav Modi on 2/13/24.
//

import UIKit

class TabBarViewController: UITabBarController {
    
    let identifier:String = "TabBarViewController"

    override func viewDidLoad() {
        super.viewDidLoad()
        self.tabBar.barTintColor = UIColor.BG
        self.tabBar.tintColor = UIColor.theme
        // Do any additional setup after loading the view.
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
