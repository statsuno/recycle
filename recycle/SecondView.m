//
//  SecondView.m
//  recycle
//
//  Created by 龍野翔 on 2014/03/18.
//  Copyright (c) 2014年 龍野翔. All rights reserved.
//

#import "SecondView.h"

@interface SecondView ()

@end

@implementation SecondView

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    NSData *myData;
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *documentsDirectory = [paths objectAtIndex:0];
    NSString *path = [documentsDirectory stringByAppendingPathComponent:@"test.png"];
    NSFileManager *fileManager = [NSFileManager defaultManager];
    BOOL success = [fileManager fileExistsAtPath:path];
    if(success) {
        myData = [[NSData alloc] initWithContentsOfFile:path];
    }
    
    CGRect rect = CGRectMake(10, 10, 250, 250);
    
    UIImageView *imageView = [[UIImageView alloc]initWithFrame:rect];
    
    // 画像の読み込み
    imageView.image = [[UIImage alloc] initWithData:myData];
    
    // UIImageViewのインスタンスをビューに追加
    [self.view addSubview:imageView];
    

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
