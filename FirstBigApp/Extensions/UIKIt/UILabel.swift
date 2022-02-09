//
//  UILabel.swift
//  FirstBigApp
//
//  Created by Илья Раков on 09.02.2022.
//

import UIKit

extension UILabel {
    convenience init (text: String, font: UIFont?, alingment: NSTextAlignment = .left){
        self.init()
        
        self.text = text
        self.font = font
        self.textColor = .black
        self.textAlignment = alingment
        self.adjustsFontSizeToFitWidth = true
        self.translatesAutoresizingMaskIntoConstraints = false
    }
}
