//
//  ViewController.m
//  cocoapodDemo
//
//  Created by Shorigo on 15/10/29.
//  Copyright (c) 2015年 Shorigo. All rights reserved.
//

#import "ViewController.h"
#import "JSONKit.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    SBJson4Writer *writer = [[SBJson4Writer alloc]init];
    NSString *string = [writer stringWithObject:@[@"看书", @"读报", @"早睡觉"]];
    NSLog(@"%@",string);
    
    NSArray *s = [string objectFromJSONString];
    NSString *str = [s JSONString];
    NSLog(@"%@",s);
    for (NSString *str in s) {
        NSLog(@"%@",str);
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
