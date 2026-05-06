//
//  mod.swift
//  List
//
//  Created by Семён Зайцев on 27.04.2026.
//

import Foundation
// Класс списка
// Может быть любого типа данных
class Node <T: Comparable> {
    // Текущее значение
    var data: T
    // Ссылка на следующий элемент списка
    var next: Node?
    
    init(_ data: T, _ next: Node? = nil) {
        self.data = data
        self.next = next
    }
}

class Collection <T: Comparable> {
    private var Head: Node<T>?
public
    // Вставить в начало
    func push_front(_ element: T){
        
    }
    
    // Вставить в конец
    func push_back(_ element: T){
        if Head == nil {
            Head = Node(element)
        } else
        {
            var current = Head
            while current?.next != nil {
                current = current?.next
            }
        
            current?.next = Node(element)
        }
    }
    
    // Вставить элемент в конкретное место
    func insert(_ element: T, index: Int){}
    
    // Удалить первый
    func pop_front(){
        Head = Head?.next
    }
    
    // Удалить последний
    func pop_back(){
        if Head?.next == nil {
            Head = nil
        }
        
        if Head != nil {
            
            var current = Head
            while current?.next?.next != nil {
                current = current?.next
            }
            
            current?.next = nil
        }
    }
    
    // Удалить конкретный элемент
    func remove(_ index: Int){
        var current = Head
        for _ in 0..<index-1 {
            if current?.next == nil {break}
            current = current?.next
        }
        current?.next = current?.next?.next
    }
    
    // Получить кол-во элементов
    func get_size()->Int{
        var current = Head
        if Head == nil {return 0}
        var j = 0
        
        while current?.next != nil {
            j = j + 1
            current = current?.next
        }
        
        return j+1
    }
    
    // Очистить список
    func clear() {
        Head = nil
        while Head?.next != nil {
            Head = Head?.next
        }
        Head = nil
    }
    
    // Получить элемент
    func get_element(_ index: Int) -> T?{
        var current = Head
        
        if Head != nil {
            for _ in 0..<index {
                current = current?.next
                if current?.next == nil {break}
            }
            return current?.data
        }
        print("Отсутствует")
        return nil
    }
    
    // Пустой ли массив
    func isEmpty() -> Bool {
        if Head == nil {
            return true
        } else {return false}
    }
}

