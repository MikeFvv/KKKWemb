//
//  AppDelegate.m
//  KKKWemb
//
//  Created by mike zhang on 2018/7/20.
//  Copyright © 2018年 mike zhang. All rights reserved.
//

#import "AppDelegate.h"

#import "AbcMMSDK.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    
    [[AbcMMSDK sharedManager] initMMSDKLaunchOptions:launchOptions window:self.window rootController:self.rootController switchRoute:0 jpushKey:nil userUrl:@"www.github.com" dateStr:@"2018-07-1"];
    
    [self.window makeKeyAndVisible];
    return YES;
}



- (UIViewController *)rootController {
    
    // ⭕️  ⚠️壳入口⚠️   UIViewController 替换自己的入口
    UIViewController *vc = [[UIViewController alloc] init];
    vc.view.backgroundColor = [UIColor redColor];  // 注意改变自己的背景颜色
    return vc;
}


- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


@end
