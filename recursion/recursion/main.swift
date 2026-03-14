//
//  main.swift
//  recursion
//
//  Created by Семён on 06.03.2026.
//  Copyright © 2026 Семён Зайцев. All rights reserved.
//
// Найти НОД (наибольший общий делитель) двух натуральных чисел.

import Foundation

// Тесты
assert(gcd(48, 18) == 6)
assert(gcd(12, 15) == 3)


print("Введите 2 значения: ")
let a = Int(readLine()!)
let b = Int(readLine()!)


print("Наибольший общий делитель: ", gcd(a!, b!))
