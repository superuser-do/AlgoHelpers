//
//  Helpers.swift
//  
//
//  Created by  ¯\_(ツ)_/¯ on 6/28/22.
//

import Foundation

// MARK: - Types

/// Execution of the operation
/// - iterative
/// - recursive
public enum ExecutionType {
    case iterative
    case recursive
}

// MARK: - Linked List

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

public func convertToLinkedList<T>(_ array: [T]) -> ListNode<T> {
    var prev: ListNode<T>?
    var head: ListNode<T>?
    
    for value in array {
        let current = ListNode(value)
        
        if head == nil {
           head = current
        }
        
        if let prev = prev {
            prev.next = current
        }
        
        prev = current
    }
    
    return head!
}

//  MARK: - Trees

public class TreeNode<T> {
    public var value: T
    public var left: TreeNode?
    public var right: TreeNode?
    
    public init(_ value: T,
                _ left: TreeNode? = nil,
                _ right: TreeNode? = nil) {
        self.value = value
        self.left = left
        self.right = right
    }
}
