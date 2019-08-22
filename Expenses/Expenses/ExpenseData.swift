//
//  ExpenseData.swift
//  Expenses
//
//  Created by Clayton Cornett on 8/22/19.
//  Copyright © 2019 Clayton Cornett. All rights reserved.
//

import Foundation


class ExpenseData {
    
    var title: String
    var amount: Double
    var date: String
    
    init(title: String, amount: Double, date: String) {
        self.title = title
        self.amount = amount
        self.date = date
    }
}
