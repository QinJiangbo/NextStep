
//
//  FunctionCall.h
//  NextStep
//
//  Created by Richard on 4/16/16.
//  Copyright © 2016 Richard. All rights reserved.
//

#ifndef FunctionCall_h
#define FunctionCall_h


#endif /* FunctionCall_h */

@interface FunctionCall : NSObject

-(void) callByValue: (int)num;

-(void) callByReference: (int *)num;

-(void) calculateWithBlock: (int)num1 andNum2: (int)num2;

@end
