//
//  main.swift
//  stack
//
//  Created by Семён Зайцев on 29.05.2026.
//

import Foundation

tests()

let stack = Stack<Double>()

print("Введите кол-во элементов")
var a = Int(readLine()!)!

print("Введите \(a) элементов")
for _ in 0..<a {
    stack.push(Double(readLine()!)!)
}

print("Последний элемент", stack.get_element()!)

stack.pop()
print("Удаление последнего элемента")
print("Элементов в стеке", stack.size())
print("Последний элемент", stack.get_element()!)

if stack.is_Empty() {
    print("Стек пуст")
} else {
    print("Стек не пуст")
    stack.clear()
    print("Очистка стека")
    if stack.is_Empty() {}
}

if stack.is_Empty() {
    print("Стек пуст")
} else {
    print("Стек не пуст")
}
