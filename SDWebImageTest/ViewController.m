//
//  ViewController.m
//  SDWebImageTest
//
//  Created by chance on 2018/5/18.
//  Copyright © 2018年 ZhongYi. All rights reserved.
//

#import "ViewController.h"
#import "UIImageView+WebCache.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *imageView;

@end

@implementation ViewController
- (IBAction)browse:(id)sender {
    
    //1.url
    NSString * urlStr = @"https://camo.githubusercontent.com/6f3c0c83dab2077c8cbc71e6b82f6aa0a5a30d11/68747470733a2f2f7261772e6769746875622e636f6d2f69626972656d652f5959496d6167652f6d61737465722f44656d6f2f5959496d61676544656d6f2f6e69636f6e69636f6e694032782e676966";
    //2.让中文的url 以utf-8编码
    urlStr = [urlStr stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding];
    
    NSURL * url = [NSURL URLWithString:urlStr];
    
    [self.imageView setImageWithURL:url];
}
- (IBAction)clearCache:(id)sender {
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
