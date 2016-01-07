//
//  NJUserDefaultsManager.h
//  zoo
//
//  Created by NiuJie on 15/12/26.
//  Copyright © 2015年 tbcold. All rights reserved.
//

/**
 *  对NSUserDefaults的封装，所有key统一管理到此文件中
 */
#import <Foundation/Foundation.h>

@interface NJUserDefaultsManager : NSObject

/**
 *  创建单例
 */
+ (instancetype)sharedManager;

- (NSString *)valueForKey:(NSString *)keyName;

- (void)setValue:(id)value forUserDefaultsKey:(NSString *)key;

@end

extern NSString * const NJUserDefaultsKeyNameAppVersion;
/**
 *  是否安装/更新后第一次启动
 *  1:是     0:否
 */
extern NSString * const NJUserDefaultsKeyNameIsFirstStart;