//
//  mod.swift
//  stack
//
//  Created by Семён Зайцев on 29.05.2026.
//

import Foundation

class Stack<T> {
    // Переменная, которая отвечает за стек
    private let arr = DynamicArray<T>()
    
    public
    // Добавление элемента в стек
    func push(_ element: T) {
        arr.push_back(element)
        arr.resize(arr.get_size())
    }
    
    // Получение последнего элемента
    func get_element() -> T? {
        return arr.get_element(arr.get_size()-1)
    }
    
    // Удаление последнего элемента
    func pop() {
        arr.pop_back()
    }
    
    // Получение размера
    func size() -> Int {
        return arr.get_size()
    }
    
    // Проверка на пустой стек
    func is_Empty() -> Bool {
        if get_element() == nil {return true}
        else {return false}
    }
    
    // Очистка стека
    func clear() {
        return arr.clear()
    }
}
