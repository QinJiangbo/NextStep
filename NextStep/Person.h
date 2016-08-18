//
//  Person.h
//  NextStep
//
//  Created by Richard on 4/23/16.
//  Copyright © 2016 Richard. All rights reserved.
//

#ifndef Person_h
#define Person_h


#endif /* Person_h */

@interface Person : NSObject
{
    NSString *personName;
    NSInteger personAge;
}

@property(nonatomic, readwrite) NSString *personName;
@property(nonatomic, readwrite) NSInteger personAge;

-(id) initWithName: (NSString *) name andAge: (NSInteger) age;

-(void) printPersonInfo;

-(void) sayHello;


@end
