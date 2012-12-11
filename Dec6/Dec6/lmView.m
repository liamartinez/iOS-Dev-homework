//
//  lmView.m
//  Dec6
//
//  Created by Lia Martinez on 12/6/12.
//  Copyright (c) 2012 Lia Martinez. All rights reserved.
//

#import "lmView.h"
#import "lmViewController.h"

@implementation lmView

- (id)initWithFrame:(CGRect)frame controller: (lmViewController *) c
{
    self = [super initWithFrame:frame];
    if (self) {
		self.backgroundColor = [UIColor whiteColor];
		viewController = c;
        // Initialization code
    }
    return self;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end
