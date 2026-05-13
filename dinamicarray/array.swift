//
//  array.swift
//  dinamicarray
//
//  Created by Семён Зайцев on 09.05.2026.
//

import Foundation

class DynamicArray<T> {
private
    var arr: [T?] = []
    var capacity = 1
    var size: Int {
        return arr.count
    }
public
    func addstart(_ element: T) {
        addend(element)
        for i in (0..<size-1).reversed() {
            arr[i+1] = arr[i]
        }
        arr[0] = element
    }
    
    func addend(_ element: T){
        if size + 1 <= capacity {
            arr.append(element)
        } else {
            //var a: [T] = [arr, nil]
        }
    }
    
    func resize (_ count: Int) {
        if count >= 0 {
            capacity = count
        } else {
            print("Памяти не может быть выделено меньше 0")
            exit(0)
        }
    }
    
    func clear(){
        capacity = 0
        let a:[T] = []
        arr = a
    }
    
    func getElement (_ index: Int) -> T? {
        if index <= size-1 {
            return arr[index]
        }
        return nil
    }
    
    func getSize () -> Int {
        return arr.count
    }
    
    func getCapacity () -> Int {
        return capacity
    }
    
    func popend() {
        var a: [T] = []
        arr.remove(at: size-1)
        /*for i in 0..<size-1 {
            a[i] = arr[i]
        }
        arr = a*/
    }
}
