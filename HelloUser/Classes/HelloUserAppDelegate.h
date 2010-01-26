//
//  HelloUserAppDelegate.h
//  HelloUser
//
//  Created by Roman Bertolami on 25.01.10.
//  Copyright __MyCompanyName__ 2010. All rights reserved.
//

#import <UIKit/UIKit.h>

@class HelloUserViewController;

@interface HelloUserAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    HelloUserViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet HelloUserViewController *viewController;

@end

