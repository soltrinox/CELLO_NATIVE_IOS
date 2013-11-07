

#import <UIKit/UIKit.h>
@class BDRowInfo;
@protocol BDDynamicGridViewDelegate <NSObject>

/**
 @return the maximum number of views for each row.
 */
- (NSUInteger)maximumViewsPerCell;

/**
 @return The number of views in total.
 */
- (NSUInteger)numberOfViews;


/**
 This method is called to retreive the view for displayed at the specified index.
 @param index the index of the view
 @param rowInfo the information of the row this view appears in.
 @return the UIView to display at specified index.
 */
- (UIView*) viewAtIndex:(NSUInteger)index rowInfo:(BDRowInfo*)rowInfo;



@optional

/**
 Instead of letting BDDynamicGridViewController decide layout, you
 can supply the class with your own layout by implementing this method.
 
 If this method is implemented, -maximumViewsPerCell and -numberOfViews have
 no effect.
 
 @return an array of BDRowInfo describing your own layout.
 */
- (NSArray*) customLayout;


/**
 Minimum number of views per row.
 1 is default if not implemented or when returning zero.
 */
- (NSUInteger)minimumViewsPerCell;

/**
 This method is called when long press is recognized.
 */
- (void)longPressDidBeginAtView:(UIView*)view index:(NSUInteger)index;
/**
 This method is called when long press ends and before the onLongPress block is executed.
 */
- (void)longPressDidEndAtView:(UIView*)view index:(NSUInteger)index;


/**
 @name Scrolling events
 
 In order to help optimize view loading, the class provides these methods that
 get called when events happen.
 */

/**
 This method gets called when grid view is scrolled with some velocity.
 Easy scrolling will not trigger this call.
 */
- (void) gridViewWillStartScrolling;

/**
 This method gets called when grid view's scrolling is going to halt.
 */
- (void) gridViewWillEndScrolling;


/**
 This method gets called when grid view's scrolling comes to a halt.
 */
- (void) gridViewDidEndScrolling;


/**
 This method is called to determine the height of the specified row.
 @param rowInfo the row which the grid view needs to know its height.
 @return height of row in CGFloat.
 */
- (CGFloat) rowHeightForRowInfo:(BDRowInfo*)rowInfo;

/**
 This method is calleed when the specified row is about to be displayed.
 @param rowInfo the row about to be displayed.
 */
- (void)willDisplayRow:(BDRowInfo*)rowInfo;

@end
