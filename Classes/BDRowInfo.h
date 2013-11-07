



#import <Foundation/Foundation.h>

/**
 Data transfer object class for a table row/cell's metadata.
 
 The data in this object is computed, filled and used by BDDynamicGridViewController.
 
 __Note__ Row in BDDynamicGridViewController is represented by 
 a subclass UITableViewCell. So you can think of a row as a cell 
 on the UITableViewCell. But _row_ is a better term for describing
 the dynamic grid layout.
 */
@interface BDRowInfo : NSObject <NSCoding, NSCopying>

- (id)copy;

/**
  The number of views contained in this row. 
 */
@property (nonatomic, assign) NSUInteger viewsPerCell;
/**
 The number of views existing before this row.
 */
@property (nonatomic, assign) NSUInteger accumulatedViews;
/**
 The order of this row.
 */
@property (nonatomic, assign) NSUInteger order;
/**
 Whether row is the last row.
 */
@property (nonatomic, assign) BOOL isLastCell;

@end

