//
//  LimitedAdditionTests.swift
//  LimitedAdditionTests
//
//  Created by Marco Conti on 20/03/16.
//  Copyright © 2016 com.marco83. All rights reserved.
//

import XCTest
@testable import LimitedAddition

class LimitedAdditionTests: XCTestCase {
    
}

// MARK: - Int8 addition
extension LimitedAdditionTests {

    func testRegularAdditionWithPositivePositiveOperandsInt8() {
        let type = Int8.self
        let a = type.init(2)
        let b = type.init(1)
        let expected = type.init(3)
        XCTAssertEqual(a.clampAdd(b), expected)
        XCTAssertEqual(a +∈ b, expected)
    }
    
    func testRegularAdditionWithPositiveNegativeOperandsInt8() {
        let type = Int8.self
        let a = type.init(2)
        let b = type.init(-1)
        let expected = type.init(1)
        XCTAssertEqual(a.clampAdd(b), expected)
        XCTAssertEqual(a +∈ b, expected)
    }
    
    func testRegularAdditionWithNegativePositiveOperandsInt8() {
        let type = Int8.self
        let a = type.init(-2)
        let b = type.init(1)
        let expected = type.init(-1)
        XCTAssertEqual(a.clampAdd(b), expected)
        XCTAssertEqual(a +∈ b, expected)
    }
    
    func testRegularAdditionWithNegativeNegativeOperandsInt8() {
        let type = Int8.self
        let a = type.init(-2)
        let b = type.init(-1)
        let expected = type.init(-3)
        XCTAssertEqual(a.clampAdd(b), expected)
        XCTAssertEqual(a +∈ b, expected)
    }
    
    func testOverflowingAdditionInt8() {
        let type = Int8.self
        let a = type.max - type.init(10)
        let b = type.init(20)
        XCTAssertEqual(a.clampAdd(b), type.max)
        XCTAssertEqual(a +∈ b, type.max)
    }
    
    func testUnderflowingAdditionInt8() {
        let type = Int8.self
        let a = type.min + type.init(10)
        let b = type.init(-20)
        XCTAssertEqual(a.clampAdd(b), type.min)
        XCTAssertEqual(a +∈ b, type.min)
    }
}

// MARK: - Int8 subtraction
extension LimitedAdditionTests {
    
    func testRegularSubtactionWithPositivePositiveOperandsInt8() {
        let type = Int8.self
        let a = type.init(2)
        let b = type.init(1)
        let expected = type.init(1)
        XCTAssertEqual(a.clampSub(b), expected)
        XCTAssertEqual(a -∈ b, expected)
    }
    
    func testRegularSubtractionWithPositiveNegativeOperandsInt8() {
        let type = Int8.self
        let a = type.init(2)
        let b = type.init(-1)
        let expected = type.init(3)
        XCTAssertEqual(a.clampSub(b), expected)
        XCTAssertEqual(a -∈ b, expected)
    }
    
    func testRegularSubtractionWithNegativePositiveOperandsInt8() {
        let type = Int8.self
        let a = type.init(-2)
        let b = type.init(1)
        let expected = type.init(-3)
        XCTAssertEqual(a.clampSub(b), expected)
        XCTAssertEqual(a -∈ b, expected)
    }
    
    func testRegularSubtractionWithNegativeNegativeOperandsInt8() {
        let type = Int8.self
        let a = type.init(-2)
        let b = type.init(-1)
        let expected = type.init(-1)
        XCTAssertEqual(a.clampSub(b), expected)
        XCTAssertEqual(a -∈ b, expected)
    }
    
    func testOverflowingSubtractionInt8() {
        let type = Int8.self
        let a = type.max - type.init(10)
        let b = type.init(-20)
        XCTAssertEqual(a.clampSub(b), type.max)
        XCTAssertEqual(a -∈ b, type.max)
    }
    
    func testUnderflowingSubtractionInt8() {
        let type = Int8.self
        let a = type.min + type.init(10)
        let b = type.init(20)
        XCTAssertEqual(a.clampSub(b), type.min)
        XCTAssertEqual(a -∈ b, type.min)
    }
}


// MARK: - Int16 addition
extension LimitedAdditionTests {
    
    func testRegularAdditionWithPositivePositiveOperandsInt16() {
        let type = Int16.self
        let a = type.init(2)
        let b = type.init(1)
        let expected = type.init(3)
        XCTAssertEqual(a.clampAdd(b), expected)
        XCTAssertEqual(a +∈ b, expected)
    }
    
    func testRegularAdditionWithPositiveNegativeOperandsInt16() {
        let type = Int16.self
        let a = type.init(2)
        let b = type.init(-1)
        let expected = type.init(1)
        XCTAssertEqual(a.clampAdd(b), expected)
        XCTAssertEqual(a +∈ b, expected)
    }
    
