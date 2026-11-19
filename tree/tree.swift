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

/*class TreeBi<T> {
	private var Root: Node<T>?
	
	func insert(_ element: T) {
		if Root == nil {
			Root = Node(element)
		} else {
			var queue = Root
			var current = queue
			
			while (current?.left?.left != nil) {
				//
			}
		}
	}
}*/

class TreeBiS<T:Comparable> {
	private var Root: Node<T>?
	
	// Вставка элемента
	// Сравнивается с уже вставленными
	func insert(_ element: T) {
		if Root == nil {
			Root = Node(element)
		} else {
			
			var current = Root
			repeat {
				if element <= current!.data {  // Если меньше или равен текущему, то переходим левее
					if (current?.left == nil){ // Если левый элемент у текущего пуст, то новый элемент вставляется на это место
						current?.left = Node(element)
						break				   // Прерывание цикла
					}
					current = current?.left	   // Переходим к левому
				} else { 					   // Если больше, то правее
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
	
	// Обход в ширину
	func bfs() -> [T] {
		guard let root = Root else { return [] } // Если ещё нет значений, возвращается пустой массив
		
		// Переменная для ответа
		var result: [T] = []
		// Элементы в очереди
		var queue: [Node<T>] = [root]
		
		// Пока очередь не будет пуста
		while !queue.isEmpty {
			// Добавляем элемент в конечный ответ, убирая из очереди
			let current = queue.removeFirst()
			result.append(current.data)
			
			// Добавляем элементы в очередь, если они существуют
			if let left = current.left   { queue.append(left) }
			if let right = current.right { queue.append(right) }
		}
		return result
	}
	
	// Обход в глубину по левой части
	func dfsLeft() -> [T] {
		guard let root = Root else { return [] }
		
		var result: [T] = []
		var queue: [Node<T>] = [root]
		
		while !queue.isEmpty { // Тут пока всё также, как в bfs
			// Добавляем последний, удаляя из очереди
			let current = queue.removeLast()
			result.append(current.data)
			
			if let left = current.left   { queue.append(left) } 
		}
		return result
	}
	
	// Обход в глубину по правой части
	func dfsRight() -> [T] {
		guard let root = Root else { return [] }
		
		var result: [T] = []
		var queue: [Node<T>] = [root]
		
		while !queue.isEmpty { // Тут пока всё также, как в bfs
			// Добавляем последний, удаляя из очереди
			let current = queue.removeLast()
			result.append(current.data)
			
			if let right = current.right   { queue.append(right) } 
		}
		return result
	}
	
	// Удаление элемента
	func pop(_ element: T) {
		Root = remove(element, Root)
	}
	
	private func remove(_ element: T, _ current: Node<T>?) -> Node<T>? {
		guard var cur = current else { return nil }
		
		if element < cur.data {
			cur.left = remove(element, cur.left)
		} else if element > cur.data {
			cur.right = remove(element, cur.right)
		} else {
			
			if cur.left == nil {
				return cur.right
			}
			if cur.right == nil {
				return cur.left
			}
			
			if let minRight = min(cur.right) {
				cur.data = minRight.data
				cur.right = remove(minRight.data, cur.right)
			}
		}
		
		return cur
	}
	
	private func min(_ current: Node<T>?) -> Node<T>? {
		var cur = current
		while cur?.left != nil {
			cur = cur?.left
		}
		return cur
	}
}
