//
//  lmDogs.m
//  Dec11
//
//  Created by Lia Martinez on 12/11/12.
//  Copyright (c) 2012 Lia Martinez. All rights reserved.
//

#import "lmDogs.h"
#import "lmViewController.h"

@implementation lmDogs


/*
- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}
 */
- (id) initWithFrame: (CGRect) frame controller: (lmViewController *) c {
	self = [super initWithFrame: frame];
	if (self) {
		// Initialization code
		self.backgroundColor = [UIColor blackColor];
		self.editable = NO;	//Don't pop up a keyboard.
		self.font = [UIFont fontWithName: @"Courier" size: 14]; //monospace
		viewController = c;
	}
	return self;
}


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
	CGFloat w = self.bounds.size.width;
	CGFloat h = self.bounds.size.height;
	
	
	CGPoint point = CGPointMake(
	(w - viewController->dogPic.size.width) / 2,
	(h/2 - viewController->dogPic.size.height/2)
								);
	
	 
	[viewController->dogPic drawAtPoint: point];
}


@end
