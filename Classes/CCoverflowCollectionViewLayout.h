

#import <UIKit/UIKit.h>

@interface CCoverflowCollectionViewLayout : UICollectionViewLayout
@property (readwrite, nonatomic, assign) CGSize cellSize;
@property (readwrite, nonatomic, assign) CGFloat cellSpacing;
@property (readwrite, nonatomic, assign) BOOL snapToCells;
@property (readonly, nonatomic, strong) NSIndexPath *currentIndexPath;
@end
