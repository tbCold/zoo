//
//  NJUserDefaultsManager.m
//  zoo
//
//  Created by NiuJie on 15/12/26.
//  Copyright © 2015年 tbcold. All rights reserved.
//

#import "NJUserDefaultsManager.h"

NSString * const NJUserDefaultsKeyNameAppVersion = @"appVersion";
NSString * const NJUserDefaultsKeyNameIsFirstStart = @"isFirstStart";

@implementation NJUserDefaultsManager

static NJUserDefaultsManager *_instance;

+(instancetype) sharedManager{
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _instance = [[self alloc] init];
    });
    return _instance;
}

-(NSString *) valueForKey:(NSString *)keyName{
    NSString *value = @"";
    NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];
    value = [userDefaults objectForKey:keyName];
    return value;
}

-(void) setValue:(id)value forUserDefaultsKey:(NSString *)key{
    NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];
    [userDefaults setObject:value forKey:key];
    [userDefaults synchronize];
}

@end
