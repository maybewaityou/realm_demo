//
//  Person.m
//  RealmDemo
//
//  Created by ChunNan on 15/7/28.
//  Copyright (c) 2015年 MeePwn. All rights reserved.
//

#import "Person.h"

@implementation Person

// Specify default values for properties

//+ (NSDictionary *)defaultPropertyValues
//{
//    return @{
//             @"name":@"dog",
//             @"age":@"-1"
//             };
//}

// Specify properties to ignore (Realm won't persist these)

//+ (NSArray *)ignoredProperties
//{
//    return @[];
//}
- (NSString *)description
{
    return [NSString stringWithFormat:@"Person description:%@\n name: %@\nage: %@\ndog: %@\n",[super description], self.name, self.age, self.dog];
}



@end
