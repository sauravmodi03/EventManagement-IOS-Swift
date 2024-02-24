//
//  TicketVC.swift
//  FinalProject
//
//  Created by Saurav Modi on 2/21/24.
//

import UIKit

class TicketVC: UIViewController {

    @IBOutlet weak var ticketDetail: UIView!
    @IBOutlet weak var contentView: UIView!
    @IBOutlet weak var tableView: UITableView!
    
    var tempView = UIView()
    var tempLabel = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        tableView.dataSource = self
        tableView.delegate = self
        tableView.rowHeight = 180
        tableView.reloadData()
    }
    
}

extension TicketVC: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return User.data.bookings.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TicketDetailsCell", for: indexPath) as! TicketDetailsCell
        let data = User.data.bookings[indexPath.row]
        cell.build(with: data)
        return cell
    }
    
}
