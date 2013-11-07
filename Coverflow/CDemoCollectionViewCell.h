

#import "CBetterCollectionViewCell.h"

@class CReflectionView;

@interface CDemoCollectionViewCell : CBetterCollectionViewCell
@property (readwrite, nonatomic, weak) IBOutlet UIImageView *imageView;
@property (readwrite, nonatomic, weak) IBOutlet CReflectionView *reflectionImageView;
@end
