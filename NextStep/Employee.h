//
//  Employee.h
//  NextStep
//
//  Created by Richard on 4/23/16.
//  Copyright © 2016 Richard. All rights reserved.
//

#ifndef Employee_h
#define Employee_h


#endif /* Employee_h */

#import "Person.h"

@interface Employee : Person
{
    NSString *personEducation;
}

-(id) initWithName: (NSString *) name andAge: (NSInteger) age andEducation: (NSString *) education;

-(void) printPersonInfo;

-(void) sayHello;

-(void) setSerialNum;

-(NSInteger) getSerialNum;

@end


