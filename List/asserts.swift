//
//  asserts.swift
//  List
//
//  Created by Семён Зайцев on 10.05.2026.
//

import Foundation

let testlist = Collection<Double>()

func tests(){
    let a: [Double] = [3, 8, 2.12, 4, 9, -12, -12.1]
    
    for i in 0..<3 {
        testlist.push_back(a[i])
    }
    
    for i in 0..<4 {
        testlist.push_front(a[i+3])
    }
    assert(testlist.get_element(4) == 3.0)
    
    testlist.remove(4)
    assert(testlist.get_element(4) == 8.0)
    
    assert(testlist.get_size() == 7)
    
    testlist.pop_front()
    assert(testlist.get_element(0)! == -12)
    
    testlist.insert(12.3, 4)
    
    assert(testlist.get_element(4)! == 12.3)
    assert(testlist.get_element(5)! == 2.12)
    
    testlist.clear()
    assert(testlist.isEmpty() == true)
}
