//
//  main.swift
//  sort
//
//  Created by Семён on 06.04.2026.
//  Copyright © 2026 Семён. All rights reserved.
//

import Foundation

tests()

var array: [Double] = []
var arrayB: [Double] = []
var arrayC: [Double] = []
var arrayD: [Double] = []
var arrayE: [Double] = []

var startall = DispatchTime.now()

// При массиве в 10 элементов bubble работает 3.246 миллисекунды, quick 30.16 миллисекунд
// При проверке на другом устройстве показало: Bubble - 60 ms, quick - 47 ms, shell - 31 ms
// При массиве в 1000 элементов bubble работает 24.667 секунды, quick 3.26 секунд
// При проверке на другом устройстве показало: Bubble - 450 s, quick - 9.6 s, shell - 7.2 ms
// При массиве в 10000 элементов bubble работает 2449 секунд(почти 41 минута), quick 28.278 секунд
for _ in 0...9 {
    array.append(Double.random(in: -3210...3210))
}

let ccount = Int32(array.count)
var start = DispatchTime.now()
for _ in 0...999 {
    arrayB = bubble_sort(array)
    /*array.withUnsafeMutableBufferPointer{buffer in
        let bufB = c_bubble_sort(buffer.baseAddress, ccount)
        arrayB = Array(UnsafeBufferPointer(start: bufB, count: Int(ccount)))
    }*/
    
}
var end = DispatchTime.now()

var time = Double(end.uptimeNanoseconds - start.uptimeNanoseconds)

//print("Сортированный массив(Bubble):")
for i in 0...array.count-1 {
    //print(String(format: "%.2f", arrayB[i]))
}

print("\nВремя Bubble(ms): \(time/1000/1000)")

start = DispatchTime.now()
for _ in 0...999 {
    arrayC = quick_sort(array)
}
end = DispatchTime.now()

time = Double(end.uptimeNanoseconds - start.uptimeNanoseconds)

//print("\nСортированный массив(quick):")
/*for i in 0...array.count-1 {
    print(String(format: "%.2f", arrayC[i]))
}*/

print("\nВремя Quick(ms): \(time/1000/1000)")

start = DispatchTime.now()
for _ in 0...999 {
    arrayD = shell_sort(array)
    
}
end = DispatchTime.now()
time = Double(end.uptimeNanoseconds - start.uptimeNanoseconds)

/*print("\nСортированный массив(shell):")
for i in 0...array.count-1 {
 print(String(format: "%.2f", arrayD[i]))
 }*/

print("\nВремя Shell(ms): \(time/1000/1000)")

start = DispatchTime.now()
for _ in 0...999 {
    arrayE = merge_sort(array)
}
end = DispatchTime.now()
time = Double(end.uptimeNanoseconds - start.uptimeNanoseconds)

/*for i in 0..<arrayE.count {
    print(arrayE[i])
}*/

print("\nВремя Merge(ms): \(time/1000/1000)")

var endall = DispatchTime.now()

var timeall = Double(endall.uptimeNanoseconds - startall.uptimeNanoseconds)

print("Общее время \(timeall)")
