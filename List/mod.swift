//
//  mod.swift
//  List
//
//  Created by Семён Зайцев on 27.04.2026.
//

import Foundation
// Класс списка
// Может быть любого типа данных
class Node<T> {
    // Текущее значение
    var data: T
    // Ссылка на следующий элемент списка
    var next: Node?
    
    // Конструктор узла
    init(_ data: T, _ next: Node? = nil) {
        self.data = data
        self.next = next
    }
}

class List<T> {
    private var Head: Node<T>?
    private lazy var Tail = Head?.next
public
    // Вставить в начало
    func push_front(_ element: T){
        let newNode = Node(element)
        newNode.next = Head
        Head = newNode
    }
    
    // Вставить в конец
    func push_back(_ element: T){
        // Проверка на пустой список
        if Head == nil {
            // Голова принимает элемент
            Head = Node(element)
            // Если следующий элемент пустой, он принимает элемент
        } else if Head?.next == nil{
            Head?.next = Node(element)
            // Отмечаем последний элемент
            Tail = Head?.next
        } else
        {
        // Переписываем следующий элемент после хвоста
        Tail?.next = Node(element)
        // Следующий элемент - хвост
        Tail = Tail?.next
        }
    }
    
    // Вставить элемент в конкретное место
    func insert(_ element: T,_ index: Int){
        // Добавление, если первый элемент
        if index == 0 {push_front(element)} else {
            let newNode = Node(element)
            var current = Head
            
            // Добираемся до места вставки
            for _ in 0..<index-1 {
                current = current?.next
            }
            
            // Вставляет элемент
            newNode.next = current?.next
            current?.next = newNode
        }
    }
    
    // Удалить первый
    func pop_front(){
        // Голова переходит на следующий элемент
        Head = Head?.next
    }
    
    // Удалить последний
    func pop_back(){
        // Проверка на пустой список
        if Head?.next == nil {
            Head = nil
        } else {
            
            var current = Head
            // Продвигаемся по списку
            while current?.next?.next != nil {
                current = current?.next
            }
            
            // Чистим следующий элемент
            current?.next = nil
            // Текущее значение хвост
            Tail = current
        }
    }
    
    // Удалить конкретный элемент
    func remove(_ index: Int){
        var current = Head
        // Продвигаемся в удаляемому элементу
        for _ in 0..<index-1 {
            if current?.next == nil {break}
            current = current?.next
        }
        // Смещаем элемент
        current?.next = current?.next?.next
    }
    
    // Получить кол-во элементов
    func get_size()->Int{
        var current = Head
        // Проверка на пустой список
        if Head == nil {return 0}
        var j = 1
        
        // Продвигаемся по списку
        while current?.next != nil {
            // Подсчёт иттераций
            j = j + 1
            current = current?.next
        }
        
        // Возвращаем кол-во иттераций
        return j+1
    }
    
    // Очистить список
    func clear() {
        // Очищаем голову
        Head = nil
        // Очищаем каждый элемент
        while Head?.next != nil {
            Head = Head?.next
        }
        Head = nil
        Tail = Head
    }
    
    // Получение первогочй элемента
    func get_front() -> T? {
        // Возвращает голову
        return Head?.data
    }
    
    // Получение последнего элемента
    func get_back() -> T? {
        // Возвращает хвост
        return Tail?.data
    }
    
    // Получить элемент
    func get_element(_ index: Int) -> T?{
        var current = Head
        
        // Проверка на пустой массив
        if Head != nil {
            // Продвигаемся по списку
            for _ in 0..<index {
                current = current?.next
                if current?.next == nil {break}
            }
            return current?.data
        }
        return nil
    }
    
    // Пустой ли список
    func isEmpty() -> Bool {
        // Если голова пустая, то список пуст
        if Head == nil {
            return true
        } else {return false}
    }
}

