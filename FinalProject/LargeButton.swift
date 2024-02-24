//
//  LargeButton.swift
//  FinalProject
//
//  Created by Saurav Modi on 2/18/24.
//

import UIKit

final class LargeButton: UIButton {
    
    override init(frame: CGRect){
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    func setupButton(){
        
    }
    
    func setup(){
        backgroundColor = UIColor.BG
        layer.borderWidth = 2.0
        layer.borderColor = UIColor.theme.cgColor
        setTitle("Login", for: .normal)
        layer.cornerRadius = 5.0
    }
    
    
    func tapped(){
        let tapped = CABasicAnimation(keyPath: "position")
        tapped.duration = 0.1
        tapped.repeatCount = 1
        tapped.autoreverses = true
        
        let fromPoint = CGPoint(x:center.x,y: center.y)
        let fromValue = NSValue(cgPoint: fromPoint)
        
        let toPoint = CGPoint(x: center.x+1, y: center.y+1)
        let toValue = NSValue(cgPoint: toPoint)
        
        tapped.fromValue = fromValue
        tapped.toValue = toValue
        
        layer.add(tapped, forKey: "position")
    }
    
    
    
//    var borderWidth: CGFloat = 2.0
//    var borderColor = UIColor.white.cgColor
//
//    @IBInspectable var titleText: String? {
//        didSet {
//            self.setTitle(titleText, for: .normal)
//            self.setTitleColor(UIColor.black,for: .normal)
//        }
//    }
//
//    
//
//    required init?(coder: NSCoder) {
//        fatalError("init(coder:) has not been implemented")
//    }
//
//    override func layoutSubviews() {
//        super.layoutSubviews()
//        setup()
//    }
//
//    func setup() {
//        self.clipsToBounds = true
//        self.layer.cornerRadius = self.frame.size.width / 2.0
//        self.layer.borderColor = borderColor
//        self.layer.borderWidth = borderWidth
//    }
}
