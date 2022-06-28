//
//  Helpers.swift
//  
//
//  Created by  ¯\_(ツ)_/¯ on 6/28/22.
//

import Foundation

public enum ExecutionType {
    case iterative
    case recursive
}

public class ListNode<T> {
    public var value: T
    public var next: ListNode?
    
    public init(_ value: T,
                _ next: ListNode? = nil)
    {
        self.value = value
        self.next = next
    }
}

public func convertToArray<T>(_ head: ListNode<T>) -> [T] {
    var array = [T]()
    var pointer: ListNode<T>? = head
    
    while pointer != nil {
        array.append(pointer!.value)
        pointer = pointer!.next
    }
    
    return array
}
