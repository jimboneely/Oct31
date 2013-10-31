//
//  LittleView1.m
//  Oct31
//
//  Created by James Neely on 10/31/13.
//  Copyright (c) 2013 James Neely. All rights reserved.
//

#import "LittleView1.h"

@implementation LittleView1

- (id) initWithFrame: (CGRect) frame
{
	self = [super initWithFrame: frame];
	if (self) {
		// Initialization code
		self.backgroundColor = [UIColor whiteColor];
	}
	return self;
}


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.

- (void) drawRect: (CGRect) rect
{
	CGFloat w = self.bounds.size.width;
	CGFloat h = self.bounds.size.height;
	//CGContextRef c = UIGraphicsGetCurrentContext();
    
    
    UIImage *image = [UIImage imageNamed: @"goofy-2.png"];	//100 by 100
	if (image == nil) {
		NSLog(@"could not find the image");
		return;
	}
    
	//upper left corner of image
	CGPoint point = CGPointMake(
                                (w - image.size.width) / 2,
                                h - image.size.height - h / 20
                                );
    
	[image drawAtPoint: point];
}

@end
