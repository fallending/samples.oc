//
//  LessonsAppDelegate.m
//  Lessons
//
//  Created by henryyu on 10-10-29.
//  Copyright __MyCompanyName__ 2010. All rights reserved.
//

#import "LessonsAppDelegate.h"
#import "aViewController.h"
#import "anotherViewController.h"
#import "miscViewController.h"

@implementation LessonsAppDelegate

@synthesize window;
@synthesize tabBarController;

#pragma mark -
#pragma mark Application lifecycle

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {    

    // Override point for customization after application launch.
    //[window makeKeyAndVisible];
		    	
	//I create my navigation Controller
	UINavigationController *localNavigationController;
	//I create my TabBar controlelr
	tabBarController = [[UITabBarController alloc] init];
	// Icreate the array that will contain all the View controlelr
	NSMutableArray *localControllersArray = [[NSMutableArray alloc] initWithCapacity:3];
	// I create the view controller attached to the first item in the TabBar
	
	aViewController *firstViewController;
	firstViewController = [aViewController alloc];
	//firstViewController = [[aViewController alloc] initWithStyle:UITableViewStyleGrouped ];
	localNavigationController = [[UINavigationController alloc] initWithRootViewController:firstViewController];
	localNavigationController.navigationBar.barStyle = UIBarStyleBlackOpaque;
	//CGRect windowBounds = [[UIScreen mainScreen] bounds];
	//int screenWidth =  windowBounds.size.width;	
	//localNavigationController.view.frame = CGRectMake(0, 0, screenWidth, 84);	
 	
	[localNavigationController.tabBarItem initWithTabBarSystemItem:UITabBarSystemItemBookmarks tag:1];
	firstViewController.navigationItem.title=@"Outlines";
	
	[localControllersArray addObject:localNavigationController];
	[localNavigationController release];
	[firstViewController release];
	
	// I create the view controller attached to the second item in the TabBar
	
	anotherViewController *secondViewController;
	secondViewController = [[anotherViewController alloc] initWithStyle:UITableViewStyleGrouped ];
	localNavigationController = [[UINavigationController alloc] initWithRootViewController:secondViewController];
	[localNavigationController.tabBarItem initWithTabBarSystemItem:UITabBarSystemItemFavorites tag:2];
	secondViewController.navigationItem.title=@"Q & A";
	
	
	[localControllersArray addObject:localNavigationController];
	[localNavigationController release];
	[secondViewController release];
	
	
	miscViewController *thirdViewController;
	thirdViewController = [[miscViewController alloc] initWithStyle:UITableViewStyleGrouped ];
	localNavigationController = [[UINavigationController alloc] initWithRootViewController:thirdViewController];
	[localNavigationController.tabBarItem initWithTabBarSystemItem:UITabBarSystemItemContacts tag:3];
	thirdViewController.navigationItem.title=@"Misc";
	
	
	[localControllersArray addObject:localNavigationController];
	[localNavigationController release];
	[thirdViewController release];
	
	// load up our tab bar controller with the view controllers
	tabBarController.viewControllers = localControllersArray;
	
	// release the array because the tab bar controller now has it
	[localControllersArray release];
			
	//tabBarController.view.backgroundColor = [UIColor clearColor];	
	// add the tabBarController as a subview in the window
	[window addSubview:tabBarController.view];
	
	// need this last line to display the window (and tab bar controller)
	[window makeKeyAndVisible];
	
    return YES;
}


- (void)applicationWillResignActive:(UIApplication *)application {
    /*
     Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
     Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
     */
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    /*
     Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
     */
}


/**
 applicationWillTerminate: saves changes in the application's managed object context before the application terminates.
 */
- (void)applicationWillTerminate:(UIApplication *)application {
    
    NSError *error = nil;
    if (managedObjectContext_ != nil) {
        if ([managedObjectContext_ hasChanges] && ![managedObjectContext_ save:&error]) {
            /*
             Replace this implementation with code to handle the error appropriately.
             
             abort() causes the application to generate a crash log and terminate. You should not use this function in a shipping application, although it may be useful during development. If it is not possible to recover from the error, display an alert panel that instructs the user to quit the application by pressing the Home button.
             */
            NSLog(@"Unresolved error %@, %@", error, [error userInfo]);
            abort();
        } 
    }
}


#pragma mark -
#pragma mark Core Data stack

