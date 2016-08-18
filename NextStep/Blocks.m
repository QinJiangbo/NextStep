//
//  Blocks.m
//  NextStep
//
//  Created by Richard on 4/16/16.
//  Copyright © 2016 Richard. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Blocks.h"

@implementation Blocks

-(void) voidTypeBlock {
    void(^printHello)(NSString *) = ^(NSString *name) {
        NSLog(@"Hello, %@!", name);
    };
    printHello(@"Richard");
}

-(void) intTypeBlock {
    int(^multiplyNums)(int, int) = ^(int num1, int num2) {
        int factory = num1 * num2;
        return factory;
    };
    NSLog(@"The factory of num1 and num2 is: %d", multiplyNums(6, 7));
}

-(void) constructBlock {
    typedef bool (^isMale)(int);
    isMale male = ^(int num) {
        bool flag = true;
        flag = num == 1 ? true : false;
        return flag;
    };
    NSLog(@"People with 1 is male, %@", male(1) ? @"True!" : @"False!");
}

-(void) defineBlock1 {
    int a = 10, b = 15;
    typedef int (^addNums)(void);
    addNums add = ^{
        return a + b;
    };
    NSLog(@"the sum of a and b is: %d", add());
    a = 15, b = 16;
    NSLog(@"the sum of a and b is: %d", add());
}

-(void) defineBlock2 {
    static int a=15, b=17;
    typedef int (^addNums)(void);
    addNums add = ^{
        return a + b;
    };
    NSLog(@"the sum of a and b is: %d", add());
    a = 18; b = 20;
    NSLog(@"the sum of a and b is: %d", add());
    
}

@end
