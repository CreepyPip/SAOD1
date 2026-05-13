//
//  main.swift
//  dinamicarray
//
//  Created by Семён Зайцев on 09.05.2026.
//

import Foundation

tests()

let arr = DynamicArray<Double>()

print("Введите размер массива")
var n = Int(readLine()!)!

arr.resize(n)

print("Введите \(n) элементов")
for _ in 0..<n {
    arr.addend(Double(readLine()!)!)
}

print("Удаление последнего элемента")
arr.popend()

print("Вывод массива")
for i in 0..<n {
    print(arr.getElement(i) ?? "nil")
}

print("Добавление первого элемента элемента")
arr.addstart(133)

print("Вывод массива")
for i in 0..<n {
    print(arr.getElement(i) ?? "nil")
}
