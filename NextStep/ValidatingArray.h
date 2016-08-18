//
//  ValidatingArray.h
//  NextStep
//
//  Created by Richard on 4/23/16.
//  Copyright © 2016 Richard. All rights reserved.
//

#ifndef ValidatingArray_h
#define ValidatingArray_h


#endif /* ValidatingArray_h */
#import <Foundation/Foundation.h>

@interface ValidatingArray : NSMutableArray
{
    NSMutableArray *embededArray;
}

+ validatingArray;
- init;
- (unsigned long) count;
- objectAtIndex: (unsigned) index;
- (void) addObject: object;
- (void) replaceObjectAtIndex: (unsigned) index withObject: object;
- (void) removeLastObject;
- (void) insertObject:object atIndex: (unsigned) index;
- (void) removeObjectAtIndex: (unsigned) index;

@end
