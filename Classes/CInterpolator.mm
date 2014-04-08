

#import "CInterpolator.h"

#include "Interpolator.h"

// TODO interpolators for points, sizes, transforms, colors, etc.

@interface CInterpolator ()
@property (readwrite, nonatomic, assign) Interpolator <CGFloat> *KV;
@end

@implementation CInterpolator

+ (CInterpolator *)interpolator;
    {
    return([[self alloc] init]);
    }

+ (CInterpolator *)interpolatorWithValues:(NSArray *)inValues forKeys:(NSArray *)inKeys;
	{
	CInterpolator *theInterpolator = [self interpolator];
	theInterpolator.keys = inKeys;
	theInterpolator.values = inValues;
	return(theInterpolator);
	}

+ (CInterpolator *)interpolatorWithDictionary:(NSDictionary *)inDictionary
	{
	NSArray *theKeys = [[inDictionary allKeys] sortedArrayUsingSelector:@selector(compare:)];
	NSMutableArray *theValues = [NSMutableArray array];
	for (id theKey in theKeys)
		{
		[theValues addObject:inDictionary[theKey]];
		}

	CInterpolator *theInterpolator = [self interpolator];
	theInterpolator.keys = theKeys;
	theInterpolator.values = theValues;
	return(theInterpolator);
	}

- (void)dealloc
    {
    if (_KV)
        {
        delete _KV;
        }
    }

- (NSString *)description
    {
    return([NSString stringWithFormat:@"%@ %@", [super description], [self items]]);
    }

- (CGFloat)interpolatedValueForKey:(CGFloat)key
    {
    if (_KV == NULL)
        {
        [self populate];
        }

    return(_KV->interpolate(key));
    }

- (void)populate
    {
    NSParameterAssert(_keys.count > 0);
    // NSParameterAssert([_keys isSorted]);
    NSParameterAssert(self.keys.count == self.values.count);

    // #########################################################################

    _KV = new Interpolator <CGFloat> ();
    for (NSUInteger N = 0; N != self.keys.count; ++N)
        {
        _KV->addKV([self.keys[N] floatValue], [self.values[N] floatValue]);
        }
    }

@end

#pragma mark -

@implementation CInterpolator (Convenience)

- (NSArray *)items
	{
	NSMutableArray *theItems = [NSMutableArray array];
	[self enumerateKeysAndObjectsUsingBlock:^(id key, id value, BOOL *stop) {
		[theItems addObject:@[ key, value ]];
		}];
	return(theItems);
	}

- (void)enumerateKeysAndObjectsOptions:(NSEnumerationOptions)opts usingBlock:(void (^)(id key, id value, BOOL *stop))block
	{
	NSParameterAssert(block != NULL);
	[self.keys enumerateObjectsWithOptions:opts usingBlock:^(id key, NSUInteger idx, BOOL *stop) {
		id value = self.values[idx];
		block(key, value, stop);
		}];
	}

- (void)enumerateKeysAndObjectsUsingBlock:(void (^)(id key, id value, BOOL *stop))block
	{
	[self enumerateKeysAndObjectsOptions:0 usingBlock:block];
	}

- (CInterpolator *)interpolatorWithReflection:(BOOL)inInvertValues
	{
	NSMutableArray *theKeys = [self.keys mutableCopy];
	NSMutableArray *theValues = [self.values mutableCopy];

	[self enumerateKeysAndObjectsOptions:NSEnumerationReverse usingBlock:^(id key, id value, BOOL *stop) {
		[theKeys addObject:@(-[key doubleValue])];
		[theValues addObject:@(inInvertValues ? -[value doubleValue] : [value doubleValue])];
		}];

	CInterpolator *theInterpolator = [CInterpolator interpolatorWithValues:theValues forKeys:theKeys];
	return(theInterpolator);
	}

- (NSArray *)interpolatedValuesForKeys:(NSArray *)inKeys
    {
    NSMutableArray *theValues = [NSMutableArray array];
    for (NSNumber *theKey in inKeys)
        {
        CGFloat theValue = [self interpolatedValueForKey:[theKey floatValue]];
        [theValues addObject:@(theValue)];
        }
    return(theValues);
    }

@end
