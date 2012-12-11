//
//  lmAppDelegate.m
//  Dec11
//
//  Created by Lia Martinez on 12/11/12.
//  Copyright (c) 2012 Lia Martinez. All rights reserved.
//

#import "lmAppDelegate.h"
#import "lmViewController.h"


@implementation lmAppDelegate
@synthesize window = _window;

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
	UITabBarController *tabBarController = [[UITabBarController alloc] init];

	tabBarController.viewControllers = [NSArray arrayWithObjects:
										
		[[lmViewController alloc]
		 initWithText: @"Boxer Pug!"	//apostophe, not prime
		 title: @"Box"
		 image: [UIImage imageNamed: @"box.png"]
		 picture: [UIImage imageNamed: @"pug1.png"]
		 badge: nil
		 ],
		
		[[lmViewController alloc]
		 initWithText: @"Chia Pug!"	//apostophe, not prime
		 title: @"Chia"
		 image: [UIImage imageNamed: @"leaf.png"]
		 picture: [UIImage imageNamed: @"pug3.png"]
		 badge: nil
		 ],
										
		[[lmViewController alloc]
		 initWithText: @"Ballet Pug!"	//apostophe, not prime
		 title: @"Dance"
		 image: [UIImage imageNamed: @"dance.png"]
		 picture: [UIImage imageNamed: @"pug2.png"]
		 badge: nil
		 ],
			
		nil
		];
	
	tabBarController.selectedIndex = 0;	//0 (the leftmost one) is the default
	self.window.rootViewController = tabBarController;
    [self.window makeKeyAndVisible];
    return YES;
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
