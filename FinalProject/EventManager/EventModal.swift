//
//  Provider.swift
//  FinalProject
//
//  Created by Saurav Modi on 2/18/24.
//

import UIKit

struct Event{

    var title:String
    var date:String
    var time:String
    var location:String
    var address:String
    var price:Double
    var latitude:Double
    var longitude:Double
    var image:String
    var about:String
    
    init(title: String, date: String, time: String, location: String, address: String, price: Double, latitude: Double, longitude: Double, image: String, about: String) {
        self.title = title
        self.date = date
        self.time = time
        self.location = location
        self.address = address
        self.price = price
        self.latitude = latitude
        self.longitude = longitude
        self.image = image
        self.about = about
    }
    
}

struct Provider{
    var name:String
    var description:String
    
    init(name: String, description: String) {
        self.name = name
        self.description = description
    }
}


let providers =  [Provider(name: "P1", description: "P1 Description")
                  ,Provider(name: "P2", description: "P2 Description")]




