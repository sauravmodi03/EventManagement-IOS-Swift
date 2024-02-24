//
//  TicketDetailsCell.swift
//  FinalProject
//
//  Created by Saurav Modi on 2/21/24.
//

import UIKit

class TicketDetailsCell: UITableViewCell {

    @IBOutlet weak var title: UILabel!
    @IBOutlet weak var location: UILabel!
    @IBOutlet weak var address: UILabel!
    @IBOutlet weak var seats: UILabel!
    
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier:  reuseIdentifier)
        
        
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        
        self.layer.borderWidth = 1
        self.layer.borderColor = UIColor.lightGray.cgColor
        //self.backgroundColor = UIColor.lightGray
        self.layer.cornerRadius = 10
        self.clipsToBounds = true
    }
    
    
    func build(with:BookedTicket){
        let event = EventManager().loadAllEvents()[with.eventID]
        title.text = event.title
        location.text = event.location
        address.text = event.address
        seats.text = "\(with.seats)"
    }
   

}
