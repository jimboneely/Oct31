//
//  LittleView0.m
//  Oct31
//
//  Created by James Neely on 10/31/13.
//  Copyright (c) 2013 James Neely. All rights reserved.
//

#import "LittleView0.h"

@implementation LittleView0

- (id) initWithFrame: (CGRect) frame
{
	self = [super initWithFrame: frame];
	if (self) {
		// Initialization code
		self.backgroundColor = [UIColor whiteColor];
		button = [UIButton buttonWithType: UIButtonTypeRoundedRect];
        
		//Center the button in the view.
		CGRect b = self.bounds;
		CGSize s = CGSizeMake(300, 40);	//size of button
        
		button.frame = CGRectMake(
                                  b.origin.x + (b.size.width - s.width) / 2,
                                  b.origin.y + (b.size.height - s.height) / 2,
                                  s.width,
                                  s.height
                                  );
        
		button.backgroundColor = [UIColor redColor];
		[button setTitleColor: [UIColor blackColor] forState: UIControlStateNormal];
[button setTitle: @" PRESS, GUESS, THEN SWIPE ➔ !" forState: UIControlStateNormal];
        
		[button addTarget: [UIApplication sharedApplication].delegate
                   action: @selector(touchUpInside:)
         forControlEvents: UIControlEventTouchUpInside
         ];
        
		[self addSubview: button];
	}
    
	return self;
}


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.

- (void) drawRect: (CGRect) rect
{
	// Drawing code
	//Print the name of the class.  See the main function in main.m.
	/*Class class = [self class];
     NSString *string = NSStringFromClass(class);
     CGPoint point = CGPointMake(0.0, 0.0);
     UIFont *font = [UIFont systemFontOfSize: 32];
     [string drawAtPoint: point withFont: font];*/
}

@end
