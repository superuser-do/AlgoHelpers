//
//  arrayify.swift
//  
//
//  Created by  ¯\_(ツ)_/¯ on 6/26/22.
//

import Foundation

public func arrayify<T>(_ head: ListNode<T>) -> [T] {
    var array = [T]()
    var pointer: ListNode<T>? = head
    
    while pointer != nil {
        array.append(pointer!.value)
        pointer = pointer!.next
    }
    
    return array
}
