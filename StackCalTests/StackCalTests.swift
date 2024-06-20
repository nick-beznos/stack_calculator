//
//  StackCalTests.swift
//  StackCalTests
//
//  Created by Nikolay Beznos on 18.06.2024.
//

import XCTest
@testable import StackCal

final class StackCalTests: XCTestCase {
    var stack = Stack<String>()

    override func setUp() {
        stack = Stack<String>()
    }

    func testStackPush() {

        let a = "a"

        stack.push(a)
        XCTAssert(stack.pop() == a)
    }

    func testStackOrder() {
        let a = "a"
        let b = "b"

        stack.push(a)
        stack.push(b)

        XCTAssert(stack.pop() == b)
        XCTAssert(stack.pop() == a)
    }

    func testEmptyStack() {
        let a = "a"

        stack.push(a)
        let _ = stack.pop()

        XCTAssertNil(stack.pop())
    }

    func testPeek() {
        let a = "a"

        stack.push(a)

        XCTAssert(stack.peek() == a)
        XCTAssert(stack.pop() == a)
    }

    func testStackClone() {
        let a = "a"

        stack.push(a)

        let clone = stack.clone()

        let _ = stack.pop()

        XCTAssert(clone.peek() == a)
    }

    func testStackSize() {
        XCTAssert(stack.size() == 0)
        let a = "a"
        stack.push(a)

        XCTAssert(stack.size() == 1)

        let _ = stack.pop()
        XCTAssert(stack.size() == 0)
    }
}
