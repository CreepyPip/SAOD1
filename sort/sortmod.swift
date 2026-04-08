//
//  sortmod.swift
//  sort
//
//  Created by Семён on 06.04.2026.
//  Copyright © 2026 Семён. All rights reserved.
//

import Foundation

func bubble_sort (_ arr: [Double]) -> [Double] {
    var a = arr
    
    for i in 0...arr.count-1 {
        for j in 0...(arr.count-1-i) {
            if j != a.count-1 {
                if a[j] > a[j+1] {
                    a.swapAt(j, j+1)
                }
            }
        }
    }
    
    return a
}

func quick_sort (_ arr: [Double]) -> [Double] {
    if arr.count <= 1 {
        return arr
    }
    
    let pivot = arr[arr.count/2]
    
    var left: [Double] = []
    var right: [Double] = []
    var middle: [Double] = []
    
    for i in 0...arr.count-1 {
        if arr[i] < pivot {
            left.append(arr[i])
        } else if arr[i] > pivot {
            right.append(arr[i])
        } else {
            middle.append(arr[i])
        }
    }
    
    left = quick_sort(left)
    left.append(contentsOf: middle)
    left.append(contentsOf: (quick_sort(right)))
    
    return left
}
