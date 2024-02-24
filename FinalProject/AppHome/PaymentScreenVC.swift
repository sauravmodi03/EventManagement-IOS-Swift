//
//  PaymentScreenVC.swift
//  FinalProject
//
//  Created by Saurav Modi on 2/23/24.
//

import UIKit

class PaymentScreenVC: UIViewController {
    
    var booking:BookedTicket!
    @IBOutlet weak var totalPayment: UILabel!
    
    @IBOutlet weak var cardHolderNameField: UITextField!
    @IBOutlet weak var cardNumberField: UITextField!
    @IBOutlet weak var expiryField: UITextField!
    @IBOutlet weak var securityField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        cardNumberField.text?.removeAll()
        cardHolderNameField.text?.removeAll()
        expiryField.text?.removeAll()
        securityField.text?.removeAll()
        totalPayment.text = "$\(booking.totalPrice)"
    }

    @IBAction func makePayment(_ sender: UIButton) {
        paymentConfirmation()
    }
    
    
    func paymentConfirmation(){
        
        let option = UIAlertController(title: "Payment Confirmation", message: "You want to proceed with this payment?\n(Total Payment:$\(booking.totalPrice))", preferredStyle: .actionSheet)
        
        let confirmAction = UIAlertAction(title: "Yes", style: .default, handler: {
            (UIAlertAction) in
            User.data.bookings.append(self.booking)
            self.showAlert()
        })
        
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel)
        
        option.addAction(confirmAction)
        option.addAction(cancelAction)
        
        self.present(option, animated: true)
    }
    
    func showAlert(){
        let alertController = UIAlertController(title: "Booking Confirmend", message: "You payment was successfull.", preferredStyle: .alert)
        
        let alertAction = UIAlertAction(title: "Ok", style: .default, handler: {(UIAlertAction) in
            self.navigationController?.popToRootViewController(animated: true)
        } )
        
        alertController.addAction(alertAction)

        present(alertController,
                animated: true,
                completion: nil)
    }
}
