//
//  AtributedString + DateStringFormater.swift
//  hw-15(Swift)
//
//  Created by yurii zhuk on 6/15/18.
//  Copyright © 2018 yurii zhuk. All rights reserved.
//

import UIKit

extension NSAttributedString {
    static func timeStringFormatter(_ firstString: String, secondString: String) -> NSAttributedString {
        let firstfont:UIFont = UIFont(name: "HelveticaNeue-Light", size: 56)!
        let boldFont:UIFont = UIFont(name: "Helvetica Neue", size: 23)!
        
        let firstDict:NSDictionary = NSDictionary(object: firstfont, forKey:
            NSAttributedStringKey.font as NSCopying)
        let boldDict:NSDictionary = NSDictionary(object: boldFont, forKey:
            NSAttributedStringKey.font as NSCopying)
        
        let attributedString = NSMutableAttributedString(string: firstString,
                                                         attributes: (firstDict as! [NSAttributedStringKey : Any]))
    
        let smallString = NSMutableAttributedString(string:secondString,
                                                    attributes:(boldDict as! [NSAttributedStringKey : Any]) )
        attributedString.append(smallString)
        return attributedString
        
    }
}
