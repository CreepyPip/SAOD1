//
//  main.swift
//  sort
//
//  Created by Семён on 06.04.2026.
//  Copyright © 2026 Семён. All rights reserved.
//

import Foundation

var array: [Double] = []
var arrayB: [Double] = []
var arrayC: [Double] = []

for _ in 0...999 {
    array.append(Double.random(in: -3210...3210))
}

var start = DispatchTime.now()
for _ in 0...999 {
    arrayB = bubble_sort(array)
}
var end = DispatchTime.now()

var time = Double(end.uptimeNanoseconds - start.uptimeNanoseconds)

print("\nСортированный массив(Bubble):")
/*for i in 0...array.count-1 {
    print(String(format: "%.2f", arrayB[i]))
}*/

print("\nВремя(ms): \(time/1000/1000)")

start = DispatchTime.now()
for _ in 0...999 {
    arrayC = quick_sort(array)
}
end = DispatchTime.now()

time = Double(end.uptimeNanoseconds - start.uptimeNanoseconds)

print("\nСортированный массив(quick):")
/*for i in 0...array.count-1 {
    //print(String(format: "%.2f", arrayC[i]))
}*/

print("\nВремя(ms): \(time/1000/1000)")
