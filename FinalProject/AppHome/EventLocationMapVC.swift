//
//  EventLocationMapVC.swift
//  FinalProject
//
//  Created by Saurav Modi on 2/21/24.
//

import UIKit
import MapKit
import CoreLocation

class EventLocationMapVC: UIViewController, MKMapViewDelegate {
    
    
    
    
    
    
    
    @IBOutlet weak var map: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let event = EventManager.data.loadAllEvents()[selectedIndex]
        
        configureLocation(event: event)
        weatherForecast(event: event)
        
    }
    
    func configureLocation(event:Event){
        
        let coordinates = CLLocationCoordinate2D(latitude: event.latitude, longitude: event.latitude)
        map.setRegion(MKCoordinateRegion(center: coordinates, span: MKCoordinateSpan(latitudeDelta: 0.1, longitudeDelta: 0.1)), animated: false)
        map.delegate = self
        addCustomPin(coordinates: coordinates)
    }
    
    private func addCustomPin(coordinates:CLLocationCoordinate2D){
        let pin = MKPointAnnotation()
        pin.title = "Location"
        pin.coordinate = coordinates
        map.addAnnotation(pin)
    }
    
    func weatherForecast(event:Event){
        let location = CLLocation(latitude: event.latitude, longitude: event.longitude)
        //WeatherManager().getWeather(location: location)
    }
    
    

}
