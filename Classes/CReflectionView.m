

#import "CReflectionView.h"

#import <QuartzCore/QuartzCore.h>

@interface CReflectionView ()
@property (readwrite, nonatomic, strong) CAGradientLayer *gradientLayer;
@end

#pragma mark -

@implementation CReflectionView

@synthesize gradientLayer = _gradientLayer;

- (id)initWithCoder:(NSCoder *)inCoder
    {
    if ((self = [super initWithCoder:inCoder]) != NULL)
        {
		self.layer.transform = CATransform3DMakeScale(1.0, -1.0, 1.0);
		self.layer.mask = self.gradientLayer;
        }
    return(self);
    }

- (id)initWithFrame:(CGRect)inFrame
    {
    if ((self = [super initWithFrame:inFrame]) != NULL)
        {
		self.layer.transform = CATransform3DMakeScale(1.0, -1.0, 1.0);
		self.layer.mask = self.gradientLayer;
        }
    return(self);
    }

- (void)setFrame:(CGRect)frame
	{
	[super setFrame:frame];

	if (_gradientLayer)
		{
		_gradientLayer.frame = self.layer.bounds;
		}
	}

- (void)setImage:(UIImage *)image
	{
	_image = image;

	self.layer.contents = (__bridge id)[image CGImage];
	const CGFloat theHeight = self.bounds.size.height / _image.size.height;
	self.layer.contentsRect = (CGRect){
		.origin = { .x = 0.0f, .y = 1.0f - theHeight },
		.size = { .width = 1.0f, .height = theHeight },
		};
	}

- (CAGradientLayer *)gradientLayer
	{
	if (_gradientLayer == NULL)
		{
		_gradientLayer = [CAGradientLayer layer];
		_gradientLayer.frame = self.layer.bounds;
		_gradientLayer.colors = @[
			(__bridge id)[UIColor colorWithWhite:1.0 alpha:0.0].CGColor,
			(__bridge id)[UIColor colorWithWhite:1.0 alpha:0.8].CGColor,
			];
		}
	return(_gradientLayer);
	}

@end
