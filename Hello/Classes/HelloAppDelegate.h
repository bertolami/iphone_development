//
//  HelloAppDelegate.h
//  Hello
//
//  Created by Roman Bertolami on 25.01.10.
//  Copyright __MyCompanyName__ 2010. All rights reserved.
//

#import <UIKit/UIKit.h>

@class HelloViewController;

@interface HelloAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    HelloViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet HelloViewController *viewController;

@end

