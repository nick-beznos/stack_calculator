//
//  Stack.swift
//  StackCal
//
//  Created by Nikolay Beznos on 18.06.2024.
//

import Foundation

class Stack<T> {
    private var array: [T]

    init() {
        array = []
    }

    init(_ initialArray: [T])  {
        array = initialArray
    }

    func push(_ element: T) {
        array.append(element)
    }

    func pop() -> T? {
        if array.isEmpty {return nil}
        return array.removeLast()
    }

    func peek() -> T? {
        if array.isEmpty {return nil}
        return array.last
    }

    func clone() -> Stack {
        return Stack.init(array)
    }
}
