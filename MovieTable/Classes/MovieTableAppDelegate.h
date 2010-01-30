//
//  MovieTableAppDelegate.h
//  MovieTable
//
//  Created by Roman Bertolami on 29.01.10.
//  Copyright __MyCompanyName__ 2010. All rights reserved.
//

@interface MovieTableAppDelegate : NSObject <UIApplicationDelegate> {
    
    UIWindow *window;
    UINavigationController *navigationController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet UINavigationController *navigationController;

@end

