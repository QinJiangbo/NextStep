//
//  Constants.h
//  NextStep
//
//  Created by Richard on 4/15/16.
//  Copyright © 2016 Richard. All rights reserved.
//

#ifndef Constants_h
#define Constants_h
#define WIDTH 18 /* 就是一个编译前替换文本的宏 */
#define HEIGHT 10

#endif /* Constants_h */

@interface Constants : NSObject

-(void)printNumbersWithInteger: (int) number;

-(void)printNumbersWithFloat:(float)number;

-(void)printNumbersWithChar:(char)number;

-(void)printNumbersWithString:(NSString *)number;

-(void)getSizeWithWidthandHeightInMacro;

-(void)getSizeWithWidthandHeightInConst;

-(void)onlyAccept1AsConstant: (int) constant;

@end