//
//  ElementComparable+BinarySearch.swift
//  AlgoSwiftly
//
//  Created by Niesje Dowell on 7/23/18.
//  Copyright © 2018 Niesje Dowell. All rights reserved.
//

import Foundation

extension Array where Element: Comparable {
    
    // Assumes user knows binarySearch requires an ordered array.
    // Runtime Complexity: O(logn) where n is length of array.
    // Memory Complexity O(1)
    
    func binarySearch(for key: Element) -> Int {
        var left = 0
        var right = self.count - 1
        
        while left <= right {
            let mid = left + (right - left) / 2
            if self[mid] == key { return mid }
            if self[mid] < key {
                left = (mid + 1)
            }
            if self[mid] > key {
                right = (mid - 1)
            }
        }
        return -1
    }
    
}
