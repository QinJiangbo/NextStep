//
//  PersonUseProtocal.m
//  NextStep
//
//  Created by Richard on 4/23/16.
//  Copyright © 2016 Richard. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PersonUseProtocal.h"

@implementation PersonUseProtocal

-(NSString *) printHello {
    return @"Hello!";
}

-(NSString *) toString {
    return @"Hello protocal!";
}

-(NSInteger) addNum1:(NSInteger)num1 withNum2:(NSInteger)num2 {
    return num1 + num2 * 2;
}


@end