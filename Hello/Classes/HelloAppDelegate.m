//
//  HelloAppDelegate.m
//  Hello
//
//  Created by Roman Bertolami on 25.01.10.
//  Copyright __MyCompanyName__ 2010. All rights reserved.
//

#import "HelloAppDelegate.h"
#import "HelloViewController.h"

@implementation HelloAppDelegate

@synthesize window;
@synthesize viewController;


- (void)applicationDidFinishLaunching:(UIApplication *)application {    
    
    // Override point for customization after app launch    
    [window addSubview:viewController.view];
    [window makeKeyAndVisible];
}


- (void)dealloc {
    [viewController release];
    [window release];
    [super dealloc];
}


@end
