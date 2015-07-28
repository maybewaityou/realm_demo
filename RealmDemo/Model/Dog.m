//
//  Dog.m
//  RealmDemo
//
//  Created by ChunNan on 15/7/28.
//  Copyright (c) 2015年 MeePwn. All rights reserved.
//

#import "Dog.h"

@implementation Dog

// Specify default values for properties

+ (NSDictionary *)defaultPropertyValues
{
    return @{
             @"name":@"哈士奇",
             @"color":@"黑色"
             };
}

// Specify properties to ignore (Realm won't persist these)

//+ (NSArray *)ignoredProperties
//{
//    return @[];
//}
- (NSString *)description
{
    return [NSString stringWithFormat:@"Dog description:%@\n name: %@\ncolor: %@\n",[super description], self.name, self.color];
}

@end
