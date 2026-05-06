//
//  asserts.swift
//  sort
//
//  Created by Семён on 08.04.2026.
//  Copyright © 2026 Семён. All rights reserved.
//

import Foundation

func tests() {
    let arr1: [Double] = [13, 12.789, 8.1234, -382.13, -123.21, -111111.111]
    let arr2: [Double] = [-111111.111, -382.13, -123.21, 8.1234, 12.789, 13]
    let arr3: [Double] = [-111111.111, -123.21, -382.13, 8.1234, 12.789, 13]
    let arr4: [Double] = [12,10]
    
    // Тесты для пузырчатой сортировки
    // Сортировка убывающего массива
    var sortarr = bubble_sort(arr1)
    assert(sortarr == [-111111.111, -382.13, -123.21, 8.1234, 12.789, 13])
    // Сортировка уже сортированного массива
    sortarr = bubble_sort(arr2)
    assert(sortarr == [-111111.111, -382.13, -123.21, 8.1234, 12.789, 13])
    // Сортировка массива с одним несоответствием
    sortarr = bubble_sort(arr3)
    assert(sortarr == [-111111.111, -382.13, -123.21, 8.1234, 12.789, 13])
    // Сортировка массива из 2 элементов
    sortarr = bubble_sort(arr4)
    assert(sortarr == [10,12])
    
    // Тесты для быстрой сортировки
    sortarr = quick_sort(arr1)
    assert(sortarr == [-111111.111, -382.13, -123.21, 8.1234, 12.789, 13])
    sortarr = quick_sort(arr2)
    assert(sortarr == [-111111.111, -382.13, -123.21, 8.1234, 12.789, 13])
    sortarr = quick_sort(arr3)
    assert(sortarr == [-111111.111, -382.13, -123.21, 8.1234, 12.789, 13])
    sortarr = quick_sort(arr4)
    assert(sortarr == [10,12])
    
    // Тесты для  сортировки Шелла
    sortarr = shell_sort(arr1)
    assert(sortarr == [-111111.111, -382.13, -123.21, 8.1234, 12.789, 13])
    sortarr = shell_sort(arr2)
    assert(sortarr == [-111111.111, -382.13, -123.21, 8.1234, 12.789, 13])
    sortarr = shell_sort(arr3)
    assert(sortarr == [-111111.111, -382.13, -123.21, 8.1234, 12.789, 13])
    sortarr = shell_sort(arr4)
    assert(sortarr == [10,12])
    
    sortarr = merge_sort(arr1)
    assert(sortarr == [-111111.111, -382.13, -123.21, 8.1234, 12.789, 13])
    sortarr = merge_sort(arr2)
    assert(sortarr == [-111111.111, -382.13, -123.21, 8.1234, 12.789, 13])
    sortarr = merge_sort(arr3)
    assert(sortarr == [-111111.111, -382.13, -123.21, 8.1234, 12.789, 13])
    sortarr = merge_sort(arr4)
    assert(sortarr == [10,12])
}
