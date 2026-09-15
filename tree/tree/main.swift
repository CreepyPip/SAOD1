//
//  main.swift
//  tree
//
//  Created by Семён Зайцев on 07.09.2026.
//

import Foundation

let tree = Tree<Int>()

print("Введите кол-во элементов, которое хотите добавить")

var n = readLine()!
while Int(n) == nil {
	print("Введите целое число")
	n = readLine()!
} 

let intn = Int(n)!

for _ in 0..<intn {
	var ending = readLine()!
	
	while Int(ending) == nil {
		print("Введите целое число")
		n = readLine()!
	} 
	
	tree.insert(Int(ending)!)
}


