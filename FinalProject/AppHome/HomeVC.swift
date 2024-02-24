//
//  HomeVC.swift
//  FinalProject
//
//  Created by Saurav Modi on 2/19/24.
//

import UIKit

class HomeVC: UIViewController {
    
    static let identifier = "HomeVC"
    
    @IBOutlet weak var tableView: UITableView!
    
    var events:[Event] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        events = EventManager().loadAllEvents()
        configureTable()
    }
    
    func configureTable(){
        tableView.delegate = self
        tableView.dataSource = self
        tableView.rowHeight = 350
    }

}

var selectedIndex = 0

extension HomeVC: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return events.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: EventCell.identifier, for: indexPath) as! EventCell
        let eventData = events[indexPath.row]
        cell.buildWith(with: eventData)
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        selectedIndex = indexPath.row
        tableView.deselectRow(at: indexPath, animated: false)
        performSegue(withIdentifier: "EventDetailsVC", sender: self)
    }
}


