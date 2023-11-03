//
//  ViewController.m
//  OCProject
//
//  Created by LinXunFeng on 2022/4/12.
//

#import "ViewController.h"
#import "AppDelegate.h"
#import "LXFFlutterViewController.h"

@interface ViewController ()

@property(nonatomic, strong) FlutterEngine *flutterEngine;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.flutterEngine run];
    
    UILabel *label = [UILabel new];
    [self.view addSubview:label];
    label.text = @"push flutter vc";
    label.frame = CGRectMake(50, 300, 300, 100);
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    LXFFlutterViewController *flutterVc = [[LXFFlutterViewController alloc] initWithEngine:self.flutterEngine nibName:nil bundle:nil];
    [self.navigationController pushViewController:flutterVc animated:YES];
}

- (FlutterEngine *)flutterEngine {
    if (!_flutterEngine) {
        _flutterEngine = [[FlutterEngine alloc] initWithName:@"lxf"];
    }
    return _flutterEngine;
}

@end
