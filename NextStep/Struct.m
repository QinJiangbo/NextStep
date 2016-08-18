//
//  Struct.m
//  NextStep
//
//  Created by Richard on 4/16/16.
//  Copyright © 2016 Richard. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Struct.h"

@implementation Struct

-(void) printStructure {
    struct Books book1;
    struct Books book2;
    
    book1.author = @"Richard";
    book1.bookId = 20160417;
    book1.bookName = @"Why I live?";
    book1.subject = @"Social Scince";
    
    book2.author = @"Amy";
    book2.bookId = 20160417;
    book2.bookName = @"Hello Kitty";
    book2.subject = @"English";
    
    NSLog(@"author of book1 is %@", book1.author);
    NSLog(@"bookId of book1 is %d", book1.bookId);
    NSLog(@"bookName of book1 is %@", book1.bookName);
    NSLog(@"subject of book1 is %@", book1.subject);
    
    NSLog(@"author of book2 is %@", book2.author);
    NSLog(@"bookId of book2 is %d", book2.bookId);
    NSLog(@"bookName of book2 is %@", book2.bookName);
    NSLog(@"subject of book2 is %@", book2.subject);
    
}

-(struct Books) constructBook {
    struct Books book;
    book.author = @"QinJiangbo";
    book.bookId = 20160417;
    book.bookName = @"Never Give Up!";
    book.subject = @"Social Scince";
    return book;
}

/**
 *  普通结构体采用.去访问元素
 *
 *  @param book <#book description#>
 */
-(void) printStructureWithBook:(struct Books) book {
    NSLog(@"author of book is %@", book.author);
    NSLog(@"bookId of book is %d", book.bookId);
    NSLog(@"bookName of book is %@", book.bookName);
    NSLog(@"subject of book is %@", book.subject);
}

-(struct People) constructPeople {
    struct People people;
    people.name = @"Richard";
    people.location = @"WuHan";
    people.age = 15;
    return people;
}

/**
 *  指针对象采用->去访问结构体的元素
 *
 *  @param people <#people description#>
 */
-(void) printStructureWithPeople:(struct People *) people {
    NSLog(@"name of people is %@", people->name);
    NSLog(@"location of people is %@", people->location);
    NSLog(@"age of people is %d", people->age);
}

-(struct Books) getBook {
    BOOK book;
    book.author = @"QinJiangbo";
    book.bookId = 20160417;
    book.bookName = @"Never Give Up!";
    book.subject = @"Social Scince";
    NSLog(@"author of book is %@", book.author);
    NSLog(@"bookId of book is %d", book.bookId);
    NSLog(@"bookName of book is %@", book.bookName);
    NSLog(@"subject of book is %@", book.subject);
    return book;
}

@end
