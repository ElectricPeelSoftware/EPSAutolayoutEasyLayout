//
//  NSLayoutConstraint+EasyLayout.h
//  EPSAutolayoutEasyLayout
//
//  Created by Justin Stuart on 2/20/15.
//  Copyright (c) 2015 Electric Peel, LLC. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface NSLayoutConstraint (EasyLayout)


// Aligns an array of views based on the specified attribute.
+ (NSArray *)alignViews:(NSArray *)views byAttribute:(NSLayoutAttribute)attribute;

// Vertically spaces views with the specified spacing.
+ (NSArray *)verticallySpaceViews:(NSArray *)views withSpacing:(CGFloat)spacing;

// Horizontally spaces views with the specified spacing.
+ (NSArray *)horizontallySpaceViews:(NSArray *)views withSpacing:(CGFloat)spacing;

@end
