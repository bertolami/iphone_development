//
//  HelloUserViewController.m
//  HelloUser
//
//  Created by Roman Bertolami on 25.01.10.
//  Copyright __MyCompanyName__ 2010. All rights reserved.
//

#import "HelloUserViewController.h"

@implementation HelloUserViewController

- (void) sayHello:(id)sender {
	NSString *userName = nameField.text;
	NSString *helloMessage = [[NSString alloc] initWithFormat:@"Hello %@", userName];
	helloLabel.text = helloMessage;
	[helloMessage release];
	nameField.text = nil;
	[nameField resignFirstResponder];
}

- (BOOL) textFieldShouldReturn:(UITextField *)textField {
	[self sayHello:nil];
	return YES;
}

/*
// The designated initializer. Override to perform setup that is required before the view is loaded.
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    if (self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil]) {
        // Custom initialization
    }
    return self;
}
*/

/*
// Implement loadView to create a view hierarchy programmatically, without using a nib.
- (void)loadView {
}
*/


/*
// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
    [super viewDidLoad];
}
*/


/*
// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
*/

- (void)didReceiveMemoryWarning {
	// Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
	
	// Release any cached data, images, etc that aren't in use.
}

- (void)viewDidUnload {
	// Release any retained subviews of the main view.
	// e.g. self.myOutlet = nil;
}


- (void)dealloc {
	[helloLabel release];
	[nameField release];
    [super dealloc];
}

@end
