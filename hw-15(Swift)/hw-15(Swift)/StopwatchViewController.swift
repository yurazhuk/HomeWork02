//
//  StopwatchViewController.swift
//  hw-15(Swift)
//
//  Created by yurii zhuk on 6/16/18.
//  Copyright © 2018 yurii zhuk. All rights reserved.
//

import UIKit

class StopwatchViewController: UIViewController, UITableViewDelegate {
    private let cellIdentifier = "resultTableViewCell"
    @IBOutlet weak var resultsTable: UITableView!
    @IBOutlet weak var resetButton: UIButton!
    @IBOutlet weak var startStopButton: UIButton!
    
    @IBAction func startStopAction(_ sender: Any) {
        
        
        
    }
    @IBOutlet weak var LapAction: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

       resultsTable.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
    
extension StopwatchViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath)
        cell.selectionStyle = .none
        return cell
    }
    
        
    }

