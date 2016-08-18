//
//  Constants.m
//  NextStep
//
//  Created by Richard on 4/15/16.
//  Copyright © 2016 Richard. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Constants.h"

@implementation Constants

const int width = 10;
const int height = 20;

-(void) printNumbersWithInteger:(int)number {
    NSLog(@"current constant is: %d", number);
}

-(void) printNumbersWithFloat:(float)number {
    NSLog(@"current constant is %f", number);
}

-(void) printNumbersWithChar:(char)number {
    NSLog(@"current constant is %c", number);
}

-(void) printNumbersWithString:(NSString *)number {
    NSLog(@"current constant is %@", number);
}

-(void) getSizeWithWidthandHeightInMacro {
    int size = HEIGHT * WIDTH;
    NSLog(@"size = %d", size);
}

-(void) getSizeWithWidthandHeightInConst {
    int size = width * height;
    NSLog(@"size = %d", size);
}

-(void) onlyAccept1AsConstant: (int) constant {
    if(constant == 1) {
        NSLog(@"OK, that's what we need!");
    }
    else {
        NSString *domain = @"com.qinjiangbo.nextstep.Constants.m";
        NSString *desc = NSLocalizedString(@"The input constant is not 1", @"");
        NSDictionary *userInfo = @{NSLocalizedDescriptionKey: desc};
        NSError *error = [NSError errorWithDomain:domain code:-10086 userInfo: userInfo];
        NSLog(@"Error found: %@", error);
    }
    
}

@end





