//
//  Arrays.m
//  NextStep
//
//  Created by Richard on 4/16/16.
//  Copyright © 2016 Richard. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Arrays.h"

@implementation Arrays

-(int *) genArrays {
    static int arr[10];
    int i;
    /* set the seed */
    srand(100);
    for(i=0; i<10; i++) {
        arr[i] = rand();
    }
    return arr;
}

-(void) print2DArrays:(double [])arr {
    double *p = arr;
    for(int i = 0; i<5; i++) {
        NSLog(@"element[%d]=%lf", i, *(p+i));
    }
    NSLog(@"Iterat with arr.");
    for(int i = 0; i<5; i++) {
        NSLog(@"element[%d]=%lf", i, *(arr+i));
    }
}

@end