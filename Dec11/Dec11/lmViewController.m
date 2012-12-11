//
//  lmViewController.m
//  Dec11
//
//  Created by Lia Martinez on 12/11/12.
//  Copyright (c) 2012 Lia Martinez. All rights reserved.
//

#import "lmViewController.h"
#import "lmDogs.h"

@interface lmViewController ()

@end

@implementation lmViewController
@synthesize text;

- (id) initWithText: (NSString *) t
			  title: (NSString *) title
			  image: (UIImage *) image
			picture: (UIImage *) picture 
			  badge: (NSString *) badge {
	
	self = [super initWithNibName: nil bundle: nil];
	if (self != nil) {
		self.title = title;
		self.tabBarItem.image = image;
		self.tabBarItem.badgeValue = badge;
		self.text = t;		//text = [t copy];
		self->dogPic = picture;
	}
	
	return self;
}

- (void) loadView
{
	CGRect frame = [UIScreen mainScreen].applicationFrame;
	self.view = [[lmDogs alloc] initWithFrame: frame controller: self];
}


- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
