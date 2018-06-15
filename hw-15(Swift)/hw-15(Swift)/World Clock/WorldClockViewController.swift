//
//  FirstViewController.swift
//  hw-15(Swift)
//
//  Created by yurii zhuk on 6/15/18.
//  Copyright © 2018 yurii zhuk. All rights reserved.
//

import UIKit

class WorldClockViewController: UIViewController, UITableViewDelegate {

    @IBOutlet weak var clockTable: UITableView!
    private var addButton: UIButton!
    let clockCellId = "clockCell"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureNavigationBar()
        configureClockTable()
    }
    
    private func configureNavigationBar() {
        addButton = UIButton(type: .system)
        addButton.frame = CGRect(x: 0, y: 0, width: 34, height: 34)
        addButton.setTitle("+", for: .normal)
        addButton.setTitleColor(.orange, for: .normal)
        addButton.titleLabel?.font = UIFont(name: "HelveticaNeue-Light", size: 34)
        navigationItem.rightBarButtonItem = UIBarButtonItem(customView: addButton)
    }
    
    private func configureClockTable() {
        clockTable.delegate = self
        clockTable.dataSource = self
        clockTable.estimatedRowHeight = 150
        clockTable.tableFooterView = UIView(frame: .zero)
    }
}

extension WorldClockViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: clockCellId, for: indexPath) as! WorldClockTableViewCell
        cell.timeLabel.attributedText = NSAttributedString.timeStringFormatter("6:30", secondString: "PM")
        
        return cell
    }


}


