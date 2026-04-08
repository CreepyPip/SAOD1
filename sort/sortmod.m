//
//  sortmod.m
//  sort
//
//  Created by Семён on 08.04.2026.
//  Copyright © 2026 Семён. All rights reserved.
//

#import "sortmod.h"

@implementation SortMod

+ (NSArray<NSNumber *> *)bubbleSortC:(NSArray<NSNumber *> *)arr {
    if (arr.count <= 1) return arr;
    
    NSMutableArray<NSNumber *> *a = [arr mutableCopy];
    NSUInteger n = a.count;
    
    for (NSUInteger i = 0; i < n; i++) {
        // Использован безопасный цикл до n - 1 - i
        for (NSUInteger j = 0; j < n - 1 - i; j++) {
            if ([a[j] doubleValue] > [a[j + 1] doubleValue]) {
                [a exchangeObjectAtIndex:j withObjectAtIndex:j + 1];
            }
        }
    }
    return [a copy];
}

+ (NSArray<NSNumber *> *)quickSortC:(NSArray<NSNumber *> *)arr {
    if (arr.count <= 1) return arr;
    
    double pivot = [arr[arr.count / 2] doubleValue];
    
    NSMutableArray<NSNumber *> *left = [NSMutableArray array];
    NSMutableArray<NSNumber *> *middle = [NSMutableArray array];
    NSMutableArray<NSNumber *> *right = [NSMutableArray array];
    
    for (NSNumber *number in arr) {
        double value = [number doubleValue];
        if (value < pivot) {
            [left addObject:number];
        } else if (value > pivot) {
            [right addObject:number];
        } else {
            [middle addObject:number];
        }
    }
    
    // Рекурсия и сборка результата
    NSMutableArray<NSNumber *> *result = [NSMutableArray array];
    [result addObjectsFromArray:[self quickSortC:[left copy]]];
    [result addObjectsFromArray:middle];
    [result addObjectsFromArray:[self quickSortC:[right copy]]];
    
    return [result copy];
}

@end
