//
//  TopLeftCircle.swift
//  FinalProject
//
//  Created by Saurav Modi on 2/18/24.
//

import UIKit

class TopLeftCircle:UIView{
    
    override init(frame: CGRect){
        super.init(frame: CGRect(x: 0, y: 0, width: 75, height: 75))
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setup()
    }
    
    func setup(){
        clipsToBounds = true
        layer.cornerRadius = 75
        layer.maskedCorners = [.layerMaxXMaxYCorner]
        backgroundColor = UIColor.theme
        layer.backgroundColor = UIColor.theme.cgColor
    }
    
   
}
