//
//  SecondViewController.swift
//  hw-15(Swift)
//
//  Created by yurii zhuk on 6/15/18.
//  Copyright © 2018 yurii zhuk. All rights reserved.
//

import UIKit

class AlarmViewController: UIViewController, UITableViewDelegate  {

    @IBOutlet weak var alarmTable: UITableView!
    private let cellIdentifier = "alarmCellIdentifier"
    
    override func viewDidLoad() {
        super.viewDidLoad()
       configureAlarmTable()
    }

    private func configureAlarmTable() {
        alarmTable.dataSource = self
        alarmTable.delegate = self
    }
    

}

extension AlarmViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as! AlarmTableViewCell
        cell.timerLabel.attributedText = NSAttributedString.timeStringFormatter("6:30", secondString: "AM")
        cell.selectionStyle = .none
        return cell
    }
    
    
    
}

