//
//  assert.swift
//  stack
//
//  Created by Семён Зайцев on 30.05.2026.
//

import Foundation

func tests(){
    let arr = Stack<Double>()
    let a: [Double] = [3, 8, 2.12, 4, 9, -12, -12.1]
    
    for i in 0..<7 {
        arr.push(a[i])
    }
    
    // Проверка последнего элемента
    assert(arr.get_element() == -12.1)
    
    // Проверки на удаление
    arr.pop()
    assert(arr.size() == 6)
    assert(arr.get_element() == -12)
    
    // Проверка на пустой массив
    arr.clear()
    assert(arr.size() == 0)
    
    // Проверка на удаление без ошибок
    arr.pop()
}
