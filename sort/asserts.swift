//
//  asserts.swift
//  sort
//
//  Created by Семён on 08.04.2026.
//  Copyright © 2026 Семён. All rights reserved.
//

import Foundation

func tests() {
    let arr: [Double] = [13, 12.789, 8.1234, -382.13, -123.21, -111111.111]
    let sortarr = bubble_sort(arr)
    assert(sortarr == [-111111.111, -382.13, -123.21, 8.1234, 12.789, 13])
}
