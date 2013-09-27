//
//  UITableViewCell+iOSCompatibilty.h
//  H3
//
//  Created by #pragmapilot on 27/09/13.
//  Copyright (c) 2013 #pragmapilot. All rights reserved.
//

#import <UIKit/UIKit.h>

/** 
 @abstract extends UITableViewCells to offer methods to cope with the change of the class internal structure
 */
@interface UITableViewCell (iOSCompatibilty)

/** 
 @abstract searches the view hierarchy of the given view and finds the UITableViewCell
 @param containedView the contained view
 @return the table view cell or nil if it can't be found
 */
- (UITableViewCell*)tableViewCellFromCellContentSubView:(UIView*)containedView;

/**
 @abstract searches the view hierarchy of the given view and finds the UITableView
 @param containedView the contained view
 @return the table view or nil if it can't be found
 */
- (UITableView*)tableViewFromCellContentSubView:(UIView*)containedView;

@end
