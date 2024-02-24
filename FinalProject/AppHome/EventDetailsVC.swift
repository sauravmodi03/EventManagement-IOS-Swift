//
//  EventListVC.swift
//  FinalProject
//
//  Created by Saurav Modi on 2/18/24.
//

import UIKit

class EventDetailsVC: UIViewController {
    
    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var eventTitle: UILabel!
    @IBOutlet weak var eventDescription: UITextView!
    @IBOutlet weak var eventTime: UILabel!
    @IBOutlet weak var location: UILabel!
    @IBOutlet weak var address: UILabel!
    @IBOutlet weak var aboutEvent: UITextView!
    @IBOutlet weak var noOfTicket: UILabel!
    @IBOutlet weak var checkoutBtn: UIButton!
    @IBOutlet weak var totalPriceLabel: UILabel!
    
    var totalPrice: Double = 0
    
    var events:[Event]=[]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        events = EventManager().loadAllEvents()
        configure(event: events[selectedIndex])
    }
    
    func configure(event:Event){
        eventTitle.text = event.title
        eventTime.text = "\(String(describing: event.date)) \(String(describing: event.time))"
        location.text = event.location
        address.text = event.address
        totalPrice = event.price
        image.load(with:event.image)
        aboutEvent.text = event.about
        totalPriceLabel.text = "$\(totalPrice)"
    }
    
    @IBAction func changeTicketCount(_ sender: UIStepper) {
        noOfTicket.text = "\(Int(sender.value))"
        totalPrice = events[selectedIndex].price * sender.value
        totalPriceLabel.text = "$\(totalPrice)"
    }
    
    @IBAction func checkout(){
        checkoutConfirmation()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard segue.identifier == "PaymentVC" else {return}
        let destination = segue.destination as! PaymentScreenVC
        destination.booking = BookedTicket(eventID: selectedIndex, seats: self.noOfTicket.text!, totalPrice: self.totalPrice, dateBooked: Date())
    }
    
    func checkoutConfirmation(){
        
        let response = false
        
        let option = UIAlertController(title: "Confirm", message: "Dou you want to procced for checkout?\n(Seats:\(self.noOfTicket.text!), Total Price:\(self.totalPriceLabel.text!))", preferredStyle: .actionSheet)
        
        let confirmAction = UIAlertAction(title: "Proceed", style: .default, handler: {
            (UIAlertAction) in
            self.performSegue(withIdentifier: "PaymentVC", sender: self)
        })
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel)
        
        option.addAction(confirmAction)
        option.addAction(cancelAction)
        
        self.present(option, animated: true)
    }
    
}


