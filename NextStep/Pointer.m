//
//  Pointer.m
//  NextStep
//
//  Created by Richard on 4/16/16.
//  Copyright © 2016 Richard. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Pointer.h"

@implementation Pointer

-(void) printAddress {
    int a = 1;
    int arr[] = {25,12};
    
    NSLog(@"address for a is: %x", (unsigned int)&a);
    NSLog(@"address for arr[2] is: %x", (unsigned int)&arr);
}

-(void) printAddressAndValue {
    int var = 215;
    int *ip;
    ip = &var;
    
    NSLog(@"Address of var variable: %x", (unsigned int)&var);
    NSLog(@"Address stored in variable ip: %x", (unsigned int)ip);
    NSLog(@"Value of var stored in ip: %d", *ip);
}

-(void) printNullPointer {
    int *ip = NULL;
    NSLog(@"The value of null pointer ip is: %x", (unsigned int)ip);
}

-(void) incrementIntPointer {
    int var[] = {1, 2, 56};
    int *ptr;
    ptr = var;
    
    for(int i = 0; i<3; i++) {
        NSLog(@"Address of var[%d] = %x", i, (unsigned int)ptr);
        NSLog(@"Value of var[%d] = %d", i, *ptr);
        ptr++;
    }
}

-(void) incrementCharPointer {
    char var[] = {'a', 'b', 'q'};
    char *ptr;
    ptr = var;
    
    for(int i = 0; i<3; i++) {
        NSLog(@"Address of var[%d] = %x", i, (unsigned int)ptr);
        NSLog(@"Value of var[%d] = %c", i, *ptr);
        ptr++;
    }
}

-(void) decrementPointer {
    int var[] = {1, 2, 56};
    int *ptr;
    ptr = &var[2];
    
    for(int i = 2; i>=0; i--) {
        NSLog(@"Address of var[%d] = %x", i, (unsigned int)ptr);
        NSLog(@"Value of var[%d] = %d", i, *ptr);
        ptr--;
    }
}

-(void) comparePointerA:(int *)A withB:(int *)B {
    NSLog(@"pointer A = %x, B = %x", (unsigned int)A, (unsigned int)B);
    bool b = A > B;
    NSLog(@"pointer A and B comparation: %d", b);
}

-(void) pointerArrayWithInt {
    int var[] = {1,2,3};
    int *ptr[3];
    for(int i = 0; i<3; i++) {
        ptr[i] = &var[i];
    }
    
    for(int i=0; i<3; i++) {
        NSLog(@"Value of var[%d] is %d", i, *ptr[i]);
    }
}

-(void) pointerArrayWithChar {
    char *names[] = {
        "Zara Ali",
        "QinJiangbo",
        "ChengYing",
        "Lily"
    };
    
    for(int i=0; i<4; i++) {
        NSLog(@"Value of names[%d] is %s", i, names[i]);
    }
}

-(void) pointToPoint {
    int a = 200000;
    int *ptr, **pptr;
    ptr = &a;
    pptr = &ptr;
    
    NSLog(@"Value of a is %d", a);
    NSLog(@"Value available at ptr: %d", *ptr);
    NSLog(@"Value available at pptr: %d", **pptr);
}

-(double) pointToFunction:(int *)arr size:(int)size {
    int sum = 0;
    double avg = 0.0f;
    
    for(int i=0; i<size; i++) {
        sum += arr[i];
    }
    
    avg = (double)sum / size;
    return avg;
}




@end
