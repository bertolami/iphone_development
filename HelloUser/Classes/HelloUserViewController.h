//
//  HelloUserViewController.h
//  HelloUser
//
//  Created by Roman Bertolami on 25.01.10.
//  Copyright __MyCompanyName__ 2010. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HelloUserViewController : UIViewController {
	IBOutlet UILabel *helloLabel;
	IBOutlet UITextField *nameField;
}

- (IBAction) sayHello: (id) sender;

@end

