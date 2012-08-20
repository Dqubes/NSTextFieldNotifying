//
//  UITextFieldNotifying.m
//
//  Created by Dale Myers on 17/08/2012.

/*
    Copyright (c) 2012 Dale Myers

    This software is provided 'as-is', without any express or implied
    warranty. In no event will the authors be held liable for any damages
    arising from the use of this software.

    Permission is granted to anyone to use this software for any purpose,
    including commercial applications, and to alter it and redistribute it
    freely, subject to the following restrictions:

    1. The origin of this software must not be misrepresented; you must not
    claim that you wrote the original software. If you use this software
    in a product, an acknowledgment in the product documentation would be
    appreciated but is not required.

    2. Altered source versions must be plainly marked as such, and must not be
    misrepresented as being the original software.

    3. This notice may not be removed or altered from any source
    distribution.
*/

#import "UITextFieldNotifying.h"

@implementation UITextFieldNotifying

@synthesize delegate;

-(id)init{
    self = [super init];
    if(self){
        [self registerForNotifications];
    }
    return self;
}

-(id)initWithCoder:(NSCoder *)aDecoder{
    self = [super initWithCoder:aDecoder];
    if(self){
        [self registerForNotifications];
    }
    return self;
}

-(id)initWithFrame:(NSRect)frameRect{
    self = [super initWithFrame:frameRect];
    if(self){
        [self registerForNotifications];
    }
    return self;
}

-(void)registerForNotifications{
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(textFieldDidChange:) name:UITextFieldDidChangeNotification object:self];
}

-(void)textFieldDidChange:(NSNotification *)notification{
    [[self delegate] textFieldDidChange:self];
}

@end
