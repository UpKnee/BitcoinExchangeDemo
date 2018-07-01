//
//  ParingTableViewCell.swift
//  BitcoinExchange
//
//  Created by Soemsak Loetphornphisit on 24/6/2561 BE.
//  Copyright © 2561 Surayuth Piriyawong. All rights reserved.
//

import UIKit

class ParingTableViewCell: UITableViewCell {
    
    @IBOutlet weak var activeLabel: UILabel!
    @IBOutlet weak var pairingIdLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state// test git
        // breeze changed
    }

}
