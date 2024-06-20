//
//  StackMachineTests.swift
//  StackCalTests
//
//  Created by Nikolay Beznos on 18.06.2024.
//

import XCTest

final class StackMachineTests: XCTestCase {
    var machine = StackMachine()

    override func setUp() {
        machine = StackMachine()
    }

    func testStackMachineDump() {
        XCTAssertNil(machine.dumpStack().peek())
    }

    func testStackMachinePush() {
        let num = 3
        machine.push(num)
        XCTAssert(machine.dumpStack().peek() == num)
    }

    func testStackMachineAddNumber() throws {
        let num = 3

        machine.push(num)
        machine.push(num)

        try machine.add()

        XCTAssert(machine.dumpStack().peek() == num + num)
        XCTAssert(machine.dumpStack().size() == 1)
    }

    func testStackMachineAddEmpty() throws {
        XCTAssertThrowsError(try machine.add())

        let num = 3

        machine.push(num)
        XCTAssertThrowsError(try machine.add())
    }

    func testStackMachineSubtract() throws {
        let num = 3

        machine.push(num)
        machine.push(num)

        try machine.subtract()

        XCTAssert(machine.dumpStack().peek() == num - num)
        XCTAssert(machine.dumpStack().size() == 1)
    }

    func testStackMachineSubtractEmpty() throws {
        XCTAssertThrowsError(try machine.subtract())

        let num = 3

        machine.push(num)
        XCTAssertThrowsError(try machine.subtract())
    }

    func testStackMachineMultiply() throws {
        let num = 3

        machine.push(num)
        machine.push(num)

        try machine.multiply()

        XCTAssert(machine.dumpStack().peek() == num * num)
        XCTAssert(machine.dumpStack().size() == 1)
    }

    func testStackMachineMultiplyEmpty() throws {
        XCTAssertThrowsError(try machine.multiply())

        let num = 3

        machine.push(num)
        XCTAssertThrowsError(try machine.multiply())
    }

    func testStackMachineDivide() throws {
        let num = 15
        let num2 = 5

        machine.push(num)
        machine.push(num2)

        try machine.divide()

        XCTAssert(machine.dumpStack().peek() == num / num2)
        XCTAssert(machine.dumpStack().size() == 1)
    }

    func testStackMachineDivideEmpty() throws {
        XCTAssertThrowsError(try machine.divide())

        let num = 3

        machine.push(num)
        XCTAssertThrowsError(try machine.divide())
    }

    func testStackMachineRemainder() throws {
        let num = 17
        let num2 = 3

        machine.push(num)
        machine.push(num2)

        try machine.remainder()

        XCTAssert(machine.dumpStack().peek() == num % num2)
        XCTAssert(machine.dumpStack().size() == 1)
    }

    func testStackMachineRemainderEmpty() throws {
        XCTAssertThrowsError(try machine.remainder())

        let num = 3

        machine.push(num)
        XCTAssertThrowsError(try machine.remainder())
    }
}

