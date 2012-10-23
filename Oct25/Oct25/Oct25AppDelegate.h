//
//  Oct25AppDelegate.h
//  Oct25
//
//  Created by Lia Martinez on 10/23/12.
//  Copyright (c) 2012 liamartinez.com. All rights reserved.
//

#import <UIKit/UIKit.h>

@class View;

@interface Oct25AppDelegate : UIResponder <UIApplicationDelegate>{
	View *view; 
	UIWindow *window_; 
}

@property (strong, nonatomic) UIWindow *window;

@end
