//
//  DataTypes.m
//  NextStep
//
//  Created by Richard on 4/16/16.
//  Copyright © 2016 Richard. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "DataTypes.h"

@implementation DataTypes

-(NSNumber *) multiplyA:(NSNumber *)A withB:(NSNumber *)B {
    float num1 = [A floatValue];
    float num2 = [B floatValue];
    float product = num1 * num2;
    NSNumber *result = [NSNumber numberWithFloat:product];
    NSLog(@"result is : %@", [result stringValue]);
    return result;
}

@end