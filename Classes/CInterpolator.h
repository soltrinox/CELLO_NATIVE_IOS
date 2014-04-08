

#import <Foundation/Foundation.h>

@interface CInterpolator : NSObject

@property (readwrite, nonatomic, copy) NSArray *keys;
@property (readwrite, nonatomic, copy) NSArray *values;

+ (CInterpolator *)interpolator;
+ (CInterpolator *)interpolatorWithValues:(NSArray *)inValues forKeys:(NSArray *)inKeys;
+ (CInterpolator *)interpolatorWithDictionary:(NSDictionary *)inDictionary;

- (CGFloat)interpolatedValueForKey:(CGFloat)key;

@end

#pragma mark -

@interface CInterpolator (Convenience)

- (NSArray *)items;

- (void)enumerateKeysAndObjectsOptions:(NSEnumerationOptions)opts usingBlock:(void (^)(id key, id value, BOOL *stop))block;;
- (void)enumerateKeysAndObjectsUsingBlock:(void (^)(id key, id value, BOOL *stop))block;;

- (CInterpolator *)interpolatorWithReflection:(BOOL)inInvertValues;

- (NSArray *)interpolatedValuesForKeys:(NSArray *)inKeys;

@end
