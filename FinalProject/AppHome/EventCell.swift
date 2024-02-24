//
//  EventCell.swift
//  FinalProject
//
//  Created by Saurav Modi on 2/19/24.
//

import UIKit

class EventCell: UITableViewCell {
    
    static let identifier = "EventCell"
    
    @IBOutlet weak var eventImage: UIImageView!
    @IBOutlet weak var eventTitle: UILabel!
    @IBOutlet weak var eventDateTime: UILabel!
    @IBOutlet weak var eventPrice: UILabel!
    @IBOutlet weak var location: UILabel!
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier:  reuseIdentifier)
        configureImage()
        
        self.layer.cornerRadius = 10
        self.layer.borderWidth = 1
        self.layer.borderColor = UIColor.lightGray.cgColor
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    
    func buildWith(with: Event){
        eventTitle.text = with.title
        eventPrice.text = "$\(with.price)"
        eventDateTime.text = "\(with.date) \(with.time)"
        eventImage.load(with:with.image)
        location.text = with.location
        
    }
    
    func configureImage() {
        eventImage.layer.cornerRadius = 5
        eventImage.clipsToBounds = true
    }

}
