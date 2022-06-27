//
//  ListNode.swift
//  
//
//  Created by  ¯\_(ツ)_/¯ on 6/26/22.
//

import Foundation

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
