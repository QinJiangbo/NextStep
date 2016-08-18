//
//  Pointer.h
//  NextStep
//
//  Created by Richard on 4/16/16.
//  Copyright © 2016 Richard. All rights reserved.
//

#ifndef Pointer_h
#define Pointer_h


#endif /* Pointer_h */

@interface Pointer : NSObject

-(void) printAddress;

-(void) printAddressAndValue;

-(void) printNullPointer;

-(void) incrementIntPointer;

-(void) incrementCharPointer;

-(void) decrementPointer;

-(void) comparePointerA: (int *)A withB: (int *)B;

-(void) pointerArrayWithInt;

-(void) pointerArrayWithChar;

-(void) pointToPoint;

-(double) pointToFunction: (int *)arr size: (int) size;

@end