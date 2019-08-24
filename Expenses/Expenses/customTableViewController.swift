//
//  customTableViewController.swift
//  Expenses
//
//  Created by Clayton Cornett on 8/21/19.
//  Copyright © 2019 Clayton Cornett. All rights reserved.
//

import UIKit

class customTableViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    @IBOutlet weak var tableView: UITableView!
    
    var dataArray: [ExpenseData] = []
    let dateFormatter = DateFormatter()
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "customCell", for: indexPath) as! customTableViewCell
        
        cell.nameLabel.text = dataArray[indexPath.row].title
        cell.priceLabel.text = String(format: "$%.02f", dataArray[indexPath.row].amount)
        cell.dateLabel.text = dateFormatter.string(from: dataArray[indexPath.row].date)
        return cell
    }
    

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        dateFormatter.dateFormat = "MMMM d, yyyy HH:mm"
        
        dataArray = [ExpenseData(title: "Dinner", amount: 32.50, date: dateFormatter.date(from: "June 1, 2018 18:30")!),ExpenseData(title: "Office Supplies", amount: 59.34, date: dateFormatter.date(from: "May 30, 2018 12:17")!),ExpenseData(title: "Uber", amount: 16.23, date: dateFormatter.date(from: "May 30, 2018 11:43")!),ExpenseData(title: "Coffee", amount: 3.95, date: dateFormatter.date(from: "May 29, 2018 8:45")!)]
        // Do any additional setup after loading the view, typically from a nib.
        
    }
    
    
}

