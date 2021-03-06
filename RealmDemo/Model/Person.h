//
//  Person.h
//  RealmDemo
//
//  Created by ChunNan on 15/7/28.
//  Copyright (c) 2015年 MeePwn. All rights reserved.
//

#import <Realm/Realm.h>
@class Dog;
@interface Person : RLMObject

@property NSString *IDCard;
@property NSString *name;
@property NSString *age;
// v1
@property NSString *desc;
// v2
@property NSString *email;
@property Dog *dog;

@end

// This protocol enables typed collections. i.e.:
// RLMArray<Person>
RLM_ARRAY_TYPE(Person)
