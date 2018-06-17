//
//  TimerPickerController.swift
//  hw-15(Swift)
//
//  Created by yurii zhuk on 6/17/18.
//  Copyright © 2018 yurii zhuk. All rights reserved.
//

import UIKit

class TimerPickerViewController:  NSObject, UIPickerViewDataSource, UIPickerViewDelegate {

    private var timerValues = [Int](Array(0...60))
    
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
