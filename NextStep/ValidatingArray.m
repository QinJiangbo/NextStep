//
//  ValidatingArray.m
//  NextStep
//
//  Created by Richard on 4/23/16.
//  Copyright © 2016 Richard. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ValidatingArray.h"

@implementation ValidatingArray

- (id)init {
    self = [super init];
    if(self) {
        embededArray = [[NSMutableArray alloc] init];
    }
    return self;
}

+ (id)validatingArray {
    return [[self alloc] init];
}

- (unsigned long) count {
    return [embededArray count];
}

- (id)objectAtIndex:(unsigned int)index {
    return [embededArray objectAtIndex:index];
}

- (void) addObject: object {
    [embededArray addObject:object];
}

- (void) replaceObjectAtIndex: (unsigned) index withObject: object {
    [embededArray replaceObjectAtIndex:index withObject:object];
}

- (void) removeLastObject {
    [embededArray removeLastObject];
}

- (void) insertObject:object atIndex: (unsigned) index {
    [embededArray insertObject:object atIndex:index];
}

- (void) removeObjectAtIndex: (unsigned) index {
    [embededArray removeObjectAtIndex:index];
}


@end
