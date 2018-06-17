//
//  TimerViewController.swift
//  hw-15(Swift)
//
//  Created by yurii zhuk on 6/16/18.
//  Copyright © 2018 yurii zhuk. All rights reserved.
//

import UIKit

class TimerViewController: UIViewController {

    private var timerValues = [Int](Array(0...60))
    private var timer = Timer()
    private let alert = UIAlertController(title: "Finished", message: "countdown done", preferredStyle: .alert)
    @IBOutlet weak var countDownLabel: UILabel!
    private var countdown = 0

    @IBOutlet weak var timePicker: UIPickerView!
    @IBOutlet weak var launchTimer: UIButton!


    override func viewDidLoad() {
        super.viewDidLoad()
        configureTimePicker()
        configureCountdownLabel()
        configureTimePickerLabels()
        configureAlert()
        launchTimer.setTitleColor(.white, for: .normal)
//        let dayView = UILabel()
//                hoursTable.setPickerLabels(labels: [0:dayView], containedView: hoursTable)
       

//        dayView.text = "hour"
    }
    
    private func configureAlert() {
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: { action in
            self.alert.dismiss(animated: true, completion: nil)
            self.countDownLabel.isHidden = true
            self.timePicker.isHidden = false
        }))
    }
    private func configureCountdownLabel() {
    countDownLabel.isHidden = true
    }
    
    private func configureTimePicker() {
        timePicker.delegate = self
        timePicker.dataSource = self
    }
    
    private func configureTimePickerLabels() {
        let dayView = UILabel(frame: CGRect(x: 20, y: timePicker.frame.size.height / 2 - 15, width: 75, height: 30))
        dayView.attributedText = NSAttributedString(string: "hours", attributes: [NSAttributedStringKey.font:UIFont(name: "HelveticaNeue-Light", size: 26.0)!,NSAttributedStringKey.foregroundColor:UIColor.black])
        timePicker.addSubview(dayView)
    }
    
    @IBAction func launchTimer(_ sender: Any) {
         countdown = timerValues[timePicker.selectedRow(inComponent: 0)] * 3600 + // converting from gours to sec`s
            timerValues[timePicker.selectedRow(inComponent: 1)] * 60 + // converting from min`s to sec`s
            timerValues[timePicker.selectedRow(inComponent: 2)]
        print("\(countdown) secs")
        countDownLabel.text = String(countdown)
        countDownLabel.isHidden = false
        timePicker.isHidden = true
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(updateCountdown), userInfo: nil, repeats: true)
    }
    
    @objc func updateCountdown() {
        countDownLabel.text = "\(countdown/3600):\(countdown/60%60):\(countdown%60)"
        print("\(countdown/3600):\(countdown/60%60):\(countdown%60)")
        countdown -= 1
        if countdown == -1 {
            present(alert, animated: true, completion: nil)
            timer.invalidate()
        }
    }
}



extension TimerViewController: UIPickerViewDelegate, UIPickerViewDataSource {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 3
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
         return component == 0 ? 24:60
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return String(timerValues[row])
    }
    
    func pickerView(_ pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusing view: UIView?) -> UIView {
        let pickerLabel = UILabel()
        let titleData = String(timerValues[row])
        let myTitle = NSAttributedString(string: titleData, attributes: [NSAttributedStringKey.font:UIFont(name: "HelveticaNeue-Light", size: 26.0)!,NSAttributedStringKey.foregroundColor:UIColor.white])
        pickerLabel.attributedText = myTitle
        return pickerLabel
    }
}
