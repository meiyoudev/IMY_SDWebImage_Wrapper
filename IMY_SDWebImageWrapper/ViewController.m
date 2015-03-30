//
//  ViewController.m
//  IMY_SDWebImageWrapper
//
//  Created by Ivan Chua on 15/3/30.
//  Copyright (c) 2015年 Ivan Chua. All rights reserved.
//

#import <Masonry/View+MASAdditions.h>
#import "ViewController.h"
#import "UIImageView+IMY_WebImage.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [[UIImageView appearance] setPlaceholderImageName:@"meetyou_two"];
    [[UIImageView appearance] setFailureImageName:@"remind_noimage"];

    UIImageView *imageView = [[UIImageView alloc] init];
    imageView.clipsToBounds = YES;
    [self.view addSubview:imageView];
    [imageView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.view).offset(10);
        make.top.equalTo(self.view).offset(20);
        make.size.mas_equalTo(CGSizeMake(180, 180));
    }];

    NSString *urlString = @"http://sc.seeyouyima.com/forum/data/550683d03b83d_460_300.png";
    [imageView imy_setImageURL:urlString];

    UIImageView *imageView1 = [[UIImageView alloc] init];
    imageView1.showProgress = YES;
    [self.view addSubview:imageView1];
    [imageView1 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(imageView);
        make.top.equalTo(imageView.mas_bottom).offset(10);
        make.size.equalTo(imageView);
    }];
    [imageView1 imy_setImageURL:urlString resise:CGSizeMake(180, 180) quality:100 type:IMY_QiNiu_WEBP];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
