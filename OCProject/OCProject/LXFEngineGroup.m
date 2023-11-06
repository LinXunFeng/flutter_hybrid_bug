//
//  LXFEngineGroup.m
//  OCProject
//
//  Created by linxunfeng on 2023/11/6.
//

#import "LXFEngineGroup.h"

@implementation LXFEngineGroup

SingletonM(LXFEngineGroup)

- (FlutterEngineGroup *)engineGroup {
    if (!_engineGroup) {
        _engineGroup = [[FlutterEngineGroup alloc] initWithName:@"LXF" project:nil];
    }
    return _engineGroup;
}

@end