    func testRegularAdditionWithNegativePositiveOperandsInt16() {
        let type = Int16.self
        let a = type.init(-2)
        let b = type.init(1)
        let expected = type.init(-1)
        XCTAssertEqual(a.clampAdd(b), expected)
        XCTAssertEqual(a +∈ b, expected)
    }
    
    func testRegularAdditionWithNegativeNegativeOperandsInt16() {
        let type = Int16.self
        let a = type.init(-2)
        let b = type.init(-1)
        let expected = type.init(-3)
        XCTAssertEqual(a.clampAdd(b), expected)
        XCTAssertEqual(a +∈ b, expected)
    }
    
    func testOverflowingAdditionInt16() {
        let type = Int16.self
        let a = type.max - type.init(10)
        let b = type.init(20)
        XCTAssertEqual(a.clampAdd(b), type.max)
        XCTAssertEqual(a +∈ b, type.max)
    }
    
    func testUnderflowingAdditionInt16() {
        let type = Int16.self
        let a = type.min + type.init(10)
        let b = type.init(-20)
        XCTAssertEqual(a.clampAdd(b), type.min)
        XCTAssertEqual(a +∈ b, type.min)
    }
}

// MARK: - Int16 subtraction
extension LimitedAdditionTests {
    
    func testRegularSubtactionWithPositivePositiveOperandsInt16() {
        let type = Int16.self
        let a = type.init(2)
        let b = type.init(1)
        let expected = type.init(1)
        XCTAssertEqual(a.clampSub(b), expected)
        XCTAssertEqual(a -∈ b, expected)
    }
    
    func testRegularSubtractionWithPositiveNegativeOperandsInt16() {
        let type = Int16.self
        let a = type.init(2)
        let b = type.init(-1)
        let expected = type.init(3)
        XCTAssertEqual(a.clampSub(b), expected)
        XCTAssertEqual(a -∈ b, expected)
    }
    
    func testRegularSubtractionWithNegativePositiveOperandsInt16() {
        let type = Int16.self
        let a = type.init(-2)
        let b = type.init(1)
        let expected = type.init(-3)
        XCTAssertEqual(a.clampSub(b), expected)
        XCTAssertEqual(a -∈ b, expected)
    }
    
    func testRegularSubtractionWithNegativeNegativeOperandsInt16() {
        let type = Int16.self
        let a = type.init(-2)
        let b = type.init(-1)
        let expected = type.init(-1)
        XCTAssertEqual(a.clampSub(b), expected)
        XCTAssertEqual(a -∈ b, expected)
    }
    
    func testOverflowingSubtractionInt16() {
        let type = Int16.self
        let a = type.max - type.init(10)
        let b = type.init(-20)
        XCTAssertEqual(a.clampSub(b), type.max)
        XCTAssertEqual(a -∈ b, type.max)
    }
    
    func testUnderflowingSubtractionInt16() {
        let type = Int16.self
        let a = type.min + type.init(10)
        let b = type.init(20)
        XCTAssertEqual(a.clampSub(b), type.min)
        XCTAssertEqual(a -∈ b, type.min)
    }
}




// MARK: - Int32 addition
extension LimitedAdditionTests {
    
    func testRegularAdditionWithPositivePositiveOperandsInt32() {
        let type = Int32.self
        let a = type.init(2)
        let b = type.init(1)
        let expected = type.init(3)
        XCTAssertEqual(a.clampAdd(b), expected)
        XCTAssertEqual(a +∈ b, expected)
    }
    
    func testRegularAdditionWithPositiveNegativeOperandsInt32() {
        let type = Int32.self
        let a = type.init(2)
        let b = type.init(-1)
        let expected = type.init(1)
        XCTAssertEqual(a.clampAdd(b), expected)
        XCTAssertEqual(a +∈ b, expected)
    }
    
    func testRegularAdditionWithNegativePositiveOperandsInt32() {
        let type = Int32.self
        let a = type.init(-2)
        let b = type.init(1)
        let expected = type.init(-1)
        XCTAssertEqual(a.clampAdd(b), expected)
        XCTAssertEqual(a +∈ b, expected)
    }
    
    func testRegularAdditionWithNegativeNegativeOperandsInt32() {
        let type = Int32.self
        let a = type.init(-2)
        let b = type.init(-1)
        let expected = type.init(-3)
        XCTAssertEqual(a.clampAdd(b), expected)
        XCTAssertEqual(a +∈ b, expected)
    }
    
    func testOverflowingAdditionInt32() {
        let type = Int32.self
        let a = type.max - type.init(10)
        let b = type.init(20)
        XCTAssertEqual(a.clampAdd(b), type.max)
        XCTAssertEqual(a +∈ b, type.max)
    }
    
