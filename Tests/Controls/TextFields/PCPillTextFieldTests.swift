//
//  PCPillTextFieldTests.swift
//  PieCrustTests
//
//  Created by ahmet.yilmaz on 15.03.2018.
//  Copyright © 2018 Mobilion. All rights reserved.
//

import XCTest
@testable import PieCrust

class PCPillTextFieldTests: XCTestCase {
    
    func testBounds() {
        let textField = PCPillTextField()
        XCTAssertEqual(textField.cornerRadius, 0)
        
        textField.bounds = CGRect(x: 0, y: 0, width: 100, height: 50)
        XCTAssertEqual(textField.cornerRadius, 25)
    }
    
}
