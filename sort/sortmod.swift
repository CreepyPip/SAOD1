//
//  sortmod.swift
//  sort
//
//  Created by Семён on 06.04.2026.
//  Copyright © 2026 Семён. All rights reserved.
//

import Foundation

/// Пузырчатая сортировка (n^2)
/// Принимает несортированный массив arr
func bubble_sort (_ arr: [Double]) -> [Double] {
    // Записываю в отдельный массив для изменения (arr неизменяемый)
    var a = arr
    
    // Цикл с проверкой каждого значения
    for i in 0...arr.count-1 {
        // Цикл для смещения каждого значения
        // (arr.count-1-i) для ускорения функции, так как значения проверены
        for j in 0...(arr.count-1-i) {
            // Проверка на предпоследнее значение
            if j != a.count-1 {
                // Если текущее значение больше следующего, значения меняются местами
                if a[j] > a[j+1] {
                    a.swapAt(j, j+1)
                }
            }
        }
    }
    
    // Возвращается отсортированный массив
    return a
}

/// Быстрая сортировка (nlog n)
/// Принимает несортированный массив arr
func quick_sort (_ arr: [Double]) -> [Double] {
    // Проверка на массив из одного элемента
    if arr.count <= 1 {
        return arr
    }
    
    // Точка опоры
    let pivot = arr[arr.count/2]
    
    var left: [Double] = []
    var right: [Double] = []
    var middle: [Double] = []
    
    // Цикл для распределения в левую и правую часть
    for i in 0...arr.count-1 {
        if arr[i] < pivot {
            left.append(arr[i])
        } else if arr[i] > pivot {
            right.append(arr[i])
        } else {
            middle.append(arr[i])
        }
    }
    
    // Левая часть уходит в рекурсию
    left = quick_sort(left)
    // К левой части дополняются значения равные точке опоры
    left.append(contentsOf: middle)
    // Правая часть уходит в рекурсию (quick_sort(right))
    // Отсортированная правая часть присоединяется к левой и центру
    left.append(contentsOf: (quick_sort(right)))
    
    // Возвращает отсортированный массив
    return left
}

func shell_sort(_ arr: [Double]) -> [Double] {
    var a = arr
    // Берёт шаг равный половине размера массива
    var step = Int(arr.count/2)
    // Пока шаг равен хоть чему-то
    while step > 0 {
    
    }
    return a
}
