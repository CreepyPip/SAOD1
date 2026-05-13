//
//  asserts.swift
//  dinamicarray
//
//  Created by Семён Зайцев on 10.05.2026.
//

import Foundation

let array = DynamicArray<Double>()

func tests(){
    let a: [Double] = [3, 8, 2.12, 4, 9, -12, -12.1]
    
    array.resize(6)
    for i in 0..<7 {
        array.addend(a[i])
    }
    
    assert(array.getElement(6) == nil)
    
    array.popend()
    assert(array.getSize() == 5)
    assert(array.getCapacity() == 6)
}
