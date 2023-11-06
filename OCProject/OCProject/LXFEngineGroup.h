//
//  LXFEngineGroup.h
//  OCProject
//
//  Created by linxunfeng on 2023/11/6.
//

#import <Foundation/Foundation.h>
#import <Flutter/Flutter.h>
#import "Singleton.h"

NS_ASSUME_NONNULL_BEGIN

@interface LXFEngineGroup : NSObject

SingletonH(LXFEngineGroup)

@property (nonatomic, strong) FlutterEngineGroup *engineGroup;

@end

NS_ASSUME_NONNULL_END
