//
//  MovieViewController.m
//  Movie
//
//  Created by Roman Bertolami on 27.01.10.
//  Copyright __MyCompanyName__ 2010. All rights reserved.
//

#import "MovieViewController.h"
#import "Movie.h"
#import "MovieEditorViewController.h"

@implementation MovieViewController

@synthesize titleLabel;
@synthesize boxOfficeGrossLabel;
@synthesize summaryLabel;
@synthesize movie;
@synthesize editingViewController;

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


- (void) viewWillAppear: (BOOL) animated {
	[super viewWillAppear: animated];
	self.titleLabel.text = self.movie.title;
	NSNumberFormatter *formatter = [[NSNumberFormatter alloc] init];
	[formatter setNumberStyle:NSNumberFormatterCurrencyStyle];
	self.boxOfficeGrossLabel.text = [formatter stringFromNumber:self.movie.boxOfficeGross];
	[formatter release];
	self.summaryLabel.text = self.movie.summary;
	
}

- (void)viewDidLoad {
    [super viewDidLoad];
	Movie *newMovie = [[[Movie alloc] 
						initWithTitle:@"Iron Man" 
						boxOfficeGross:[NSNumber numberWithFloat:6500000000.00] 
						summary:@"Smart guy makes cool armor"] autorelease];
	self.movie = newMovie;
}


/*
// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
*/

- (IBAction) edit {
	NSLog(@"editing");
	self.editingViewController.movie =  self.movie;
	[self presentModalViewController:self.editingViewController animated:YES];
}

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
    [super dealloc];
}

@end
