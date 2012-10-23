//
//  View.m
//  Oct25
//
//  Created by Lia Martinez on 10/23/12.
//  Copyright (c) 2012 liamartinez.com. All rights reserved.
//

#import "View.h"

@implementation View

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
		self.backgroundColor = [UIColor lightGrayColor]; 
    }
    return self;
}


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
	
	//NSString *greeting = @"It's a nice day."; 
	NSString *greeting = NSLocalizedString(@"Greeting", @"displayed with drawAtPoint:");
	UIFont *textFont = [UIFont systemFontOfSize: 15.0]; 
	
	CGSize textSize = [greeting sizeWithFont:textFont]; 
	
	CGFloat x = self.bounds.origin.x + self.bounds.size.width/2 - textSize.width/2;
	CGFloat y = self.bounds.origin.y + self.bounds.size.height/2 - textSize.height/2;
	
	CGPoint point = CGPointMake (x, y);

	
	[greeting drawAtPoint: point withFont:textFont];
	
	
}


@end
