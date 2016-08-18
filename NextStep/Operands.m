//
//  Operands.m
//  NextStep
//
//  Created by Richard on 4/16/16.
//  Copyright © 2016 Richard. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Operands.h"

@implementation Operands

-(void) bitOperateWithA:(unsigned int)A andB:(unsigned int)B andOperands:(NSString *)op {
    int result = 0;
    if([op isEqualToString:@"&"]) {
        result = A & B;
    }
    if([op isEqualToString:@"|"]) {
        result = A | B;
    }
    if([op isEqualToString:@"^"]) {
        result = A ^ B;
    }
    if([op isEqualToString:@"~"]) {
        result = ~A;
    }
    if([op isEqualToString:@">>"]) {
        result = A >> B;
    }
    if([op isEqualToString:@"<<"]) {
        result = A << B;
    }
    NSLog(@"result of A[%X] %@ B[%X] is %d", A, op, B, result);
}

@end
