//
//  MovieAppDelegate.h
//  Movie
//
//  Created by Roman Bertolami on 27.01.10.
//  Copyright __MyCompanyName__ 2010. All rights reserved.
//

#import <UIKit/UIKit.h>

@class MovieViewController;

@interface MovieAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    MovieViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet MovieViewController *viewController;

@end

