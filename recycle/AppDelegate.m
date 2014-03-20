//
//  AppDelegate.m
//  recycle
//
//  Created by 龍野翔 on 2014/03/14.
//  Copyright (c) 2014年 龍野翔. All rights reserved.
//

#import "AppDelegate.h"
#import "ViewController.h"

@interface AppDelegate()

@property (nonatomic, strong) UINavigationController *naviCtrl;

@end

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
        // Override point for customization after application launch.
        self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
        ViewController *c = ViewController.new;
        self.naviCtrl = [[UINavigationController alloc] initWithRootViewController:c];
        self.window.rootViewController = self.naviCtrl;
        self.naviCtrl.navigationBar.translucent = NO;
        self.naviCtrl.toolbar.translucent = NO;
        [self.window makeKeyAndVisible];
        return YES;
}

- (IBAction)run:(id)sender {
    UIImage *image = ImageView.image;
    NSData *data = UIImagePNGRepresentation(image);
    NSString *filePath = [NSString stringWithFormat:@"%@/test.png" , [NSHomeDirectory() stringByAppendingPathComponent:@"Documents"]];
    NSLog(@"%@", filePath);
    if ([data writeToFile:filePath atomically:YES]) {
        NSLog(@"OK");
    } else {
        NSLog(@"Error");
    }
}
  
							
- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
