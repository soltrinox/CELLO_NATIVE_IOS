


#import <UIKit/UIKit.h>
#import "BDRowInfo.h"
/**
 Layout style
 */
enum BDDynamicGridCellLayoutStyle {
    /**
    Each view is made aspect fit.
     */
    BDDynamicGridCellLayoutStyleEven = 0,
    /**
     Each view is made aspect fill and its size varying to fill the cell.
     */
    BDDynamicGridCellLayoutStyleFill = 1
    };
typedef NSUInteger BDDynamicGridCellLayoutStyle;

/**
 This class is responsible for laying out each table row.
 */
@interface BDDynamicGridCell : UITableViewCell{
    
}
/**
 Designated Initializer.
 */
- (id)initWithLayoutStyle:(BDDynamicGridCellLayoutStyle)layoutStyle reuseIdentifier:(NSString*)cellId;


/**
 Sets UIViews the cell and lays them out in the process based on
 the cell's BDDynamicGridCellLayoutStyle. 
 
 To clear all views, set nil or zero NSArray to this method.
 */
- (void) setViews:(NSArray*)views;


- (void) layoutSubviewsAnimated:(BOOL)animated;

/**
 the cell's BDDynamicGridCellLayoutStyle.
 */
@property (nonatomic, assign, readonly) BDDynamicGridCellLayoutStyle layoutStyle;
/**
 Width of each view's border.
 */
@property (nonatomic, assign) CGFloat viewBorderWidth;
/**
 row info associated with this cell.
 */
@property (nonatomic, strong) BDRowInfo* rowInfo;

/**
 The view that grid views are contained in.
 */
@property (nonatomic, strong, readonly) UIView* gridContainerView;



@end