    func testUnderflowingAdditionInt32() {
        let type = Int32.self
        let a = type.min + type.init(10)
        let b = type.init(-20)
        XCTAssertEqual(a.clampAdd(b), type.min)
        XCTAssertEqual(a +∈ b, type.min)
    }
}

// MARK: - Int32 subtraction
extension LimitedAdditionTests {
    
    func testRegularSubtactionWithPositivePositiveOperandsInt32() {
        let type = Int32.self
        let a = type.init(2)
        let b = type.init(1)
        let expected = type.init(1)
        XCTAssertEqual(a.clampSub(b), expected)
        XCTAssertEqual(a -∈ b, expected)
    }
    
    func testRegularSubtractionWithPositiveNegativeOperandsInt32() {
        let type = Int32.self
        let a = type.init(2)
        let b = type.init(-1)
        let expected = type.init(3)
        XCTAssertEqual(a.clampSub(b), expected)
        XCTAssertEqual(a -∈ b, expected)
    }
    
    func testRegularSubtractionWithNegativePositiveOperandsInt32() {
        let type = Int32.self
        let a = type.init(-2)
        let b = type.init(1)
        let expected = type.init(-3)
        XCTAssertEqual(a.clampSub(b), expected)
        XCTAssertEqual(a -∈ b, expected)
    }
    
    func testRegularSubtractionWithNegativeNegativeOperandsInt32() {
        let type = Int32.self
        let a = type.init(-2)
        let b = type.init(-1)
        let expected = type.init(-1)
        XCTAssertEqual(a.clampSub(b), expected)
        XCTAssertEqual(a -∈ b, expected)
    }
    
    func testOverflowingSubtractionInt32() {
        let type = Int32.self
        let a = type.max - type.init(10)
        let b = type.init(-20)
        XCTAssertEqual(a.clampSub(b), type.max)
        XCTAssertEqual(a -∈ b, type.max)
    }
    
    func testUnderflowingSubtractionInt32() {
        let type = Int32.self
        let a = type.min + type.init(10)
        let b = type.init(20)
        XCTAssertEqual(a.clampSub(b), type.min)
        XCTAssertEqual(a -∈ b, type.min)
    }
}




// MARK: - Int64 addition
extension LimitedAdditionTests {
    
    func testRegularAdditionWithPositivePositiveOperandsInt64() {
        let type = Int64.self
        let a = type.init(2)
        let b = type.init(1)
        let expected = type.init(3)
        XCTAssertEqual(a.clampAdd(b), expected)
        XCTAssertEqual(a +∈ b, expected)
    }
    
    func testRegularAdditionWithPositiveNegativeOperandsInt64() {
        let type = Int64.self
        let a = type.init(2)
        let b = type.init(-1)
        let expected = type.init(1)
        XCTAssertEqual(a.clampAdd(b), expected)
        XCTAssertEqual(a +∈ b, expected)
    }
    
    func testRegularAdditionWithNegativePositiveOperandsInt64() {
        let type = Int64.self
        let a = type.init(-2)
        let b = type.init(1)
        let expected = type.init(-1)
        XCTAssertEqual(a.clampAdd(b), expected)
        XCTAssertEqual(a +∈ b, expected)
    }
    
    func testRegularAdditionWithNegativeNegativeOperandsInt64() {
        let type = Int64.self
        let a = type.init(-2)
        let b = type.init(-1)
        let expected = type.init(-3)
        XCTAssertEqual(a.clampAdd(b), expected)
        XCTAssertEqual(a +∈ b, expected)
    }
    
    func testOverflowingAdditionInt64() {
        let type = Int64.self
        let a = type.max - type.init(10)
        let b = type.init(20)
        XCTAssertEqual(a.clampAdd(b), type.max)
        XCTAssertEqual(a +∈ b, type.max)
    }
    
    func testUnderflowingAdditionInt64() {
        let type = Int64.self
        let a = type.min + type.init(10)
        let b = type.init(-20)
        XCTAssertEqual(a.clampAdd(b), type.min)
        XCTAssertEqual(a +∈ b, type.min)
    }
}

// MARK: - Int64 subtraction
extension LimitedAdditionTests {
    
    func testRegularSubtactionWithPositivePositiveOperandsInt64() {
        let type = Int64.self
        let a = type.init(2)
        let b = type.init(1)
        let expected = type.init(1)
        XCTAssertEqual(a.clampSub(b), expected)
        XCTAssertEqual(a -∈ b, expected)
    }
    
    func testRegularSubtractionWithPositiveNegativeOperandsInt64() {
        let type = Int64.self
        let a = type.init(2)
        let b = type.init(-1)
        let expected = type.init(3)
        XCTAssertEqual(a.clampSub(b), expected)
        XCTAssertEqual(a -∈ b, expected)
    }
    
