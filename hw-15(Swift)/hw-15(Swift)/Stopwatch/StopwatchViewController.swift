//
//  StopwatchViewController.swift
//  hw-15(Swift)
//
//  Created by yurii zhuk on 6/16/18.
//  Copyright © 2018 yurii zhuk. All rights reserved.
//

import UIKit

class StopwatchViewController: UIViewController, UITableViewDelegate {
    
    @IBOutlet weak var stopwatchLabel: UILabel!
    @IBOutlet weak var resultsTable: UITableView!
    @IBOutlet weak var resetButton: UIButton!
    @IBOutlet weak var startStopButton: UIButton!
    
    private var timer = Timer()
    private var minutes: Int = 0
    private var seconds: Int = 0
    private var fractions: Int = 0
    private var started = false
    private var laps = [String]()
    private let cellIdentifier = "resultTableViewCell"
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        stopwatchLabel.text = "00:00:00"
        configureResetButton()
        configureStartStopButton()
        configureResultTable()
    }
    
    @IBAction func startStopAction(_ sender: Any) {
        
        if !started {
            startStopButton.backgroundColor = .red
            startStopButton.setTitle("Stop", for: .normal)
            resetButton.isEnabled = true
            resetButton.backgroundColor = .gray
            resetButton.setTitle("Lap", for: .normal)
            timer = Timer.scheduledTimer(timeInterval: 0.01, target: self, selector: #selector(updateStopwatch), userInfo: nil, repeats: true)
            started = true
        } else {
            startStopButton.backgroundColor = .green
            startStopButton.setTitle("Start", for: .normal)
            resetButton.setTitle("Reset", for: .normal)
            timer.invalidate()
            started = false
        }
        
    }
    
    @IBAction func lapAction(_ sender: Any) {
        if started {
            laps.append(stopwatchLabel.text!)
        } else {
            laps.removeAll()
            stopwatchLabel.text = "00:00:00"
            minutes = 0
            seconds = 0
            fractions = 0
            resetButton.isEnabled = false
            resetButton.backgroundColor = UIColor.clear
        }
        resultsTable.reloadData()
    }
    
    private func configureResetButton() {
        resetButton.setTitle("Lap", for: .disabled)
        resetButton.setTitleColor(.white, for: .disabled)
        resetButton.setTitleColor(.red, for: .normal)
        resetButton.backgroundColor = UIColor.clear
        resetButton.isEnabled = false
        resetButton.layer.cornerRadius = resetButton.frame.size.width/2
        resetButton.clipsToBounds = true
    }
    
    private func configureStartStopButton() {
        startStopButton.layer.cornerRadius = startStopButton.frame.size.width/2
        startStopButton.clipsToBounds = true
    }
    
    private func configureResultTable() {
        resultsTable.delegate = self
        resultsTable.dataSource = self
    }
    
    @objc func updateStopwatch() {
        fractions += 1
        
        if fractions == 100 {
            seconds += 1
            fractions = 0
        }
        
        if seconds == 60 {
            minutes += 1
            seconds = 0
        }
        
        let fractionString = fractions > 9 ? "\(fractions)" : "0\(fractions)"
        let secondsString = seconds > 9 ? "\(seconds)" : "0\(seconds)"
        let minutesString = minutes > 9 ? "\(minutes)" : "0\(minutes)"
        
        stopwatchLabel.text = "\(minutesString):\(secondsString):\(fractionString)"
    }
    
}

extension StopwatchViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return laps.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as! StopwatchTableViewCell
        cell.lapLabel.text = "Lap\(laps.count - indexPath.row)"
        cell.lapTimeLabel.text = laps.reversed()[indexPath.row]
        cell.selectionStyle = .none
        return cell
    }
    
    
}

