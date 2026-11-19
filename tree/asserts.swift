//
//  asserts.swift
//  tree
//
//  Created by Семён Зайцев on 27.10.2026.
//

import Foundation

func tests() {
	let testTree = TreeBiS<Int>()
	let A: [Int] = [22, 41, 21, 18, 20, 19, 25, 42]
	
	assert(!testTree.search(21))
	for i in 0..<A.count {
		testTree.insert(A[i])
	}
	assert(testTree.search(21))

	// Обходы
	var fsArr = [22, 21, 41, 18, 25, 42, 20, 19]
	let bfsArr = testTree.bfs()
	assert(fsArr == bfsArr) // В ширину
	fsArr = [22, 21, 18]
	var dfsArr = testTree.dfsLeft()
	assert(fsArr == dfsArr)
	fsArr = [22, 41, 42]
	dfsArr = testTree.dfsRight()
	assert(fsArr == dfsArr)
	
	// Удаление
	testTree.pop(21)
	assert(!testTree.search(21))
	testTree.pop(20)
	assert(testTree.search(19))
	
}
