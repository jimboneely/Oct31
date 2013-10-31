//
//  BigView.h
//  Oct31
//
//  Created by James Neely on 10/31/13.
//  Copyright (c) 2013 James Neely. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BigView: UIView {
	//holds the two subviews we transtion between
	NSArray *views;
    
	//index in views of the currently displayed little view: 0 or 1
	NSUInteger index;
}

@end
