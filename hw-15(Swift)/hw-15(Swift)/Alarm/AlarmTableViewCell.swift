//
//  AlarmTableViewCell.swift
//  hw-15(Swift)
//
//  Created by yurii zhuk on 6/15/18.
//  Copyright © 2018 yurii zhuk. All rights reserved.
//

import UIKit

class AlarmTableViewCell: UITableViewCell {

    @IBOutlet weak var eventLabel: UILabel!
    @IBOutlet weak var timerLabel: UILabel!
    @IBAction func alarmChanged(_ sender: UISwitch) {
        if sender.isOn {
            eventLabel.textColor = .white
            timerLabel.textColor = .white
        } else {
            eventLabel.textColor = .gray
            timerLabel.textColor = .gray
        }
    }
    @IBOutlet weak var alarmSwitch: UISwitch!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
