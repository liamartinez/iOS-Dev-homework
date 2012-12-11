//
//  lmViewController.m
//  Dec6
//
//  Created by Lia Martinez on 12/6/12.
//  Copyright (c) 2012 Lia Martinez. All rights reserved.
//

#import "lmViewController.h"
#import "lmView.h"

@interface lmViewController ()

@end

@implementation lmViewController

- (void) loadView {
	CGRect frame = [UIScreen mainScreen].applicationFrame;
	self.view = [[lmView alloc] initWithFrame: frame controller: self];
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


- (BOOL) shouldAutorotateToInterfaceOrientation: (UIInterfaceOrientation) interfaceOrientation
{
	// Return YES for supported orientations
	//return (interfaceOrientation == UIInterfaceOrientationPortrait);
	return YES;	//allow every interface orientation
}

@end
