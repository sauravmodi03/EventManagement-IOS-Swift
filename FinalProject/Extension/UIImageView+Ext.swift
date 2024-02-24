//
//  UIImageView+Ext.swift
//  FinalProject
//
//  Created by Saurav Modi on 2/19/24.
//

import UIKit


extension UIImageView {
    
    func load(with:String){
        
        guard let url = URL(string: with) else {return}
        
        DispatchQueue.global().async { [weak self] in
            if let data = try? Data(contentsOf: url){
                if let image = UIImage(data: data) {
                    DispatchQueue.main.async {
                        self?.image = image
                    }
                }
            }
        }
    }
}
