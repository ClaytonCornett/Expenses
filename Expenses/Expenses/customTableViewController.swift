//
//  customTableViewController.swift
//  Expenses
//
//  Created by Clayton Cornett on 8/21/19.
//  Copyright © 2019 Clayton Cornett. All rights reserved.
//

import UIKit

class customTableViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var dataArray: [ExpenseData] = [ExpenseData(title: "Dinner", amount: 32.50, date: "June 1, 2018 18:30"),ExpenseData(title: "Office Supplies", amount: 59.34, date: "May 30, 2018 12:17"),ExpenseData(title: "Uber", amount: 16.23, date: "May 30, 2018 11:43"),ExpenseData(title: "Coffee", amount: 3.95, date: "May 29, 2018 8:45")]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "customCell", for: indexPath) as! customTableViewCell
        
        cell.nameLabel.text = dataArray[indexPath.row].title
        cell.priceLabel.text = String(format: "$%.02f", dataArray[indexPath.row].amount)
        cell.dateLabel.text = dataArray[indexPath.row].date
        return cell
    }
    

    let dateFormatter = DateFormatter()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }
    
    
}

