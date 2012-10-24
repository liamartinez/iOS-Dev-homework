//
//  View.m
//  Oct25
//
//  Created by Lia Martinez on 10/23/12.
//  Copyright (c) 2012 liamartinez.com. All rights reserved.
//

#import "View.h"
#import "Date.h"

@implementation View

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
		self.backgroundColor = [UIColor lightGrayColor]; 
		date = [[Date alloc] init];
    }
    return self;
}


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
	
	//NSString *greeting = @"It's a nice day."; 
	//NSString *greeting = NSLocalizedString(@"Greeting", @"displayed with drawAtPoint:");

	
	NSString *dogSentence = [NSString stringWithFormat:@"The sound a dog makes is: %@", NSLocalizedString(@"Dog", @"displayed with drawAtPoint:")];
	NSString *catSentence = [NSString stringWithFormat:@"The sound a cat makes is: %@", NSLocalizedString(@"Cat", @"displayed with drawAtPoint:")];
	NSString *chickenSentence = [NSString stringWithFormat:@"The sound a chicken makes is: %@", NSLocalizedString(@"Chicken", @"displayed with drawAtPoint:")];

	NSString *yearString = [NSString stringWithFormat:@"This year is: %d", [date year]];
	
	UIFont *textFont = [UIFont fontWithName:@"HelveticaNeue-Bold" size:14.0];
	
	CGSize textSizeD = [dogSentence sizeWithFont:textFont]; 
	CGSize textSizeCa = [catSentence sizeWithFont:textFont]; 
	CGSize textSizeCh = [chickenSentence sizeWithFont:textFont]; 
	CGSize textSizeDa = [yearString sizeWithFont:textFont]; 
	
	CGFloat middle = self.bounds.origin.x + self.bounds.size.width/2;
	
	CGFloat xD = middle - textSizeD.width/2;
	CGFloat xCa = middle - textSizeCa.width/2;
	CGFloat xCh = middle - textSizeCh.width/2;
	CGFloat xDate = middle - textSizeDa.width/2;
	
	CGFloat y = self.bounds.origin.y + self.bounds.size.height/4;
	
	[dogSentence drawAtPoint: CGPointMake (xD, y) withFont:textFont];
	[catSentence drawAtPoint: CGPointMake (xCa, y + (textSizeD.height*2)) withFont:textFont];
	[chickenSentence drawAtPoint: CGPointMake (xCh, y + (textSizeD.height*4)) withFont:textFont];
	
	[yearString drawAtPoint:CGPointMake (xDate, self.bounds.size.height - textSizeD.height*2) withFont:textFont];
	
	
}


@end
