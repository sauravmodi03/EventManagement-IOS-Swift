//
//  User.swift
//  FinalProject
//
//  Created by Saurav Modi on 2/21/24.
//

import UIKit

class User{
    
    static var data = User()
    
    var email:String = ""
    var bookings:[BookedTicket]=[]
    
}

struct BookedTicket{
    
    var eventID:Int
    var seats:String
    var totalPrice:Double
    var dateBooked:Date
}
