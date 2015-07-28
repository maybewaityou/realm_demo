//
//  ViewController.m
//  RealmDemo
//
//  Created by ChunNan on 15/7/28.
//  Copyright (c) 2015年 MeePwn. All rights reserved.
//

#import "ViewController.h"
#import "Masonry.h"
#import "ReactiveCocoa.h"
#import <Realm/Realm.h>
#import "Person.h"
#import "Dog.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    [self setupViews];
}

- (void)setupViews
{
    UITextField *nameText = [[UITextField alloc] init];
    nameText.borderStyle = UITextBorderStyleRoundedRect;
    nameText.placeholder = @"name";
    [self.view addSubview:nameText];
    [nameText mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.view).offset(20);
        make.left.equalTo(self.view).offset(10);
        make.right.equalTo(self.view).offset(-10);
        
        make.height.equalTo(@44);
    }];
    
    UITextField *ageText = [[UITextField alloc] init];
    ageText.borderStyle = UITextBorderStyleRoundedRect;
    ageText.placeholder = @"age";
    [self.view addSubview:ageText];
    [ageText mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(nameText.mas_bottom).offset(10);
        make.left.right.equalTo(nameText);
        make.height.equalTo(@44);
    }];
    
    UIButton *insertButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [insertButton setTitle:@"insert" forState:UIControlStateNormal];
    [self.view addSubview:insertButton];
    [insertButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(ageText.mas_bottom).offset(10);
        make.left.right.equalTo(ageText);
        make.height.equalTo(@44);
    }];
    
    UIButton *queryButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [queryButton setTitle:@"query" forState:UIControlStateNormal];
    [self.view addSubview:queryButton];
    [queryButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(insertButton.mas_bottom).offset(10);
        make.left.right.equalTo(insertButton);
        make.height.equalTo(@44);
    }];
    
    [[insertButton rac_signalForControlEvents:UIControlEventTouchUpInside] subscribeNext:^(id x) {
        Dog *dog = [[Dog alloc] init];
        Person *person = [[Person alloc] init];
        person.name = nameText.text;
        person.age = ageText.text;
        person.dog = dog;
        
        RLMRealm *realm = [RLMRealm defaultRealm];
        [realm beginWriteTransaction];
        [realm addObject:person];
        [realm commitWriteTransaction];
    }];
    
    [[queryButton rac_signalForControlEvents:UIControlEventTouchUpInside] subscribeNext:^(id x) {
        RLMResults *results = [Person allObjects];
        for (Person *person in results) {
            NSLog(@"== person =>>> %@",person);
        }
    }];
}

@end

