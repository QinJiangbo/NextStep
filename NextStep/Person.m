//
//  Person.m
//  NextStep
//
//  Created by Richard on 4/23/16.
//  Copyright © 2016 Richard. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"

@implementation Person

@synthesize personAge;
@synthesize personName;

-(id) initWithName:(NSString *)name andAge:(NSInteger)age {
    personName = name;
    personAge = age;
    return self;
}

-(void) printPersonInfo {
    NSLog(@"Person info: name[%@], age[%ld]", personName, personAge);
}

-(void) sayHello {
    NSLog(@"Person is saying Hello!");
}

@end