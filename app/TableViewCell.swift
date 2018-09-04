//
//  TableViewCell.swift
//  app
//
//  Created by Gouthami Reddy on 8/13/18.
//  Copyright © 2018 Gouthami Reddy. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var phoneNumber: UILabel!
    
    @IBOutlet weak var name: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
