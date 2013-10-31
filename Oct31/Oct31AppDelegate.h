//
//  Oct31AppDelegate.h
//  Oct31
//
//  Created by James Neely on 10/31/13.
//  Copyright (c) 2013 James Neely. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AudioToolbox/AudioToolbox.h>	//needed for SystemSoundID
@class LittleView0;
@class BigView;

@interface Oct31AppDelegate: UIResponder <UIApplicationDelegate> {
	LittleView0 *littleview;
    BigView *bigView;
	UIWindow *_window;
    SystemSoundID sid;
}

- (void) touchUpInside: (id) sender;
@property (strong, nonatomic) UIWindow *window;

@end
