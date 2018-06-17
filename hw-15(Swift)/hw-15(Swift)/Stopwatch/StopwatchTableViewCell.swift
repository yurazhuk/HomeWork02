//
//  StopwatchTableViewCell.swift
//  hw-15(Swift)
//
//  Created by yurii zhuk on 6/16/18.
//  Copyright © 2018 yurii zhuk. All rights reserved.
//

import UIKit

class StopwatchTableViewCell: UITableViewCell {

    @IBOutlet weak var lapLabel: UILabel!
    @IBOutlet weak var lapTimeLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
