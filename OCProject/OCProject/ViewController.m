//
//  ViewController.m
//  OCProject
//
//  Created by LinXunFeng on 2022/4/12.
//

#import "ViewController.h"
#import "AppDelegate.h"
#import "LXFFlutterViewController.h"
#import "LXFEngineGroup.h"
@import FlutterPluginRegistrant;

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UILabel *label = [UILabel new];
    [self.view addSubview:label];
    label.text = @"push flutter vc";
    label.frame = CGRectMake(50, 300, 300, 100);
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    FlutterEngine *engine = [LXFEngineGroup.sharedLXFEngineGroup.engineGroup makeEngineWithOptions:[FlutterEngineGroupOptions new]];
    [GeneratedPluginRegistrant registerWithRegistry:engine];
    
    LXFFlutterViewController *flutterVc = [[LXFFlutterViewController alloc] initWithEngine:engine nibName:nil bundle:nil];
    [self.navigationController pushViewController:flutterVc animated:YES];
}

@end
