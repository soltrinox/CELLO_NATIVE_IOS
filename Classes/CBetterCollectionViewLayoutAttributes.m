

#import "CBetterCollectionViewLayoutAttributes.h"

@implementation CBetterCollectionViewLayoutAttributes

- (NSString *)description
    {
    return([NSString stringWithFormat:@"%@ (%@)", [super description], self.userInfo]);
    }

- (id)copyWithZone:(NSZone *)zone;
    {
    CBetterCollectionViewLayoutAttributes *theCopy = [super copyWithZone:zone];
	theCopy.shieldAlpha = self.shieldAlpha;
	theCopy.userInfo = [self.userInfo copyWithZone:zone];
	#if DEBUG == 1
	theCopy.debugInfo = self.debugInfo;
	#endif /* DEBUG == 1 */
    return(theCopy);
    }

@end
