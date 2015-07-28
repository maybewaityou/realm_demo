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
//

+ (NSString *)primaryKey
{
    return @"IDCard";
}
- (NSString *)description
{
    return [NSString stringWithFormat:@"Person description:\n IDCard: %@\nname: %@\nage: %@\ndesc: %@\ndog: %@\n",self.IDCard, self.name, self.age, self.desc, self.dog];
}


@end
