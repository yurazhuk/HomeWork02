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
    private var countdown = 0
    private var isRunning = false
    private var performOnce = true
    private let timerPickerController = TimerPickerViewController()
    
    @IBOutlet weak var cancelButton: UIButton!
    @IBOutlet weak var timePicker: UIPickerView!
    @IBOutlet weak var launchTimer: UIButton!
    @IBOutlet weak var countDownLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureTimePicker()
        configureCountdownLabel()
        configureAlert()
        configureCancelButton()
        configureLaunchTimerButton()
    }
    
    private func configureAlert() {
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: { action in
            self.alert.dismiss(animated: true, completion: nil)
        }))
    }
    private func configureCountdownLabel() {
        countDownLabel.isHidden = true
    }
    
    private func configureLaunchTimerButton() {
        launchTimer.layer.cornerRadius = launchTimer.frame.size.width/2
        launchTimer.clipsToBounds = true
        launchTimer.setTitleColor(.white, for: .normal)
    }
    
    private func configureCancelButton() {
        cancelButton.layer.cornerRadius = cancelButton.frame.size.width/2
        cancelButton.clipsToBounds = true
    }
    
    private func configureTimePicker() {
        timePicker.delegate = timerPickerController
        timePicker.dataSource = timerPickerController
    }
    
    @IBAction func launchTimer(_ sender: Any) {
        if !isRunning {
            cancelButton.isEnabled = true
            if performOnce {
        countdown = timerValues[timePicker.selectedRow(inComponent: 0)] * 3600 + // converting from gours to sec`s
            timerValues[timePicker.selectedRow(inComponent: 1)] * 60 + // converting from min`s to sec`s
            timerValues[timePicker.selectedRow(inComponent: 2)]
              performOnce = false
            }
            if countdown/3600 == 0 {
                countDownLabel.text = String.countdownStringFormater(nil,
                                                                     countdown/60%60,
                                                                     countdown%60)
            } else {
                countDownLabel.text = String.countdownStringFormater(countdown/3600,
                                                                     countdown/60%60,
                                                                     countdown%60)
            }
            
        countDownLabel.isHidden = false
        timePicker.isHidden = true
        launchTimer.setTitle("Pause", for: .normal)
        launchTimer.backgroundColor = .orange
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(updateCountdown), userInfo: nil, repeats: true)
            isRunning = true
        }
        else {
            launchTimer.setTitle("Resume", for: .normal)
            launchTimer.backgroundColor = .green
            timer.invalidate()
            isRunning = false
            
        }
    }
    
    @IBAction func cancelAction(_ sender: Any) {
        timer.invalidate()
        countDownLabel.isHidden = true
        timePicker.isHidden = false
        countdown = 0
        performOnce = true
        isRunning = false
        launchTimer.backgroundColor = .green
        launchTimer.setTitle("Start", for: .normal)
        cancelButton.isEnabled = false
    }
    
    
    @objc func updateCountdown() {
        countdown -= 1
        if countdown/3600 == 0 {
        countDownLabel.text = String.countdownStringFormater(nil,
                                                             countdown/60%60,
                                                             countdown%60)
        } else {
            countDownLabel.text = String.countdownStringFormater(countdown/3600,
                                                                 countdown/60%60,
                                                                 countdown%60)
        }
        if countdown == -1 {
            present(alert, animated: true, completion: nil)
            cancelAction(self)
        }
    }
}



//extension TimerViewController: UIPickerViewDelegate, UIPickerViewDataSource {
//    func numberOfComponents(in pickerView: UIPickerView) -> Int {
//        return 3
//    }
//
//    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
//        return component == 0 ? 24:60
//    }
//
//    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
//        return String(timerValues[row])
//    }
//
//    func pickerView(_ pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusing view: UIView?) -> UIView {
//        let pickerLabel = UILabel()
//        let titleData = String(timerValues[row])
//        let myTitle = NSAttributedString(string: titleData, attributes: [NSAttributedStringKey.font:UIFont(name: "HelveticaNeue-Light", size: 26.0)!,NSAttributedStringKey.foregroundColor:UIColor.white])
//        pickerLabel.attributedText = myTitle
//        return pickerLabel
//    }
//}

