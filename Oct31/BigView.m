//
//  BigView.m
//  Oct31
//
//  Created by James Neely on 10/31/13.
//  Copyright (c) 2013 James Neely. All rights reserved.
//

#import "BigView.h"
#import "LittleView0.h"
#import "LittleView1.h"

@implementation BigView

- (id) initWithFrame: (CGRect) frame
{
	self = [super initWithFrame: frame];
	if (self) {
		// Initialization code
        
		//Don't bother with a background color--
		//this BigView is entirely occupied by a LittleView.
		
		views = [NSArray arrayWithObjects:
                 [[LittleView0 alloc] initWithFrame: self.bounds],
                 [[LittleView1 alloc] initWithFrame: self.bounds],
                 nil
                 ];
        
		index = 0;	//LittleView0 is the one that's initially visible.
		[self addSubview: [views objectAtIndex: index]];
        
        UISwipeGestureRecognizer *recognizer = [[UISwipeGestureRecognizer alloc]
                                                initWithTarget: self action: @selector(swipe:)
                                                ];
		recognizer.direction = UISwipeGestureRecognizerDirectionRight;
		[self addGestureRecognizer: recognizer];
        
	}
	return self;
}

//- (void) touchesEnded: (NSSet *) touches withEvent: (UIEvent *) event {

/*
 Assume a swipe has just ended.  A more complicated program could
 distinguish between left vs. rights wipes, and perform a
 UIViewAnimationOptionTransitionFlipFromLeft or a
 UIViewAnimationOptionTransitionFlipFromRight.
 
 In UIViewAnimationOptionTransitionFlipFromLeft, the left edge moves
 to the right, and the right edge moves away from the user and to the
 left.
 */
/*
 NSUInteger newIndex = 1 - index;	//toggle the index
 
 [UIView transitionFromView: [views objectAtIndex: index]
 toView: [views objectAtIndex: newIndex]
 duration: 2.25
 options: UIViewAnimationOptionTransitionFlipFromLeft
 completion: NULL
 ];
 
 index = newIndex;
 */



 // Only override drawRect: if you perform custom drawing.
 // An empty implementation adversely affects performance during animation.
 - (void) drawRect: (CGRect) rect
 {
 // Drawing code

}
 

- (void) swipe: (UISwipeGestureRecognizer *) recognizer {
	
    NSUInteger newIndex = 1 - index;	//toggle the index
    
	[UIView transitionFromView: [views objectAtIndex: index]
                        toView: [views objectAtIndex: newIndex]
                      duration: 2.25
                       options: UIViewAnimationOptionTransitionFlipFromLeft
                    completion: NULL
     ];
    
	index = newIndex;
    
    
	//for (NSUInteger i = 0; i < recognizer.numberOfTouches; ++i) {
	//	CGPoint p = [recognizer locationOfTouch: i inView: self];
    
	//	}
}
@end
