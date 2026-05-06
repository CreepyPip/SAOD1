//
//  sortmod.swift
//  sort
//
//  Created by Семён on 06.04.2026.
//  Copyright © 2026 Семён. All rights reserved.
//

import Foundation

/// Простым выбором сортировка (n^2)
/// Сложность сортировки (O(n))
/// Принимает несортированный массив arr
/// Сортирует по возрастанию
func selection_sort<T: Comparable>(_ arr: [T]) -> [T] {
    var a = arr
    var min = 0
    
    for i in 0..<arr.count - 1 {
        min = i
        for j in i+1..<arr.count {
            if a[j] < a[min] {
                min = j
            }
        }
        a.swapAt(i, min)
    }
    return a
}

/// Пузырчатая сортировка (n^2)
/// Сложность сортировки (O(n))
/// Принимает несортированный массив arr
/// Сортирует по возрастанию
func bubble_sort<T: Comparable>(_ arr: [T]) -> [T] {
    
    // На случай малого массива
    if arr.count <= 1 {return arr}
    
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
/// Сложность сортировки (nlog n)
/// Принимает несортированный массив arr
/// Возвращает сортированный по возрастанию массив
func quick_sort<T: Comparable>(_ arr: [T]) -> [T] {
    // Проверка на массив из одного элемента
    if arr.count <= 1 {return arr}
    
    // Точка опоры
    let pivot = arr[arr.count/2]
    
    var left: [T] = []
    var right: [T] = []
    var middle: [T] = []
    
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

/// Быстрая сортировка (nlog n)
/// Сложность сортировки (O(n))
/// Принимает несортированный массив arr
/// Возвращает сортированный по возрастанию массив
func shell_sort<T: Comparable>(_ arr: [T]) -> [T] {
    var a = arr
    // Берёт шаг равный половине размера массива
    var step = Int(arr.count/2)
    // Чтобы цикл был не бесконечным
    while step > 0 {
        // Для сверки первых элементов и идущих через шаг
        for i in step..<arr.count {
            // Задаём j для первых элементов
            var j = i - step
            // Сверка условия
            while (j >= 0 && a[j] > a[j+step]) {
                a.swapAt(j, j+step)
                j = j-step
            }
        }
        // Уменьшаем шаг
        step = step / 2
    }
    // Возвращаем сортированный массив
    return a
}

/// Сортировка слиянием (nlog n)
/// Общая сложность складывается из 
/// Сложность сортировки (Сложность по памяти: О (n))
/// Принимает несортированный массив arr
/// Возвращает сортированный по возрастанию массив
func merge_sort(_ arr: [Double]) -> [Double] {
    // Проверка, чтобы рекурсия не была бесконечной
    if arr.count <= 1 {return arr}
    // Левый, правый массив
    var left: [Double] = []
    var right: [Double] = []
    // Центральное значение
    let pivot = Int(arr.count/2)
    // Цикл распределения
    // распеределение в 2 цикла
    for i in 0..<arr.count {
        if i < pivot {
            left.append(arr[i])
        } else {
            right.append(arr[i])
        }
    }
    // Отсортировывает рекурсивно левый и правый распределённый массивы и передаёт во вторую функцию
    return merge_sort_in(merge_sort(left), merge_sort(right))
}

/// Вторая часть сортировки слиянием //
/// Принимает левую и правую часть
func merge_sort_in(_ l: [Double],_ r: [Double]) -> [Double] {
    var a: [Double] = []
    var left = l
    var right = r
    
    // Пока левый и правый массив не пустые
    // Складывает 2 отсортированных массива
    while !left.isEmpty && !right.isEmpty {
            if left[0] < right[0] {
                a.append(left[0])
                left.remove(at: 0)
            } else {
                a.append(right[0])
                right.remove(at: 0)
            }
        }
        
    // Остатки левого или правого массива перекидываются в основной
    a.append(contentsOf: left)
    a.append(contentsOf: right)
    
    return a
}
