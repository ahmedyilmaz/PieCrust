//
//  PCrustable+UIImageView.swift
//  PieCrust
//
//  Created by Omar Albeik on 6.03.2018.
//  Copyright © 2018 Mobilion. All rights reserved.
//

public extension PCrustable where Self: UIImageView {

    /// Creates and returns a new UIImageView with setting its properties in one line.
    ///
    /// - Parameters:
    ///   - image: image.
    ///   - contentMode: contentMode.
    ///   - backgroundColor: background color _(default is PCColor.white)_.
    ///   - tintColor: Text color of the view _(default is nil)_.
    ///   - alpha: alpha _(default is 1.0)_.
    public init(
        image: UIImage?,
        contentMode: UIViewContentMode,
        backgroundColor: UIColor? = PCColor.white,
        tintColor: UIColor? = nil,
        alpha: CGFloat = 1.0) {

        self.init(image: image)

        self.contentMode = contentMode
        self.backgroundColor = backgroundColor

        if let color = tintColor {
            self.tintColor = color
        }

        self.alpha = alpha
    }

}
