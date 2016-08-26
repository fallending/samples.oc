//
//  WebDocAppDelegate.h
//  WebDoc
//
//  Created by Henry Yu on 09-10-26.
//  Copyright Sevenuc.com 2010. All rights reserved.
//

#import "WebService.h"
#import "SplashViewController.h"

@interface AppDelegate : NSObject <UIApplicationDelegate> {

    NSManagedObjectModel *managedObjectModel;
    NSManagedObjectContext *managedObjectContext;	    
    NSPersistentStoreCoordinator *persistentStoreCoordinator;
    UIWindow *window;
	
	SplashViewController *splashController;
	UINavigationController *navigationController;
	WebDocWebService *webservice;
	
	NSMutableArray *domainsArray;	
	NSMutableArray *typesArray;
	NSMutableArray *directionArray;
	NSMutableArray *workflowStateArray;
	NSMutableArray *teamsArray;
	NSMutableArray *usersArray;
	
	BOOL netInitialized;
	BOOL reloadDetais;
	BOOL reloadFiles;
	NSInteger myLoginSuccess;
	NSString *currentView;
	NSString *hashCode; 
	NSString *publicKey;
	NSString *documentId;
    NSInteger myCurrentPage;
	NSInteger teamCurrentPage;
	NSInteger searchCurrentPage;
	NSInteger myTotalPage;
	NSInteger teamTotalPage;
	NSInteger searchTotalPage;
	NSInteger nInitCount;
	NSString *currentTitle;
	NSArray *searchParameters;
	
	NSDictionary *dictDetail; 
	NSMutableArray *dictFiles;    
	NSMutableArray *dictHistory;
	NSMutableArray *dictWorkflow;
	
	NSMutableArray *cacheStack;
	NSMutableArray *searchList;
	NSInteger myTotalDocuments;
	NSInteger myTeamTotalDocuments;
	UINavigationController *navigationController2;		
}

@property (nonatomic, retain, readonly) NSManagedObjectModel *managedObjectModel;
@property (nonatomic, retain, readonly) NSManagedObjectContext *managedObjectContext;
@property (nonatomic, retain, readonly) NSPersistentStoreCoordinator *persistentStoreCoordinator;
@property (nonatomic, retain) IBOutlet UIWindow *window;

@property BOOL reloadDetais;
@property BOOL reloadFiles;
@property NSInteger myCurrentPage;
@property NSInteger teamCurrentPage;
@property NSInteger searchCurrentPage;
@property NSInteger myTotalPage;
@property NSInteger teamTotalPage;
@property NSInteger searchTotalPage;
@property NSInteger myTotalDocuments;
@property NSInteger myTeamTotalDocuments;

@property(nonatomic, retain)NSString *hashCode;  
@property(nonatomic, retain)NSString *publicKey;
@property(nonatomic, retain)NSString *documentId;   
@property(nonatomic, retain)NSString *currentView;   
@property(nonatomic, retain)NSString *currentTitle; 

@property(nonatomic, retain)NSMutableArray *typesArray;
@property(nonatomic, retain)NSMutableArray *directionArray;
@property(nonatomic, retain)NSMutableArray *workflowStateArray;
@property(nonatomic, retain)NSMutableArray *teamsArray;

@property(nonatomic, retain)NSMutableArray *cacheStack; 
@property(nonatomic, retain)NSArray *searchParameters;  

@property(nonatomic, retain)NSDictionary *dictDetail;
@property(nonatomic, retain)NSMutableArray *dictFiles;
@property(nonatomic, retain)NSMutableArray *dictHistory;
@property(nonatomic, retain)NSMutableArray *dictWorkflow;

@property(nonatomic, retain)NSMutableArray *searchList;
@property(nonatomic, retain) WebDocWebService *webservice;
//@property (nonatomic, retain) UINavigationController *navigationController2;
@property (nonatomic, retain) IBOutlet UINavigationController *navigationController;

- (NSString *)applicationDocumentsDirectory;
- (NSString *)dbHelper:(NSDictionary*)row Key:(NSString *)key;
- (NSMutableArray *)getDomains;
- (NSMutableArray *)getTeams;
- (NSMutableArray *)getTypes;
- (NSMutableArray *)getDirections;
- (NSMutableArray *)getWorkflowStates;

- (void)clearCache;
- (void)setLoginResult:(NSInteger)result;
- (NSInteger)getLoginResult;
- (void)listDocumentTypes;
- (void)setSearchList:(NSMutableArray *)list;
- (void)addPageController:(NSArray*)controller;
- (NSMutableArray*)getPageController:(NSInteger)currentPage;
- (void)messageBox:(NSString*)message Error:(NSError*)error;
- (NSString *)applicationDocumentsDirectory;
- (BOOL)isReachabilitable;
- (NSString *)getCurrentDateTime;


@end

