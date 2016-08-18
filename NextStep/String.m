//
//  String.m
//  NextStep
//
//  Created by Richard on 4/16/16.
//  Copyright © 2016 Richard. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "String.h"

@implementation String

-(void)helloWorldStr {
    NSString *str = @"Hello Objective-C!";
    NSLog(@"%@",str);
}

/**
 *  首字母大写
 *
 *  @param word <#word description#>
 */
-(void) capitalizeWord:(NSString *)word {
    NSString *str = [word capitalizedString];
    NSLog(@"%@ -> %@", word, str);
}

-(void) upperCapitalizeWord:(NSString *)word {
    NSString *str = [word uppercaseString];
    NSLog(@"%@ -> %@", word, str);
}

@end
