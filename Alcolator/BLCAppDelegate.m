//
//  AppDelegate.m
//  Alcolator
//
//  Created by RH Blanchfield on 3/2/15.
//  Copyright (c) 2015 bloc. All rights reserved.
//

#import "BLCAppDelegate.h"
#import "BLCMainMenuViewController.h"
#import "BLCViewController.h"
#import "BLCWhiskeyViewController.h"

@interface AppDelegate ()
@property(nonatomic,strong)BLCViewController *wineVC;
@property(nonatomic,strong)BLCWhiskeyViewController *whiskeyVC;
@end

@implementation AppDelegate



- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions


{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]] ;
    
    // Override point for customization after application launch.
    
    BLCMainMenuViewController *mainMenuViewController = [[BLCMainMenuViewController alloc] init];
    UINavigationController *navigationController = [[UINavigationController alloc] initWithRootViewController:mainMenuViewController];
    self.window.rootViewController = navigationController;
    
    self.wineVC = [[BLCViewController alloc] init];
    self.whiskeyVC = [[BLCWhiskeyViewController alloc] init];
    UITabBarController *tabBarVC = [[UITabBarController alloc] init];
    
    //UITabBarController *tabBarVC = tabBarVC.delegate = self;
    tabBarVC.delegate = self;
    tabBarVC.viewControllers = @[self.wineVC, self.whiskeyVC];
    
    self.window.rootViewController = tabBarVC;
    [self.window makeKeyAndVisible];
    return YES;

}

//bool shouldSelectViewController;

//- (BOOL)tabBarController:(UITabBarController *)tabBarController shouldSelectViewController:(UIViewController *)viewController {

- (void)tabBarController:(UITabBarController *)tabBarController didSelectViewController:(UIViewController *)viewController

    {
        if (viewController == self.wineVC) {
             NSLog(@"Wine Selected");
        }
        else {
            NSLog(@"Whiskey selected");
        }
        
    }




- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
