//
//  ViewController.m
//  LZNewsHome
//
//  Created by apple on 16/3/25.
//  Copyright © 2016年 m14a.cn. All rights reserved.
//

#import "ViewController.h"


#define LZScreenW [UIScreen mainScreen].bounds.size.width
#define LZScreenH [UIScreen mainScreen].bounds.size.height


@interface ViewController ()

/** titleScrollView*/
@property (nonatomic, weak) UIScrollView *titleScrollView;
/** contentScrollView*/
@property (nonatomic, weak) UIScrollView *contentScrollView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // 1.添加标题滚动视图
    [self setupTitleScrollView];
    
    // 2.添加内容滚动视图
    [self setupContentScrollView];
}

// 1.添加标题滚动视图
- (void)setupTitleScrollView
{
    // 创建UIScrollView对象
    UIScrollView *titleScrollView = [[UIScrollView alloc] init];
    // 设置背景色
    titleScrollView.backgroundColor = [UIColor brownColor];
    // 设置尺寸
    CGFloat x = 0;
    // 有导航条64,没有导航条20,目的是看状态栏
    CGFloat y = self.navigationController.navigationBarHidden ? 20 : 64;;
    CGFloat width = LZScreenW;
    CGFloat height = 35;
    titleScrollView.frame = CGRectMake(x, y, width, height);
    // 添加到自身的view上
    [self.view addSubview:titleScrollView];
    // 保存到属性
    _titleScrollView = titleScrollView;
}

// 2.添加内容滚动视图
- (void)setupContentScrollView
{
    // 创建UIScrollView对象
    UIScrollView *contentScrollView = [[UIScrollView alloc] init];
    // 设置背景色
    contentScrollView.backgroundColor = [UIColor redColor];
    // 设置尺寸
    CGFloat x = 0;
    CGFloat y = CGRectGetMaxY(self.titleScrollView.frame);
    CGFloat width = LZScreenW;
    CGFloat height = LZScreenH - y;
    contentScrollView.frame = CGRectMake(x, y, width, height);
    // 添加到自身的view上
    [self.view addSubview:contentScrollView];
    // 保存到属性
    _contentScrollView = contentScrollView;
}
@end
