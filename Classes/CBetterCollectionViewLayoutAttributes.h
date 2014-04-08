

#import <UIKit/UIKit.h>

@interface CBetterCollectionViewLayoutAttributes : UICollectionViewLayoutAttributes
@property (readwrite, nonatomic, assign) CGFloat shieldAlpha;
@property (readwrite, nonatomic, strong) id <NSCopying> userInfo;
#if DEBUG == 1
@property (readwrite, nonatomic, strong) NSString *debugInfo;
#endif /* DEBUG == 1 */
@end
