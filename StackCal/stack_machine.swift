//
//  stack_machine.swift
//  StackCal
//
//  Created by Nikolay Beznos on 18.06.2024.
//

import Foundation

class StackMachine {
    private let stack = Stack<Int>()

    func dumpStack() -> Stack<Int> {
        return stack.clone()
    }

    func push(_ x: Int) {
        stack.push(x)
    }

    func add() throws {
        guard let a = stack.pop() else { throw StackError() }
        guard let b = stack.pop() else { throw StackError() }

        stack.push(a + b)
    }

    func subtract() throws {
        guard let a = stack.pop() else { throw StackError() }
        guard let b = stack.pop() else { throw StackError() }

        stack.push(a - b)
    }

    func multiply() throws {
        guard let a = stack.pop() else { throw StackError() }
        guard let b = stack.pop() else { throw StackError() }

        stack.push(a * b)
    }

    func divide() throws {
        guard let a = stack.pop() else { throw StackError() }
        guard let b = stack.pop() else { throw StackError() }

        stack.push(b / a)
    }

    func remainder() throws {
        guard let a = stack.pop() else { throw StackError() }
        guard let b = stack.pop() else { throw StackError() }

        stack.push(b % a)
    }
}
