//
//  ThisTests.swift
//  ThisTests
//
//  Created by Christopher Brandon Karani on 07/12/2017.
//  Copyright © 2017 Christopher Brandon Karani. All rights reserved.
//

import XCTest
@testable import This

class ThisTests: XCTestCase {

    func thisTest() {
        let queue = OperationQueue().this {
            $0.name = "awesome"
            $0.maxConcurrentOperationCount = 5
        }
        XCTAssertEqual(queue.name, "awesome")
        XCTAssertEqual(queue.maxConcurrentOperationCount, 5)
    }
}
