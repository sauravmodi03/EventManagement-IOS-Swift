//
//  EventManager.swift
//  FinalProject
//
//  Created by Saurav Modi on 2/21/24.
//

import UIKit
import CSV

class EventManager {
    
    static var data = EventManager()
    
    lazy var events:[Event] = []
    
    func loadAllEvents() -> [Event]{
        if events.count == 0 {loadFromCSV()}
        return events
    }
    
    private func loadFromCSV(){
        guard let stream = InputStream(fileAtPath: Bundle.main.path(forResource: "EventData", ofType: "csv")!) else { return }
        let csv = try! CSVReader(stream: stream)
        //let headerRow = csv.headerRow!
        csv.next()
        while let row = csv.next() {
            events.append(Event(title: row[0], date: row[1], time: row[2], location: row[3], address: row[4], price: Double(row[5])!, latitude: Double(row[6])!, longitude: Double(row[7])!, image: row[8], about: row[9]))
        }
    }
}
