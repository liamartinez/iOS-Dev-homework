//
//  lmViewController.h
//  Dec11
//
//  Created by Lia Martinez on 12/11/12.
//  Copyright (c) 2012 Lia Martinez. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface lmViewController : UIViewController {
	NSString *text;
	@public
	UIImage *dogPic;
}

- (id) initWithText: (NSString *) t
			  title: (NSString *) title
			  image: (UIImage *) image
			picture: (UIImage *) picture 
			  badge: (NSString *) badge;

@property (nonatomic, copy) IBOutlet NSString *text;


@end
