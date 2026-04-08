//
//  sortmod.h
//  sort
//
//  Created by Семён on 08.04.2026.
//  Copyright © 2026 Семён. All rights reserved.
//
//
//  sortmod.h
//  sort
//
//  Created by Семён on 08.04.2026.
//  Copyright © 2026 Семён. All rights reserved.
//

#ifndef sortmod_h
#define sortmod_h

#import <Foundation/Foundation.h> // Обязательно добавьте это!

@interface SortMod : NSObject

+ (NSArray<NSNumber *> *)bubbleSortC:(NSArray<NSNumber *> *)arr;
+ (NSArray<NSNumber *> *)quickSortC:(NSArray<NSNumber *> *)arr;

@end

#endif /* sortmod_h */ // Добавьте эту строку
