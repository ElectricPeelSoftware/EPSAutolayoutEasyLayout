//
//  NSLayoutConstraint+EasyLayout.m
//  EPSAutolayoutEasyLayout
//
//  Created by Justin Stuart on 2/20/15.
//  Copyright (c) 2015 Electric Peel, LLC. All rights reserved.
//

#import "NSLayoutConstraint+EasyLayout.h"

@implementation NSLayoutConstraint (EasyLayout)

+ (NSArray *)alignViews:(NSArray *)views byAttribute:(NSLayoutAttribute)attribute {
    NSMutableArray *contraints = [[NSMutableArray alloc] init];
    for (UIView *view in views) {
        if (view != [views firstObject]) {
            [contraints addObject:[NSLayoutConstraint constraintWithItem:view attribute:attribute relatedBy:NSLayoutRelationEqual toItem:views[0] attribute:attribute multiplier:1 constant:0]];
        }
    }

    return contraints;
}

+ (NSArray *)verticallySpaceViews:(NSArray *)views withSpacing:(CGFloat)spacing {
    NSMutableArray *contraints = [[NSMutableArray alloc] init];
    for (UIView *view in views) {
        if (view != [views firstObject]) {
            NSInteger index = [views indexOfObject:view] - 1;
            [contraints addObject:[NSLayoutConstraint constraintWithItem:view attribute:NSLayoutAttributeTop relatedBy:NSLayoutRelationEqual toItem:views[index] attribute:NSLayoutAttributeBottom multiplier:1 constant:spacing]];
        }
    }

    return contraints;
}

+ (NSArray *)horizontallySpaceViews:(NSArray *)views withSpacing:(CGFloat)spacing {
    NSMutableArray *contraints = [[NSMutableArray alloc] init];
    for (UIView *view in views) {
        if (view != [views firstObject]) {
            NSInteger index = [views indexOfObject:view] - 1;
            [contraints addObject:[NSLayoutConstraint constraintWithItem:view attribute:NSLayoutAttributeLeft relatedBy:NSLayoutRelationEqual toItem:views[index] attribute:NSLayoutAttributeRight multiplier:1 constant:spacing]];
        }
    }

    return contraints;
}

@end
