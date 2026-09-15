//
//  tree.swift
//  tree
//
//  Created by Семён Зайцев on 14.09.2026.
//

import Foundation

class Node<T> {
	// Текущее значение
	var data: T
	// Ссылка на следующие элемент списка
	var left: Node?
	var right: Node?
	
	// Конструктор узла
	init(_ data: T, _ left: Node? = nil,_ right: Node? = nil) {
		self.data = data
		self.left = left
		self.right = right
	}
}

class Tree<T:Comparable> {
	private var Root: Node<T>?
	
	// Вставка элемента
	// Сравнивается с уже вставленными
	func insert(_ element: T) {
		if Root == nil {
			Root = Node(element)
		} else {
			
			var current = Root
			repeat {
				if element <= current!.data {
					if (current?.left == nil){
						current?.left = Node(element)
						break
					}
					current = current?.left
				} else {
					if (current?.right == nil){
						current?.right = Node(element)
						break
					}
					current = current?.right
				}
			} while (current != nil)
		}
	}
	
	// Подтверждает, что число найдено
	func search(_ searchNum: T) -> Bool {
		if Root == nil {
			return false
		}
		
		var current = Root
		
		repeat {
			if current!.data > searchNum {
				current = current?.left
			} else if current!.data < searchNum {
				current = current?.right
			} else {
				return true
			}
		} while (current != nil)
		
		return false
	}
	
	// Удаление элемента
	// Всё что находится по левую сторону от удаляемого, также удаляется
	func pop(_ element: T) {
		if Root != nil {
			if Root!.data == element {
				Root = Root?.right
			} else {
				var current = Root
				repeat {
					if element <= current!.data {
						if (current!.left?.data == element){
							current?.left = current?.left?.right
							break
						}
						current = current?.left
					} else {
						if (current!.right?.data == element){
							current?.right = current?.right?.right
							break
						}
						current = current?.right
					}
				} while (current != nil)
			}
		}
	}
}
