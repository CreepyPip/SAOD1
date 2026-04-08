//
//  main.swift
//  recursion
//
//  Created by Семён on 06.03.2026.
//  Copyright © 2026 Семён Зайцев. All rights reserved.
//
// Найти НОД (наибольший общий делитель) двух натуральных чисел.

import Foundation

/// Тесты функции с рекурсией
assert(gcd(48, 18) == 6)
assert(gcd(12, 15) == 3)
assert(gcd(31, 2) == 1)
/// Тесты функции без рекурсии
assert(gcdNoRec(48, 18) == 6)
assert(gcdNoRec(12, 15) == 3)
assert(gcdNoRec(31, 2) == 1)

print("Введите 2 значения: ")
let a = Int(readLine()!)
let b = Int(readLine()!)

/// Подсчёт времени работы функции с рекурсией
var start = DispatchTime.now()
var res = gcd(a!, b!)
var end = DispatchTime.now()
var nanoTime = Double(end.uptimeNanoseconds - start.uptimeNanoseconds)

/// Вывод значения
print("Наибольший общий делитель: ", res)
/// Вывод времени работы функции
print("Время выполнения функции с рекурсией: ", nanoTime)

/// Подсчёт времени работы функции без рекурсии
start = DispatchTime.now()
res = gcdNoRec(a!, b!)
end = DispatchTime.now()
nanoTime = Double(end.uptimeNanoseconds - start.uptimeNanoseconds)

/// Вывод значения
print("Наибольший общий делитель: ", res)
/// Вывод времени работы функции
print("Время выполнения функции без рекурсии: ", nanoTime)

