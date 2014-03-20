//
//  ViewController.m
//  recycle
//
//  Created by 龍野翔 on 2014/03/14.
//  Copyright (c) 2014年 龍野翔. All rights reserved.
//

#import "ViewController.h"
#import "SecondView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor = [UIColor blueColor];
    
    UIBarButtonItem *right = [[UIBarButtonItem alloc]
                              initWithTitle:@"next"
                              style:UIBarButtonItemStylePlain
                              target:self action:@selector(actionNext)];
    self.navigationItem.rightBarButtonItem = right;
    
    UIBarButtonItem *button=[[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemAdd target:self action:@selector(run)];
    UIBarButtonItem *spacer=[[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemFlexibleSpace target:nil action:nil];
    NSArray *buttons=[NSArray arrayWithObjects:spacer,button,spacer,nil];
    [self setToolbarItems:buttons animated:YES];
}

- (void)run {
    UIImage *image = [UIImage imageNamed:@"sample.png"];
    NSData *data = UIImagePNGRepresentation(image);
    NSString *filePath = [NSString stringWithFormat:@"%@/test.png" , [NSHomeDirectory() stringByAppendingPathComponent:@"Documents"]];
    NSLog(@"%@", filePath);
    if ([data writeToFile:filePath atomically:YES]) {
        NSLog(@"OK");
    } else {
        NSLog(@"Error");
    }
}

- (void)actionNext{
    SecondView *c = SecondView.new;
    [self.navigationController pushViewController:c animated:YES];
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewWillAppear:(BOOL)animated
{
    self.navigationController.toolbarHidden = NO;
}



@end
