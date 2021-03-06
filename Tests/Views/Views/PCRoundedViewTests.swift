//
//  PCRoundedViewTests.swift
//  PieCrustTests
//
//  Created by ahmet.yilmaz on 16.03.2018.
//  Copyright © 2018 Mobilion. All rights reserved.
//

import XCTest
@testable import PieCrust

class PCRoundedViewTests: XCTestCase {
    
    func testBounds() {
        let view = PCRoundedView()
        XCTAssertEqual(view.layer.cornerRadius, 0)

        view.bounds = CGRect(x: 0, y: 0, width: 100, height: 50)
        XCTAssertEqual(view.layer.cornerRadius, 25)
        XCTAssertEqual(view.clipsToBounds, true)
    }
    
}
