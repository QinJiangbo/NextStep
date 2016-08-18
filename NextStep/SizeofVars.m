//
//  SizeofVars.m
//  NextStep
//
//  Created by Richard on 4/15/16.
//  Copyright © 2016 Richard. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SizeofVars.h"

@implementation SizeofVars

/**
 *  print the logs with the size of type
 *
 *  @param name <#name description#>
 *  @param age  <#age description#>
 */
-(void) printLogsWithName:(NSString *)name andSize:(int)age {
    NSLog(@"name=%@, size=%d \n", name, age);
}

/**
 *  something to get
 */
-(void)getSomething {
    NSLog(@"al ha~, got something!");
}

/**
 *  caculate two nums
 *
 *  @param num1
 *  @param num2
 *
 *  @return the sum of num1 and num2
 */
-(int) caculateNumberWithInts:(int)num1 andNum2:(int)num2 {
    int sum = 0;
    sum = num1 + num2;
    return sum;
}

@end
