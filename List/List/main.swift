//
//  main.swift
//  List
//
//  Created by Семён Зайцев on 27.04.2026.
//

import Foundation

print("Введите количество")

let n = Int(readLine()!)!
let list = Collection<Double>()

print("Введите \(n) элементов")

for _ in 0..<n {
    list.push_back(Double(readLine()!)!)
}

print("Удаляется последний элемент (\(list.get_element(n))")

list.pop_back()

for i in 0..<n-1 {
    print(list.get_element(i))
}

print("Удаляется первый элемент (\(list.get_element(0)))")
list.pop_front()

for i in 0..<n-2 {
    print(list.get_element(i))
}

print("Введите место элемента, который нужно удалить")
var nd = Int(readLine()!)! - 1

print("Удаляется средний элемент (\(list.get_element(nd))")
list.remove(nd)

for i in 0..<n-3 {
    print(list.get_element(i))
}

if list.isEmpty() {
    print("Список пуст")
} else {print("В списке есть элементы")}

print("Количество элементов в списке", list.get_size())

print("Удаление списка")
list.clear()

if list.isEmpty() {
    print("Список пуст")
} else {print("В списке есть элементы")}
