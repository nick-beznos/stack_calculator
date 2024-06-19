//
//  StackCalTests.swift
//  StackCalTests
//
//  Created by Nikolay Beznos on 18.06.2024.
//

import XCTest
@testable import StackCal

final class StackCalTests: XCTestCase {
    func testStackPush() {
        let stack = Stack<String>()

        let a = "a"

        stack.push(a)
        XCTAssert(stack.pop() == a)
    }

    func testStackOrder() {
        let stack = Stack<String>()

        let a = "a"
        let b = "b"

        stack.push(a)
        stack.push(b)

        XCTAssert(stack.pop() == b)
        XCTAssert(stack.pop() == a)
    }

    func testEmptyStack() {
        let stack = Stack<String>()

        let a = "a"

        stack.push(a)
        let _ = stack.pop()

        XCTAssertNil(stack.pop())
    }

    func testPeek() {
        let stack = Stack<String>()
        let a = "a"

        stack.push(a)

        XCTAssert(stack.peek() == a)
        XCTAssert(stack.pop() == a)
    }

    func testStackClone() {
        let stack = Stack<String>()
        let a = "a"

        stack.push(a)

        let clone = stack.clone()

        let _ = stack.pop()

        XCTAssert(clone.peek() == a)
    }
}
