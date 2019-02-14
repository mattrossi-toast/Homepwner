//
//  ItemCell.swift
//  Homepwner
//
//  Created by Rossi, Matthew Th on 2/13/19.
//  Copyright © 2019 Rossi, Matthew Th. All rights reserved.
//

import UIKit

class ItemCell: UITableViewCell {
    
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var serialNumberLabel: UILabel!
    @IBOutlet var valueLabel: UILabel!
    func updateTextColor() {
        if let text = valueLabel.text {
            if let amount = Double(text.dropFirst()) {
                if amount < 50 {
                    valueLabel.textColor = UIColor.green
                } else {
                    valueLabel.textColor = UIColor.red
                }
            }
        }
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        updateTextColor()
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        
       nameLabel.adjustsFontForContentSizeCategory = true
       serialNumberLabel.adjustsFontForContentSizeCategory = true
       valueLabel.adjustsFontForContentSizeCategory = true
    }
    
}
