

#import "CBetterCollectionViewCell.h"

#import <QuartzCore/QuartzCore.h>

#import "CBetterCollectionViewLayoutAttributes.h"

@interface CBetterCollectionViewCell ()
@property (readwrite, nonatomic, strong) CALayer *shieldLayer;
#if DEBUG == 1
@property (readwrite, nonatomic, strong) UILabel *debugInfoLabel;
#endif
@end

#pragma mark -

@implementation CBetterCollectionViewCell

- (void)applyLayoutAttributes:(UICollectionViewLayoutAttributes *)layoutAttributes
    {
    [super applyLayoutAttributes:layoutAttributes];

    CBetterCollectionViewLayoutAttributes *theLayoutAttributes = (CBetterCollectionViewLayoutAttributes *)layoutAttributes;
    if (self.shieldLayer == NULL)
        {
        self.shieldLayer = [self makeShieldLayer];
        self.shieldLayer.zPosition = INFINITY;
        [self.layer addSublayer:self.shieldLayer];
        }

    self.shieldLayer.opacity = theLayoutAttributes.shieldAlpha;

	#if DEBUG == 1
	if (theLayoutAttributes.debugInfo.length > 0)
		{
		if (self.debugInfoLabel == NULL)
			{
			self.debugInfoLabel = [[UILabel alloc] initWithFrame:CGRectInset(self.bounds, 10, 10)];
			self.debugInfoLabel.numberOfLines = 0;
			self.debugInfoLabel.lineBreakMode = NSLineBreakByCharWrapping;
			self.debugInfoLabel.backgroundColor = [UIColor clearColor];
			self.debugInfoLabel.textColor = [UIColor redColor];
			[self addSubview:self.debugInfoLabel];
			}
		self.debugInfoLabel.text = theLayoutAttributes.debugInfo;

		}
	else
		{
		[self.debugInfoLabel removeFromSuperview];
		self.debugInfoLabel = NULL;
		}
	#endif /* DEBUG == 1 */
    }

#pragma mark -

- (CALayer *)makeShieldLayer
    {
    CALayer *theShield = [CALayer layer];
    theShield.frame = self.bounds;
    theShield.backgroundColor = [UIColor blackColor].CGColor;
    return(theShield);
    }

@end
