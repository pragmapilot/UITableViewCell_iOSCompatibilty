UITableViewCell+iOSCompatibilty
===============================

Description
-----------

Extends UITableViewCells to offer methods to cope with the change of the class internal structure.

As you might know or found out with the advent of iOS7 Apple changed the internal UITableViewCell structure. This is no big deal in most of the situations since you will be acessing just the public properties.
You can see [here](http://www.curiousfind.com/blog/646) the old and new strucutures.

If you have code that need to access the table or the cell from one of the views in the UITableViewCell content subviews you will find a crash on iOS 7.
Such an example might be a button inside the cell's content whose action might need the cell's index. 

```ObjectiveC
// Will break in iOS6
-(void) contentButtonTapped:(id)sender 
{
    UIButton *button = (UIButton*) sender.superview;
    UITableViewCell *cell = (UITableViewCell*) button.superview;
    UITableView *tableView = (UITableView*) cell.superview;
    NSIndexPath *indexPath = [tableView indexPathForCell:cell];
    // Do something with indexPath 
}
```

Use **UITableViewCell+iOSCompatibilty** to avoid this issue. 

```ObjectiveC
// Won't break in iOS6 nor iOS7
-(void) contentButtonTapped:(id)sender 
{
    UIButton *button = (UIButton*) sender.superview;
    UITableViewCell *cell = (UITableViewCell*) [self tableViewCellFromCellContentSubView:button];
    UITableView *tableView = (UITableView*) [self tableViewFromCellContentSubView:button];
    NSIndexPath *indexPath = [tableView indexPathForCell:cell];
    // Do something with indexPath 
}
```

Usage
-----

Drag the **UITableViewCell+iOSCompatibilty** source files into your project and use them like the example above.
