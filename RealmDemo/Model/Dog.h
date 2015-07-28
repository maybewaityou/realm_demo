//
//  Dog.h
//  RealmDemo
//
//  Created by ChunNan on 15/7/28.
//  Copyright (c) 2015年 MeePwn. All rights reserved.
//

#import <Realm/Realm.h>

@interface Dog : RLMObject
@property NSString *name;
@property NSString *color;
@end

// This protocol enables typed collections. i.e.:
// RLMArray<Dog>
RLM_ARRAY_TYPE(Dog)
