//
//  asserts.swift
//  List
//
//  Created by Семён Зайцев on 10.05.2026.
//

import Foundation

let testlist = List<Double>()

func tests(){
    let a: [Double] = [3, 8, 2.12, 4, 9, -12, -12.1]
    
    // Тест вставки элементов в конец и начало
    for i in 0..<3 {
        testlist.push_back(a[i])
    }
    
    for i in 0..<4 {
        testlist.push_front(a[i+3])
    }
    assert(testlist.get_element(4) == 3.0)
    
    // Тест удаления случайного элемента
    testlist.remove(4)
    assert(testlist.get_element(4) == 8.0)
    assert(testlist.get_size() == 7)
    
    // Тест удаления первого элемента
    testlist.pop_front()
    assert(testlist.get_front()! == -12)
    
    // Проверка вставки элемента и получения последнего элемента
    testlist.insert(12.3, 4)
    assert(testlist.get_element(4)! == 12.3)
    assert(testlist.get_back()! == 2.12)
    
    // Удаление несуществующего элемента
    testlist.remove(12345678)
    assert(testlist.get_back()! == 2.12)
    
    // Проверка очищения
    testlist.clear()
    assert(testlist.isEmpty() == true)
    
    // Удаления из пустого списка
    testlist.pop_front()
    testlist.pop_back()
    testlist.remove(2)
}
