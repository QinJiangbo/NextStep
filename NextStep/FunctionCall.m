//
//  FunctionCall.m
//  NextStep
//
//  Created by Richard on 4/16/16.
//  Copyright © 2016 Richard. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "FunctionCall.h"

@implementation FunctionCall

-(void) callByValue:(int)num {
    num++;
    NSLog(@"num is %d", num);
}

-(void) callByReference:(int *)num {
    *num = 13;
    NSLog(@"num by ref is: %d", *num);
}

-(void) calculateWithBlock:(int)num1 andNum2:(int)num2 {
    int (^addTwoNums) (int, int) = ^(int num1, int num2){
        return num1 + num2;
    };
    NSLog(@"using blocks: num1 + num2 = %d", addTwoNums(num1, num2));
}

@end