/**
 Returns the managed object context for the application.
 If the context doesn't already exist, it is created and bound to the persistent store coordinator for the application.
 */
- (NSManagedObjectContext *)managedObjectContext {
    
    if (managedObjectContext_ != nil) {
        return managedObjectContext_;
    }
    
    NSPersistentStoreCoordinator *coordinator = [self persistentStoreCoordinator];
    if (coordinator != nil) {
        managedObjectContext_ = [[NSManagedObjectContext alloc] init];
        [managedObjectContext_ setPersistentStoreCoordinator:coordinator];
    }
    return managedObjectContext_;
}


/**
 Returns the managed object model for the application.
 If the model doesn't already exist, it is created from the application's model.
 */
- (NSManagedObjectModel *)managedObjectModel {
    
    if (managedObjectModel_ != nil) {
        return managedObjectModel_;
    }
    NSString *modelPath = [[NSBundle mainBundle] pathForResource:@"Lessons" ofType:@"momd"];
    NSURL *modelURL = [NSURL fileURLWithPath:modelPath];
    managedObjectModel_ = [[NSManagedObjectModel alloc] initWithContentsOfURL:modelURL];    
    return managedObjectModel_;
}


/**
 Returns the persistent store coordinator for the application.
 If the coordinator doesn't already exist, it is created and the application's store added to it.
 */
- (NSPersistentStoreCoordinator *)persistentStoreCoordinator {
    
    if (persistentStoreCoordinator_ != nil) {
        return persistentStoreCoordinator_;
    }
    
    NSURL *storeURL = [NSURL fileURLWithPath: [[self applicationDocumentsDirectory] stringByAppendingPathComponent: @"Lessons.sqlite"]];
    
    NSError *error = nil;
    persistentStoreCoordinator_ = [[NSPersistentStoreCoordinator alloc] initWithManagedObjectModel:[self managedObjectModel]];
    if (![persistentStoreCoordinator_ addPersistentStoreWithType:NSSQLiteStoreType configuration:nil URL:storeURL options:nil error:&error]) {
        /*
         Replace this implementation with code to handle the error appropriately.
         
         abort() causes the application to generate a crash log and terminate. You should not use this function in a shipping application, although it may be useful during development. If it is not possible to recover from the error, display an alert panel that instructs the user to quit the application by pressing the Home button.
         
         Typical reasons for an error here include:
         * The persistent store is not accessible;
         * The schema for the persistent store is incompatible with current managed object model.
         Check the error message to determine what the actual problem was.
         
         
         If the persistent store is not accessible, there is typically something wrong with the file path. Often, a file URL is pointing into the application's resources directory instead of a writeable directory.
         
         If you encounter schema incompatibility errors during development, you can reduce their frequency by:
         * Simply deleting the existing store:
         [[NSFileManager defaultManager] removeItemAtURL:storeURL error:nil]
         
         * Performing automatic lightweight migration by passing the following dictionary as the options parameter: 
         [NSDictionary dictionaryWithObjectsAndKeys:[NSNumber numberWithBool:YES],NSMigratePersistentStoresAutomaticallyOption, [NSNumber numberWithBool:YES], NSInferMappingModelAutomaticallyOption, nil];
         
         Lightweight migration will only work for a limited set of schema changes; consult "Core Data Model Versioning and Data Migration Programming Guide" for details.
         
         */
        NSLog(@"Unresolved error %@, %@", error, [error userInfo]);
        abort();
    }    
    
    return persistentStoreCoordinator_;
}


#pragma mark -
#pragma mark Application's Documents directory

/**
 Returns the path to the application's Documents directory.
 */
- (NSString *)applicationDocumentsDirectory {
    return [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) lastObject];
}

/*
 // Optional UITabBarControllerDelegate method
 - (void)tabBarController:(UITabBarController *)tabBarController didSelectViewController:(UIViewController *)viewController {
 }
 */

/*
 // Optional UITabBarControllerDelegate method
 - (void)tabBarController:(UITabBarController *)tabBarController didEndCustomizingViewControllers:(NSArray *)viewControllers changed:(BOOL)changed {
 }
 */


#pragma mark -
#pragma mark Memory management

- (void)dealloc {
	
    [tabBarController release];
	
    [managedObjectContext_ release];
    [managedObjectModel_ release];
    [persistentStoreCoordinator_ release];
    
    [window release];
    [super dealloc];
}


@end

