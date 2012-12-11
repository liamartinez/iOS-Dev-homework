//
//  lmDogs.h
//  Dec11
//
//  Created by Lia Martinez on 12/11/12.
//  Copyright (c) 2012 Lia Martinez. All rights reserved.
//

#import <UIKit/UIKit.h>

@class lmViewController;

@interface lmDogs : UITextView {
	lmViewController *viewController;
}

- (id) initWithFrame: (CGRect) frame controller: (lmViewController *) c;

@end
