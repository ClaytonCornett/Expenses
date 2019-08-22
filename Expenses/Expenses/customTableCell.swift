//
//  customTableCellTableViewCell.swift
//  Expenses
//
//  Created by Clayton Cornett on 8/22/19.
//  Copyright © 2019 Clayton Cornett. All rights reserved.
//

import UIKit

class customTableCellTableViewCell: UITableViewCell {
    
    @IBOutlet weak var nameLabel: ExpenseName!
    @IBOutlet weak var priceLabel: ExpensePrice!
    @IBOutlet weak var dateLabel: ExpenseDate!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
