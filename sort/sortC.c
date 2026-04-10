//
//  sortC.c
//  sort
//
//  Created by Семён on 08.04.2026.
//  Copyright © 2026 Семён. All rights reserved.
//

#include "sortC.h"

double* c_bubble_sort(double* arr, int size) {
    for (int i = 0; i < size - 1; i++) {
        for (int j = 0; j < size - i - 1; j++) {
            if (arr[j] > arr[j + 1]) {
                double arrswap = arr[j+1];
                arr[j+1] = arr[j];
                arr[j] = arrswap;
            }
        }
    }
    return arr;
}
