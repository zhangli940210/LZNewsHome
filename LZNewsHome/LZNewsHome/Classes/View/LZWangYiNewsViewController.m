//
//  LZWangYiNewsViewController.m
//  LZNewsHome
//
//  Created by apple on 16/3/29.
//  Copyright © 2016年 m14a.cn. All rights reserved.
//

/*
 封装: 扩展性,别人用舒服,很多东西都是固定
 */


#import "LZWangYiNewsViewController.h"
#import "LZLuFeiViewController.h"
#import "LZSuoLongViewController.h"
#import "LZXiangJiViewController.h"
#import "LZNaMeiTableViewController.h"
#import "LZLuoBinTableViewController.h"
#import "LZXunLuTableViewController.h"

@interface LZWangYiNewsViewController ()

@end

@implementation LZWangYiNewsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
   
    // 3.添加所有子控制器
    [self setupAllChildViewController];
}

#pragma mark - 添加所有子控制器
// 3.添加所有子控制器
- (void)setupAllChildViewController
{
    LZLuFeiViewController *lufei = [[LZLuFeiViewController alloc] init];
    lufei.title = @"路飞";
    [self addChildViewController:lufei];
    
    LZSuoLongViewController *suolong = [[LZSuoLongViewController alloc] init];
    suolong.title = @"索隆";
    [self addChildViewController:suolong];
    
    LZXiangJiViewController *xiangji = [[LZXiangJiViewController alloc] init];
    xiangji.title = @"香吉";
    [self addChildViewController:xiangji];
    
    LZNaMeiTableViewController *namei = [[LZNaMeiTableViewController alloc] init];
    namei.title = @"娜美";
    [self addChildViewController:namei];
    
    LZLuoBinTableViewController *luobin = [[LZLuoBinTableViewController alloc] init];
    luobin.title = @"罗宾";
    [self addChildViewController:luobin];
    
    LZXunLuTableViewController *xunlu = [[LZXunLuTableViewController alloc] init];
    xunlu.title = @"驯鹿";
    [self addChildViewController:xunlu];
}


@end
