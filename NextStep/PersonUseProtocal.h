//
//  PersonUseProtocal.h
//  NextStep
//
//  Created by Richard on 4/23/16.
//  Copyright © 2016 Richard. All rights reserved.
//

#ifndef PersonUseProtocal_h
#define PersonUseProtocal_h


#endif /* PersonUseProtocal_h */
#import "Person.h"
#import "NSProtocal.h"

@interface PersonUseProtocal : Person<NSProtocal>

-(NSString *) printHello;

@end
