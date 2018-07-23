//
//  ElementComparable+BinarySearchTests.swift
//  AlgoSwiftlyTests
//
//  Created by Niesje Dowell on 7/23/18.
//  Copyright © 2018 Niesje Dowell. All rights reserved.
//

import Foundation
import XCTest

class BinarySearchTests: XCTestCase {

    func testFindingEndpoints() {
        let array = [-100,1,2,3,9,40,1000]
        XCTAssertEqual(array.binarySearch(for: -100), 0)
        XCTAssertEqual(array.binarySearch(for: 1000), 6)
    }

    func testFindingMiddleValues() {
        let array = ["A","B","C","D","E"]
        XCTAssertEqual(array.binarySearch(for: "C"), 2)
    }
    
    func testMissingValue() {
        let array = ["A","B","C","D","E"]
        XCTAssertEqual(array.binarySearch(for: "F"), -1)
    }

}
