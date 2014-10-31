//
//  MultiSelectTableViewCell.m
//  CortexMobile
//
//  Created by Matt Gallagher on 11/01/09.
//  Copyright 2008 Matt Gallagher. All rights reserved.
//
//  Permission is given to use this source code file, free of charge, in any
//  project, commercial or otherwise, entirely at your risk, with the condition
//  that any redistribution (in part or whole) of source code must retain
//  this copyright and permission notice. Attribution in compiled projects is
//  appreciated but not required.
//

#import "MultiSelectTableViewCell.h"

@implementation MultiSelectTableViewCell

//
// setEditing:animated:
//
// Refreshed the layout when editing is enabled/disabled.
//
- (void)setEditing:(BOOL)editing animated:(BOOL)animated
{
	[self setNeedsLayout];
}

//
// layoutSubviews
//
// When editing, displace everything rightwards to allow space for the
// selection indicator.
//
- (void)layoutSubviews
{
	[UIView beginAnimations:nil context:nil];
	[UIView setAnimationBeginsFromCurrentState:YES];
		
	[super layoutSubviews];

	CGRect contentFrame = self.frame;
	contentFrame.origin.x = 0;
	self.frame = contentFrame;

	[UIView commitAnimations];
}

@end