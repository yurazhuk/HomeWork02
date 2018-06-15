//
//  WorldClockTableViewCell.swift
//  hw-15(Swift)
//
//  Created by yurii zhuk on 6/15/18.
//  Copyright © 2018 yurii zhuk. All rights reserved.
//

import UIKit

class WorldClockTableViewCell: UITableViewCell {

    @IBOutlet weak var timeLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
