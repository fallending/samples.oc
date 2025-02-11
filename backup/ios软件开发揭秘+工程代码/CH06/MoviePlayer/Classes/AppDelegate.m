//
//  AppDelegate.m
//  MoviePlayer
//
//  Created by Henry Yu on 3/27/10.
//  Copyright Sevenuc. All rights reserved.
//

#import "AppDelegate.h"
#import "MoviePlayerViewController.h"

@implementation AppDelegate

@synthesize window;
@synthesize viewController;


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {    
    
    // Override point for customization after app launch    
    [window addSubview:viewController.view];
    [window makeKeyAndVisible];

	return YES;
}


- (void)dealloc {
    [viewController release];
    [window release];
    [super dealloc];
}


@end
