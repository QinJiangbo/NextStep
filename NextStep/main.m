//
//  main.m
//  NextStep
//
//  Created by Richard on 4/14/16.
//  Copyright © 2016 Richard. All rights reserved.
//

#undef DEBUG
#define DEBUG 0

#import <Foundation/Foundation.h>
#import "SizeofVars.h"
#import "Constants.h"
#import "Operands.h"
#import "FunctionCall.h"
#import "Blocks.h"
#import "DataTypes.h"
#import "Arrays.h"
#import "Pointer.h"
#import "String.h"
#import "Struct.h"
#import "Person.h"
#import "Employee.h"
#import "NSString.h"
#import "NSUseProtocal.h"
#import "PersonUseProtocal.h"
#import "BigBoss.h"
#import "ValidatingArray.h"

#define message(a, b) \
    NSLog(@#a " and " #b ": we will find you!")

int main(int argc, const char * argv[]) {
    
    @autoreleasepool {
    
        SizeofVars *sizeofVars = [[SizeofVars alloc]init];
        [sizeofVars printLogsWithName:@"int" andSize: sizeof(int)];
        [sizeofVars printLogsWithName:@"float" andSize:sizeof(float)];
        [sizeofVars printLogsWithName:@"long" andSize:sizeof(long)];
        [sizeofVars printLogsWithName:@"double" andSize:sizeof(double)];
        
        Constants *constant = [[Constants alloc]init];
        [constant printNumbersWithInteger:0x11];
        [constant printNumbersWithInteger:077];
        [constant printNumbersWithInteger:15];
        [constant printNumbersWithInteger:0xFeeL];
        [constant printNumbersWithInteger:32u];
        [constant printNumbersWithInteger:32L];
        
        [constant printNumbersWithFloat:3.2];
        [constant printNumbersWithFloat:510E-1];
        
        [constant printNumbersWithChar:'\a'];
        [constant printNumbersWithChar:'\n'];
        [constant printNumbersWithChar:'\t'];
        
        [constant printNumbersWithString:@"hello world!"];
        [constant printNumbersWithString:@"hello \n\n world!"];
        
        [constant getSizeWithWidthandHeightInMacro];
        [constant getSizeWithWidthandHeightInConst];
        
        Operands *operands = [[Operands alloc]init];
        [operands bitOperateWithA:1 andB:1 andOperands:@"&"];
        [operands bitOperateWithA:60 andB:13 andOperands:@"&"];
        [operands bitOperateWithA:60 andB:13 andOperands:@"|"];
        [operands bitOperateWithA:60 andB:13 andOperands:@"^"];
        [operands bitOperateWithA:60 andB:11 andOperands:@"~"];
        [operands bitOperateWithA:60 andB:3 andOperands:@">>"];
        [operands bitOperateWithA:60 andB:3 andOperands:@"<<"];
        
        int a = 16;
        int* point = &a;
        NSLog(@"&a is %p \n", &a);
        NSLog(@"*point is %d \n", *point);
        a = 14;
        NSLog(@"&a is %p \n", &a);
        NSLog(@"*point is %d \n", *point);
        
        int b = a > 20 ? a : 20;
        NSLog(@"b is %d", b);
        
        FunctionCall *functionCall = [[FunctionCall alloc]init];
        int num = 17;
        [functionCall callByValue:num];
        NSLog(@"after num is %d", num);
        int num2 = 10;
        [functionCall callByReference:&num2];
        NSLog(@"after num by ref is %d", num2);
        [functionCall calculateWithBlock:14 andNum2:15];
        
        Blocks *blocks = [[Blocks alloc] init];
        [blocks voidTypeBlock];
        [blocks intTypeBlock];
        [blocks constructBlock];
        [blocks defineBlock1];
        [blocks defineBlock2];
        
        DataTypes *dataType = [[DataTypes alloc]init];
        NSNumber *number1 = [NSNumber numberWithFloat:1.2];
        NSNumber *number2 = [NSNumber numberWithFloat:4.0];
        NSNumber* result = [dataType multiplyA:number1 withB:number2];
        NSLog(@"result=%d", [result intValue]);
        
        Arrays *arrays = [[Arrays alloc]init];
        //指针类型指向数组的第一个元素, arr是&arr[0]的指针，可以用*(arr + i)的形式访问整个数组的元素
        int *arr = [arrays genArrays];
        for(int i=0; i<10; i++) {
            NSLog(@"element[%d] = %d", i, *(arr + i));
        }
        
        double dbArr[5] = {17.2,4.3,6.57, 8.54, 9.08};
        [arrays print2DArrays:dbArr];
        
        Pointer *pointer = [[Pointer alloc] init];
        [pointer printAddress];
        [pointer printAddressAndValue];
        [pointer printNullPointer];
        [pointer incrementIntPointer];
        [pointer incrementCharPointer];
        [pointer decrementPointer];
        
        int ptr1 = 150000;
        int ptr2 = 89;
        int *A = &ptr1;
        int *B = &ptr2;
        [pointer comparePointerA:A withB:B];
        [pointer pointerArrayWithInt];
        [pointer pointerArrayWithChar];
        [pointer pointToPoint];
        
        int arr11[] = {1,2,3,7,9,12};
        double avg = [pointer pointToFunction:arr11 size:6];
        NSLog(@"average value of array is %f", avg);
        
        String *string = [[String alloc]init];
        [string helloWorldStr];
        [string capitalizeWord:@"hello"];
        [string upperCapitalizeWord:@"hello"];
        NSString *nstring = [[NSString alloc] initWithFormat:@"%@, %@", @"HELLO", @"WORLD!"];
        NSLog(@"%@", nstring);
        NSLog(@"%c", [nstring characterAtIndex:4]);
        NSLog(@"%d", (unsigned int)[nstring length]);
        
        Struct *structs = [[Struct alloc] init];
        [structs printStructure];
        [structs printStructureWithBook: [structs constructBook]];
        struct People people = [structs constructPeople];
        [structs printStructureWithPeople: &people];
        
        message(Richard, Lily);
        NSLog(@"current date : %s", __DATE__);
        NSLog(@"current time : %s", __TIME__);
        NSLog(@"current file : %s", __FILE__);
        NSLog(@"current line : %d", __LINE__);
        NSLog(@"current ANSI : %d", __STDC__);
        
        [structs getBook];
        
        NSLog(@"The result is %d", TRUE);
        NSLog(@"The result is not %d", FALSE);
        NSLog(@"The result without define: %d", true);
        
        DebugLog(@"Hello, this is from debug!");
        
        [constant onlyAccept1AsConstant:2];
        [constant onlyAccept1AsConstant:1];
        
        Person *person = [[Person alloc] initWithName:@"Amy" andAge:21];
        [person printPersonInfo];
        person.personAge = 22;
        person.personName = @"Richard";
        [person printPersonInfo];
        
        Employee *employee = [[Employee alloc] initWithName:@"Richard" andAge:22 andEducation:@"Master"];
        [employee printPersonInfo];
        
        NSString *copyRightStr = [NSString printCopyRightString];
        NSLog(@"%@", copyRightStr);
        
        NSInteger serialNum = [employee getSerialNum];
        NSLog(@"serial num is %ld", serialNum);
        
        NSUseProtocal *nsUseProtocal = [[NSUseProtocal alloc] init];
        NSString *nsStr = [nsUseProtocal toString];
        NSLog(@"nsStr = [%@]", nsStr);
        
        PersonUseProtocal *personUseProtocal = [[PersonUseProtocal alloc] initWithName:@"Richard" andAge: 23];
        [personUseProtocal sayHello];
        NSLog(@"%@",[personUseProtocal toString]);
        NSLog(@"%ld",[personUseProtocal addNum1:13 withNum2:15]);
        
        Employee *emp1 = [[Employee alloc] initWithName:@"QinJiangbo" andAge:22];
        BigBoss *boss1 = [[BigBoss alloc] initWithName:@"ChengYing" andAge:23];
        NSArray *personArr = [[NSArray alloc] initWithObjects:emp1,boss1, nil];
        id obj1 = [personArr objectAtIndex:0];
        id obj2 = [personArr objectAtIndex:1];
        [obj1 sayHello];
        [obj2 sayHello];
        
        ValidatingArray *validatingArray = [ValidatingArray validatingArray];
        [validatingArray addObject:@"Object1"];
        [validatingArray addObject:@"Object2"];
        [validatingArray addObject:[NSNull null]];
        [validatingArray removeObjectAtIndex:2];
        NSString *astr = [validatingArray objectAtIndex:0];
        NSLog(@"The value at Index 1 is %@", astr);
        
        NSArray *array = [[NSArray alloc] initWithObjects:@"Hello", @"World", @"Objective-C", nil];
        NSString *str = [array objectAtIndex:2];
        NSInteger count = [array count];
        BOOL flag = [array containsObject:@"World"];
        str = [array firstObject];
        NSLog(@"%@ === size[%ld] === contains[%hhd]", str, count, flag);
        
        NSMutableArray *muArray = [[NSMutableArray alloc] init];
        [muArray addObject:@"War"];
        [muArray addObjectsFromArray:array];
        str = [muArray objectAtIndex:1];
        NSLog(@"%@", muArray);
        
        NSDictionary *dict = [[NSDictionary alloc] initWithObjectsAndKeys:@"string1", @"key1",
        @"string2", @"key2", nil];
        count = [dict count];
        NSLog(@"count[%ld]", count);
        NSArray *keyArr = [dict allValues];
        NSLog(@"%@", keyArr);
        NSString *dictObj = [dict objectForKey:@"key2"];
        NSLog(@"%@", dictObj);
        
        NSMutableDictionary *muDict = [[NSMutableDictionary alloc] init];
        [muDict setValue:@"Richard" forKey:@"name"];
        [muDict setValue:@"Hello" forKey:@"hello"];
        NSLog(@"%@", [muDict description]);
        
        NSSet *set = [[NSSet alloc] initWithObjects:@"name1", @"name2", @"name3", nil];
        //array = [set allObjects];
        NSLog(@"%@ === %ld", [set description], [set count]);
        
        NSMutableSet *muSet = [[NSMutableSet alloc] initWithSet:set];
        [muSet addObject:@"name4"];
        NSLog(@"%@ === %ld", [muSet description], [muSet count]);
        [muSet minusSet:[[NSSet alloc]initWithObjects:@"name2", @"name4", nil]];
        NSLog(@"%@ === %ld", [muSet description], [muSet count]);
        
        NSCharacterSet *characterSet = [NSCharacterSet punctuationCharacterSet];
        NSString *string1 = @".....www.baidu.com....";
        string1 = [string1 stringByTrimmingCharactersInSet:characterSet];
        string1 = @"    apple   vs   google     ";
        characterSet = [NSCharacterSet whitespaceCharacterSet];
        string1 = [string1 stringByTrimmingCharactersInSet:characterSet];
        NSArray *strArr = [string1 componentsSeparatedByCharactersInSet:characterSet];
        strArr = [strArr filteredArrayUsingPredicate:[NSPredicate predicateWithFormat:@"self != ''"]];
        string1 = [strArr componentsJoinedByString:@" "];
        NSLog(@"%@", string1);
        
        NSDate *date = [NSDate date];
        NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
        [formatter setDateFormat:@"yyyy-MM-dd hh:mm:ss"];
        NSString *string2 = [formatter stringFromDate:date];
        NSLog(@"%@", string2);
        NSDate *newDate = [formatter dateFromString:string2];
        NSLog(@"%@", newDate);
        
        NSMutableArray *exceptionArr = [[NSMutableArray alloc] init];
        @try {
            [exceptionArr objectAtIndex:0];
        } @catch (NSException *exception) {
            NSLog(@"Name: %@", exception.name);
            NSLog(@"Reason: %@", exception.reason);
        } @finally {
            NSLog(@"Always executes!");
        }
        
        NSFileManager *fileManager = [NSFileManager defaultManager];
        NSArray *dirs = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
        NSLog(@"%@", [dirs description]);
        NSString *documentsDirectoryPath = [dirs objectAtIndex:0];
        if([fileManager fileExistsAtPath:[NSString stringWithFormat:@"%@/books.pdf", documentsDirectoryPath]] == YES) {
            NSLog(@"File books.pdf exist!");
        }
        if([fileManager contentsEqualAtPath:[NSString stringWithFormat:@"%@/books.pdf", documentsDirectoryPath] andPath:[NSString stringWithFormat:@"%@/books2.pdf", documentsDirectoryPath]] == YES) {
            NSLog(@"Files are equal!");
        }
        if([fileManager isWritableFileAtPath:[NSString stringWithFormat:@"%@/books.pdf", documentsDirectoryPath]] == YES) {
            NSLog(@"File is writable!");
        }
        if([fileManager isReadableFileAtPath:[NSString stringWithFormat:@"%@/books.pdf", documentsDirectoryPath]] == YES) {
            NSLog(@"File is readable!");
        }
        if([fileManager isExecutableFileAtPath:[NSString stringWithFormat:@"%@/books.pdf", documentsDirectoryPath]] == YES) {
            NSLog(@"File is executable!");
        }
        if([fileManager moveItemAtPath:[NSString stringWithFormat:@"%@/books.pdf", documentsDirectoryPath] toPath:[NSString stringWithFormat:@"%@/books4.pdf", documentsDirectoryPath] error:nil] == YES) {
            NSLog(@"File moved successfully!");
        }
        if([fileManager copyItemAtPath:[NSString stringWithFormat:@"%@/books2.pdf", documentsDirectoryPath] toPath:[NSString stringWithFormat:@"%@/books5.pdf", documentsDirectoryPath] error:nil] == YES) {
            NSLog(@"File copied successfully!");
        }
        if([fileManager removeItemAtPath:[NSString stringWithFormat:@"%@/books4.pdf", documentsDirectoryPath] error:nil] == YES) {
            NSLog(@"Delete successfully!");
        }
        NSData *data = [fileManager contentsAtPath:[NSString stringWithFormat:@"%@/books5.pdf", documentsDirectoryPath]];
        NSString *content = [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
        NSLog(@"%@", content);
        
        NSString *userData = @"I really appreciate that! Thank you!";
        [userData writeToFile:[NSString stringWithFormat:@"%@/books5.pdf", documentsDirectoryPath] atomically:YES encoding:NSUTF8StringEncoding error:nil];
        data = [fileManager contentsAtPath:[NSString stringWithFormat:@"%@/books5.pdf", documentsDirectoryPath]];
        content = [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
        NSLog(@"%@", content);
        NSLog(@"path: %@", documentsDirectoryPath);
        
//        NSMutableURLRequest *request = [[NSMutableURLRequest alloc] init];
//        [request setHTTPMethod:@"GET"];
//        [request setURL:[NSURL URLWithString:@"http://www.baidu.com"]];
//        [request setTimeoutInterval:60];
//        NSURLResponse *response = nil;
//        NSError *error = nil;

//        data = [NSURLConnection sendSynchronousRequest:request returningResponse:&response error:&error];
//        content = [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
//        [content writeToFile:[NSString stringWithFormat:@"%@/baidu.html", documentsDirectoryPath] atomically:YES encoding:NSUTF8StringEncoding error:nil];
        
        NSArray *array11 = [[NSArray alloc] initWithObjects:@"obj1", @"obj2", @"obj3", nil];
        for(NSString *string11 in array11) {
            NSLog(@"%@", string11);
        }
        
        for(NSString *string11 in [array11 reverseObjectEnumerator]) {
            NSLog(@"%@", string11);
        }
        
        NSEnumerator *enumerator11 = [array11 objectEnumerator];
        id obj = nil;
        while (obj=[enumerator11 nextObject]) {
            NSLog(@"enumerator==>%@", obj);
        }
        
        [array11 enumerateObjectsWithOptions:NSEnumerationConcurrent usingBlock:^(id obj, NSUInteger index, BOOL *flag) {
            NSLog(@"%@, %lu", obj, (unsigned long)index);
        }];
        
        NSMutableArray *array12 = [[NSMutableArray alloc] initWithArray:array11];
        NSEnumerator *enumerator12 = [array12 objectEnumerator];
        while (obj = [enumerator12 nextObject]) {
            NSLog(@"MU enumerator==>%@", obj);
        }
        
        NSMutableDictionary *dict11 = [[NSMutableDictionary alloc] initWithObjects:@[@"dict11", @"dict12", @"dict13"] forKeys:@[@"name11", @"name12", @"name13"]];
        NSEnumerator *enumerator13 = [dict11 keyEnumerator];
        NSString *strkey = nil;
        while (strkey = [enumerator13 nextObject]) {
            NSLog(@"KEY == %@", strkey);
        }
        
        enumerator13 = [dict11 objectEnumerator];
        while (strkey = [enumerator13 nextObject]) {
            NSLog(@"VALUE == %@", strkey);
        }
        
        [dict11 enumerateKeysAndObjectsUsingBlock:^(id key, id obj, BOOL *flag) {
            NSLog(@"key[%@]==>value[%@]", key, obj);
        }];
        
        NSSet *set11 = [[NSSet alloc] initWithObjects:@"set11", @"set12", @"set13", @"set14", nil];
        NSEnumerator *enumerator14 = [set11 objectEnumerator];
        [set11 enumerateObjectsWithOptions:NSEnumerationReverse usingBlock:^(id obj, BOOL *flag) {
            NSLog(@"obj ==> %@", obj);
        }];
        
        id obj11 = nil;
        while (obj11 = [enumerator14 nextObject]) {
            NSLog(@"set ==> [%@]", obj11);
        }
        
    }
    return 0;
}
