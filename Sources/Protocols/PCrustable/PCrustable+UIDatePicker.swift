//
//  PCrustable+UIDatePicker.swift
//  PieCrust
//
//  Created by Omar Albeik on 6.03.2018.
//  Copyright © 2018 Mobilion. All rights reserved.
//

public extension PCrustable where Self: UIDatePicker {

    /// Creates and returns a new UIDatePicker with setting its properties in one line.
    ///
    /// - Parameters:
    ///   - datePickerMode: The mode of the date picker.
    ///   - date: Initial date of the picker _(default is nil)_.
    ///   - minimumDate: The minimum date that a date picker can show _(default is nil)_.
    ///   - maximumDate: The maximum date that a date picker can show _(default is nil)_.
    ///   - minuteInterval: The interval at which the date picker should display minutes _(default is 1)_.
    ///   - countDownDuration: The value displayed by the date picker when the mode property is set to countDownTimer _(default is 0.0)_.
    ///   - textColor: Text color of the date picker _(default is nil)_.
    ///   - isEnabled: The enabled state to use when drawing the date picker _(default is true)_.
    ///   - backgroundColor: Background color of the date picker _(default is PCColor.white)_.
    ///   - tintColor: Text color of the date picker _(default is nil)_.
    ///   - alpha: Alpha of the date picker _(default is 1.0)_.
    public init(
        datePickerMode: UIDatePickerMode,
        date: Date? = nil,
        minimumDate: Date? = nil,
        maximumDate: Date? = nil,
        minuteInterval: Int = 1,
        countDownDuration: TimeInterval = 0.0,
        textColor: UIColor? = nil,
        isEnabled: Bool = true,
        backgroundColor: UIColor? = PCColor.white,
        tintColor: UIColor? = nil,
        alpha: CGFloat = 1.0) {

        self.init()

        self.datePickerMode = datePickerMode

        if let aDate = date {
            self.date = aDate
        }
        self.minimumDate = minimumDate
        self.maximumDate = maximumDate

        self.minuteInterval = minuteInterval

        if datePickerMode == .countDownTimer {
            self.countDownDuration = countDownDuration
        }

        if let color = textColor {
            self.textColor = color
        }

        self.isEnabled = isEnabled
        self.backgroundColor = backgroundColor
        if let color = tintColor {
            self.tintColor = color
        }
        self.alpha = alpha
    }

    /// Text color of the date picker.
    public var textColor: UIColor? {
        set {
            setValue(newValue, forKeyPath: "textColor")
        }
        get {
            return value(forKeyPath: "textColor") as? UIColor
        }
    }

}
