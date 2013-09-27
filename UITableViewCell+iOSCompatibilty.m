//
//  UITableViewCell+iOSCompatibilty.m
//  H3
//
//  Created by Rodrigo on 27/09/13.
//  Copyright (c) 2013 appy. All rights reserved.
//

#import "UITableViewCell+iOSCompatibilty.h"

@implementation UITableViewCell (iOSCompatibilty)

- (UITableViewCell*)tableViewCellFromCellContentSubView:(UIView*)containedView
{
    if(! containedView.superview)
        return nil;

    if(! [containedView.superview isKindOfClass:[UITableViewCell class]])
    {
        return [self tableViewCellFromCellContentSubView:containedView.superview];
    }
    
    return (UITableViewCell*) containedView.superview;
}

- (UITableView*)tableViewFromCellContentSubView:(UIView*)containedView
{
    if(! containedView.superview)
        return nil;
        
    if(! [containedView.superview isKindOfClass:[UITableView class]])
    {
        return [self tableViewFromCellContentSubView:containedView.superview];
    }
    
    return (UITableView*) containedView.superview;
}


@end
