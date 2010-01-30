//
//  Movie.h
//  Movie
//
//  Created by Roman Bertolami on 27.01.10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface Movie : NSObject {
	NSString *title;
	NSNumber *boxOfficeGross;
	NSString *summary;
}

- (id) initWithTitle: (NSString*) newTitle 
			boxOfficeGross: (NSNumber*) newBoxOfficeGross
						 summary: (NSString*) newSummary;

@property(nonatomic, copy) NSString *title;
@property(nonatomic, copy) NSNumber *boxOfficeGross;
@property(nonatomic, copy) NSString *summary;

@end