    func testRegularSubtractionWithNegativePositiveOperandsInt64() {
        let type = Int64.self
        let a = type.init(-2)
        let b = type.init(1)
        let expected = type.init(-3)
        XCTAssertEqual(a.clampSub(b), expected)
        XCTAssertEqual(a -∈ b, expected)
    }
    
    func testRegularSubtractionWithNegativeNegativeOperandsInt64() {
        let type = Int64.self
        let a = type.init(-2)
        let b = type.init(-1)
        let expected = type.init(-1)
        XCTAssertEqual(a.clampSub(b), expected)
        XCTAssertEqual(a -∈ b, expected)
    }
    
    func testOverflowingSubtractionInt64() {
        let type = Int64.self
        let a = type.max - type.init(10)
        let b = type.init(-20)
        XCTAssertEqual(a.clampSub(b), type.max)
        XCTAssertEqual(a -∈ b, type.max)
    }
    
    func testUnderflowingSubtractionInt64() {
        let type = Int64.self
        let a = type.min + type.init(10)
        let b = type.init(20)
        XCTAssertEqual(a.clampSub(b), type.min)
        XCTAssertEqual(a -∈ b, type.min)
    }
}




// MARK: - Int addition
extension LimitedAdditionTests {
    
    func testRegularAdditionWithPositivePositiveOperandsInt() {
        let type = Int.self
        let a = type.init(2)
        let b = type.init(1)
        let expected = type.init(3)
        XCTAssertEqual(a.clampAdd(b), expected)
        XCTAssertEqual(a +∈ b, expected)
    }
    
    func testRegularAdditionWithPositiveNegativeOperandsInt() {
        let type = Int.self
        let a = type.init(2)
        let b = type.init(-1)
        let expected = type.init(1)
        XCTAssertEqual(a.clampAdd(b), expected)
        XCTAssertEqual(a +∈ b, expected)
    }
    
    func testRegularAdditionWithNegativePositiveOperandsInt() {
        let type = Int.self
        let a = type.init(-2)
        let b = type.init(1)
        let expected = type.init(-1)
        XCTAssertEqual(a.clampAdd(b), expected)
        XCTAssertEqual(a +∈ b, expected)
    }
    
    func testRegularAdditionWithNegativeNegativeOperandsInt() {
        let type = Int.self
        let a = type.init(-2)
        let b = type.init(-1)
        let expected = type.init(-3)
        XCTAssertEqual(a.clampAdd(b), expected)
        XCTAssertEqual(a +∈ b, expected)
    }
    
    func testOverflowingAdditionInt() {
        let type = Int.self
        let a = type.max - type.init(10)
        let b = type.init(20)
        XCTAssertEqual(a.clampAdd(b), type.max)
        XCTAssertEqual(a +∈ b, type.max)
    }
    
    func testUnderflowingAdditionInt() {
        let type = Int.self
        let a = type.min + type.init(10)
        let b = type.init(-20)
        XCTAssertEqual(a.clampAdd(b), type.min)
        XCTAssertEqual(a +∈ b, type.min)
    }
}

// MARK: - Int subtraction
extension LimitedAdditionTests {
    
    func testRegularSubtactionWithPositivePositiveOperandsInt() {
        let type = Int.self
        let a = type.init(2)
        let b = type.init(1)
        let expected = type.init(1)
        XCTAssertEqual(a.clampSub(b), expected)
        XCTAssertEqual(a -∈ b, expected)
    }
    
    func testRegularSubtractionWithPositiveNegativeOperandsInt() {
        let type = Int.self
        let a = type.init(2)
        let b = type.init(-1)
        let expected = type.init(3)
        XCTAssertEqual(a.clampSub(b), expected)
        XCTAssertEqual(a -∈ b, expected)
    }
    
    func testRegularSubtractionWithNegativePositiveOperandsInt() {
        let type = Int.self
        let a = type.init(-2)
        let b = type.init(1)
        let expected = type.init(-3)
        XCTAssertEqual(a.clampSub(b), expected)
        XCTAssertEqual(a -∈ b, expected)
    }
    
    func testRegularSubtractionWithNegativeNegativeOperandsInt() {
        let type = Int.self
        let a = type.init(-2)
        let b = type.init(-1)
        let expected = type.init(-1)
        XCTAssertEqual(a.clampSub(b), expected)
        XCTAssertEqual(a -∈ b, expected)
    }
    
    func testOverflowingSubtractionInt() {
        let type = Int.self
        let a = type.max - type.init(10)
        let b = type.init(-20)
        XCTAssertEqual(a.clampSub(b), type.max)
        XCTAssertEqual(a -∈ b, type.max)
    }
    
    func testUnderflowingSubtractionInt() {
        let type = Int.self
        let a = type.min + type.init(10)
        let b = type.init(20)
        XCTAssertEqual(a.clampSub(b), type.min)
        XCTAssertEqual(a -∈ b, type.min)
    }
}
