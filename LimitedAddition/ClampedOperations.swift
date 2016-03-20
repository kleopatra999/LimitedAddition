//
//  ClampedOperations.swift
//  LimitedAddition
//
//  Created by Marco Conti on 20/03/16.
//  Copyright © 2016 com.marco83. All rights reserved.
//

import Foundation

infix operator +∈ {
associativity right
precedence 140
}

infix operator -∈ {
associativity right
precedence 140
}

/// Signed integer with a min and max value
/// This protocol is needed as the Int types in Swift do not
/// conform to any protocol that has `min` and `max`
public protocol ClampedAdditionInteger : SignedIntegerType {
    static var max: Self { get }
    static var min: Self { get }
}

extension ClampedAdditionInteger {
    
    /// Clamped addition. Result will be clamped to the maximum
    // or minimum value of the type range in case of under/overflow
    func clampAdd(x: Self) -> Self {
        return self +∈ x
    }
    
    /// Clamped subtraction. The result will be clamped to the maximum
    // or minimum value of the type range in case of under/overflow
    func clampSub(x: Self) -> Self {
        return self -∈ x
    }
}

extension Int64 : ClampedAdditionInteger {}
extension Int32 : ClampedAdditionInteger {}
extension Int16 : ClampedAdditionInteger {}
extension Int8 : ClampedAdditionInteger {}
extension Int : ClampedAdditionInteger {}

/// Clamped addition. The result will be clamped to the maximum
// or minimum value of the type range in case of under/overflow
public func +∈<T : ClampedAdditionInteger>(a: T, b: T) -> T {
    switch(a, b) {
    case _ where a < 0 && b > 0:
        return a + b
    case _ where a > 0 && b > 0:
        return a + min(T.max - a, b)
    case _ where a < 0 && b < 0:
        return a + max(T.min - a, b)
    case _ where a > 0 && b < 0:
        return a + b
    default:
        return a + b
    }
}

/// Clamped subtraction. The result will be clamped to the maximum
// or minimum value of the type range in case of under/overflow
public func -∈<T : ClampedAdditionInteger>(a: T, b: T) -> T {
    return a +∈ (-b)
}
