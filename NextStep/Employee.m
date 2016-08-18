//
//  Employee.m
//  NextStep
//
//  Created by Richard on 4/23/16.
//  Copyright © 2016 Richard. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Employee.h"
#import "NSStringExt.h"

@implementation Employee

-(id) initWithName:(NSString *)name andAge:(NSInteger)age andEducation:(NSString *)education {
    personName = name;
    personAge = age;
    personEducation = education;
    return self;
}

-(void) printPersonInfo {
    NSLog(@"Person info: name[%@], age[%ld], education[%@]", personName, personAge, personEducation);
}

-(void) sayHello {
    NSLog(@"Employee is saying Hello!");
}


-(void) setSerialNum {
    serialNum = arc4random() % 100;
}

-(NSInteger) getSerialNum {
    return serialNum;
}

@end
