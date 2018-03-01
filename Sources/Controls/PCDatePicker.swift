//
//  PCDatePicker.swift
//  PieCrust
//
//  Created by Omar Albeik on 1.03.2018.
//  Copyright © 2018 Mobilion. All rights reserved.
//

import UIKit

/// PCDatePicker
open class PCDatePicker: UIDatePicker {

    /// Create a PCDatePicker ans set its properties in one line.
    ///
    /// - Parameters:
    ///   - datePickerMode: The mode of the date picker.
    ///   - date: Initial date of the picker (default is nil).
    ///   - minimumDate: The minimum date that a date picker can show (default is nil).
    ///   - maximumDate: The maximum date that a date picker can show (default is nil).
    ///   - minuteInterval: The interval at which the date picker should display minutes (default is 1).
    ///   - countDownDuration: The value displayed by the date picker when the mode property is set to countDownTimer (default is 0.0)
    ///   - backgroundColor: Background color of the date picker (default is PCColor.white).
    ///   - tintColor: Tint color of the date picker (default is nil).
    ///   - tintColor: Text color of the date picker (default is nil).
    ///   - alpha: Alpha of the date picker (default is 1.0).
    public convenience init(
        datePickerMode: UIDatePickerMode,
        date: Date? = nil,
        minimumDate: Date? = nil,
        maximumDate: Date? = nil,
        minuteInterval: Int = 1,
        countDownDuration: TimeInterval = 0.0,
        backgroundColor: UIColor? = PCColor.white,
        tintColor: UIColor? = nil,
        textColor: UIColor? = nil,
        alpha: CGFloat = 1.0) {
        self.init()

        self.datePickerMode = datePickerMode

        if let aDate = date {
            self.date = aDate
        }

        self.minimumDate = minimumDate
        self.maximumDate = maximumDate
        self.countDownDuration = countDownDuration
        self.backgroundColor = backgroundColor

        if let color = tintColor {
            self.tintColor = color
        }

        if let color = textColor {
            self.textColor = color
        }

        self.alpha = alpha
    }

    /// Text color of the date picker.
    open var textColor: UIColor? {
        set {
            setValue(newValue, forKeyPath: "textColor")
        }
        get {
            return value(forKeyPath: "textColor") as? UIColor
        }
    }

}
