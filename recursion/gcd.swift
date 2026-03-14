//
//  gcd.swift
//  recursion
//
//  Created by Семён on 06.03.2026.
//  Copyright © 2026 Семён. All rights reserved.
//
// Модуль функции НОД

import Foundation

func gcd(_ a: Int, _ b: Int) -> Int {

    // Проверка на 0
    if a == 0 || b == 0 {
        print("На ноль делить нельзя")
        exit(1)
    }
    
    var min = 0
    var max = 0
    
    // Проверка на большее число
    if a > b {
        min = b
        max = a
    }
    else {
        min = a
        max = b
    }

    // Если остаток от деления не равен 0, то функция вызывает себя же
    if (max % min != 0)  {
        min = gcd(min, max % min)
    }
    
    // Выводит наименьший общий делитель
    return min
}
