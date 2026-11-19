//
//  main.swift
//  tree
//
//  Created by Семён Зайцев on 07.09.2026.
//

import Foundation

func isNot(_ n: String) -> String{
	var num = n
	while Int(num) == nil {
		print("Введите целое число")
		num = readLine()!
	} 
	return num
}

tests()

let tree = TreeBiS<Int>()

print("Введите кол-во элементов, которое хотите добавить")

var n = readLine()!
n = isNot(n)

let intn = Int(n)!

print("Введите значения")
for _ in 0..<intn {
	var ending = readLine()!
	
	ending = isNot(ending)
	
	tree.insert(Int(ending)!)
}

print("Введите число, которое хотите найти")

var searching = readLine()!

searching = isNot(searching)

if tree.search(Int(searching)!) {
	print("Найдено")
} else {
	print("Не найдено")
}

print("Обход в ширину")
print(tree.bfs())

print("Обход в глубину")
print(tree.dfsLeft())

/*print("Введите число, которое хотите удалить")

var delete = readLine()!

delete = isNot(delete)
tree.pop(Int(delete)!)

if tree.search(Int(delete)!) {
	print("Найдено")
} else {
	print("Не найдено")
}

print("Введите число, которое хотите найти")

searching = readLine()!

searching = isNot(searching)

if tree.search(Int(searching)!) {
	print("Найдено")
} else {
	print("Не найдено")
}
*/
