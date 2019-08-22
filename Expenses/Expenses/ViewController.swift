//
//  ViewController.swift
//  Expenses
//
//  Created by Clayton Cornett on 8/21/19.
//  Copyright © 2019 Clayton Cornett. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let dateFormatter = DateFormatter()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        var dataArray: [ExpenseData] = []
        
        var expense: ExpenseData = ExpenseData(title: "Dinner", amount: 32.50, date: "June 1, 2018 18:30")
        var expense2: ExpenseData = ExpenseData(title: "Office Supplies", amount: 59.34, date: "May 30, 2018 12:17")
        var expense3: ExpenseData = ExpenseData(title: "Uber", amount: 16.23, date: "May 30, 2018 11:43")
        var expense4: ExpenseData = ExpenseData(title: "Coffee", amount: 3.95, date: "May 29, 2018 8:45")
        
        dataArray.append(expense)
        dataArray.append(expense2)
        dataArray.append(expense3)
        dataArray.append(expense4)

        
    }


}

struct ExpenseData {
    var title: String
    var amount: Double
    var date: String
    
    init(title: String, amount: Double, date: String) {
        self.title = title
        self.amount = amount
        self.date = date
    }
}

