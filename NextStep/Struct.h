//
//  Struct.h
//  NextStep
//
//  Created by Richard on 4/16/16.
//  Copyright © 2016 Richard. All rights reserved.
//

#ifndef Struct_h
#define Struct_h


#endif /* Struct_h */

#if DEBUG == 0
#define DebugLog(...)
#elif DEBUG == 1
#define DebugLog(...) NSLog(__VA_ARGS__)
#endif

struct Books {
    __unsafe_unretained NSString *bookName;
    __unsafe_unretained NSString *author;
    __unsafe_unretained NSString *subject;
    int bookId;
};

struct People {
    __unsafe_unretained NSString *name;
    __unsafe_unretained NSString *location;
    int age;
};

typedef struct Books BOOK;

@interface Struct : NSObject

-(void) printStructure;

-(void) printStructureWithBook: (struct Books) book;

-(struct Books) constructBook;

-(void) printStructureWithPeople:(struct People *) people;

-(struct People) constructPeople;

-(struct Books) getBook;

@end
