#import <Foundation/Foundation.h>

@class model__id;
@class model_IMAGES;
@class model_PRODUCER;
@class model_TYPE;
@class model_VINTAGE;
@class model_VARIETAL;
@class model_DESIGNATION;
@class model_VINEYARD;
@class model_SUBREGION;
@class model_APPELLATION;
@class model_DETAILS;
@class model_MEDIA;
@class model_NOTE;

@interface wine : NSObject
{
    model__id * _id;
    NSString * CTID;
    NSString * FOOD;
    NSString * NOTE_CT;
    NSString * CELLAR_SCORE;
    model_IMAGES * IMAGES;
    NSString * VINTAGE;
    NSString * TYPE;
    NSString * PRODUCER;
    NSString * VARIETAL;
    NSString * DESIGNATION;
    NSString * VINEYARD;
    NSString * COUNTRY;
    NSString * REGION;
    NSString * SUBREGION;
    NSString * APPELLATION;
    NSString * BUYLINK;
    model_DETAILS * DETAILS;
    model_MEDIA * MEDIA;
    NSMutableArray * NOTES;
}

@property(nonatomic,retain) model__id * _id;
@property(nonatomic,retain) NSString * CTID;
@property(nonatomic,retain) NSString * FOOD;
@property(nonatomic,retain) NSString * NOTE_CT;
@property(nonatomic,retain) NSString * CELLAR_SCORE;
@property(nonatomic,retain) model_IMAGES * IMAGES;
@property(nonatomic,retain) NSString * VINTAGE;
@property(nonatomic,retain) NSString * TYPE;
@property(nonatomic,retain) NSString * PRODUCER;
@property(nonatomic,retain) NSString * VARIETAL;
@property(nonatomic,retain) NSString * DESIGNATION;
@property(nonatomic,retain) NSString * VINEYARD;
@property(nonatomic,retain) NSString * COUNTRY;
@property(nonatomic,retain) NSString * REGION;
@property(nonatomic,retain) NSString * SUBREGION;
@property(nonatomic,retain) NSString * APPELLATION;
@property(nonatomic,retain) NSString * BUYLINK;
@property(nonatomic,retain) model_DETAILS * DETAILS;
@property(nonatomic,retain) model_MEDIA * MEDIA;
@property(nonatomic,retain) NSMutableArray * NOTES;

+ (id) objectWithDictionary:(NSDictionary*)dictionary;
- (id) initWithDictionary:(NSDictionary*)dictionary;

@end


@interface model__id : NSObject
{
    NSString * $id;
}

@property(nonatomic,retain) NSString * $id;

+ (id) objectWithDictionary:(NSDictionary*)dictionary;
- (id) initWithDictionary:(NSDictionary*)dictionary;

@end


@interface model_IMAGES : NSObject
{
    NSString * IMAGE_CT;
    NSMutableArray * URLS;
}

@property(nonatomic,retain) NSString * IMAGE_CT;
@property(nonatomic,retain) NSMutableArray * URLS;

+ (id) objectWithDictionary:(NSDictionary*)dictionary;
- (id) initWithDictionary:(NSDictionary*)dictionary;

@end


@interface model_PRODUCER : NSObject
{
    NSString * INAME;
    NSString * UUID;
}

@property(nonatomic,retain) NSString * INAME;
@property(nonatomic,retain) NSString * UUID;

+ (id) objectWithDictionary:(NSDictionary*)dictionary;
- (id) initWithDictionary:(NSDictionary*)dictionary;

@end


@interface model_TYPE : NSObject
{
    NSString * INAME;
    NSString * UUID;
}

@property(nonatomic,retain) NSString * INAME;
@property(nonatomic,retain) NSString * UUID;

+ (id) objectWithDictionary:(NSDictionary*)dictionary;
- (id) initWithDictionary:(NSDictionary*)dictionary;

@end


@interface model_VINTAGE : NSObject
{
    NSString * INAME;
    NSString * UUID;
}

@property(nonatomic,retain) NSString * INAME;
@property(nonatomic,retain) NSString * UUID;

+ (id) objectWithDictionary:(NSDictionary*)dictionary;
- (id) initWithDictionary:(NSDictionary*)dictionary;

@end


@interface model_VARIETAL : NSObject
{
    NSString * INAME;
    NSString * UUID;
}

@property(nonatomic,retain) NSString * INAME;
@property(nonatomic,retain) NSString * UUID;

+ (id) objectWithDictionary:(NSDictionary*)dictionary;
- (id) initWithDictionary:(NSDictionary*)dictionary;

@end


@interface model_DESIGNATION : NSObject
{
    NSString * INAME;
    NSString * UUID;
}

@property(nonatomic,retain) NSString * INAME;
@property(nonatomic,retain) NSString * UUID;

+ (id) objectWithDictionary:(NSDictionary*)dictionary;
- (id) initWithDictionary:(NSDictionary*)dictionary;

@end


@interface model_VINEYARD : NSObject
{
    NSString * INAME;
    NSString * UUID;
}

@property(nonatomic,retain) NSString * INAME;
@property(nonatomic,retain) NSString * UUID;

+ (id) objectWithDictionary:(NSDictionary*)dictionary;
- (id) initWithDictionary:(NSDictionary*)dictionary;

@end


@interface model_SUBREGION : NSObject
{
    NSString * INAME;
    NSString * UUID;
}

@property(nonatomic,retain) NSString * INAME;
@property(nonatomic,retain) NSString * UUID;

+ (id) objectWithDictionary:(NSDictionary*)dictionary;
- (id) initWithDictionary:(NSDictionary*)dictionary;

@end


@interface model_APPELLATION : NSObject
{
    NSString * INAME;
    NSString * UUID;
}

@property(nonatomic,retain) NSString * INAME;
@property(nonatomic,retain) NSString * UUID;

+ (id) objectWithDictionary:(NSDictionary*)dictionary;
- (id) initWithDictionary:(NSDictionary*)dictionary;

@end


@interface model_DETAILS : NSObject
{
    NSMutableArray * PRODUCER;
    NSMutableArray * TYPE;
    NSMutableArray * VINTAGE;
    NSMutableArray * VARIETAL;
    NSMutableArray * DESIGNATION;
    NSMutableArray * VINEYARD;
    NSMutableArray * SUBREGION;
    NSMutableArray * APPELLATION;
}

@property(nonatomic,retain) NSMutableArray * PRODUCER;
@property(nonatomic,retain) NSMutableArray * TYPE;
@property(nonatomic,retain) NSMutableArray * VINTAGE;
@property(nonatomic,retain) NSMutableArray * VARIETAL;
@property(nonatomic,retain) NSMutableArray * DESIGNATION;
@property(nonatomic,retain) NSMutableArray * VINEYARD;
@property(nonatomic,retain) NSMutableArray * SUBREGION;
@property(nonatomic,retain) NSMutableArray * APPELLATION;

+ (id) objectWithDictionary:(NSDictionary*)dictionary;
- (id) initWithDictionary:(NSDictionary*)dictionary;

@end


@interface model_MEDIA : NSObject
{
    NSMutableArray * IMAGES;
}

@property(nonatomic,retain) NSMutableArray * IMAGES;

+ (id) objectWithDictionary:(NSDictionary*)dictionary;
- (id) initWithDictionary:(NSDictionary*)dictionary;

@end


@interface model_NOTE : NSObject
{
    NSString * AUTHOR;
    NSString * NOTE;
    NSString * DATE;
    NSNumber * LEN;
}

@property(nonatomic,retain) NSString * AUTHOR;
@property(nonatomic,retain) NSString * NOTE;
@property(nonatomic,retain) NSString * DATE;
@property(nonatomic,retain) NSNumber * LEN;

+ (id) objectWithDictionary:(NSDictionary*)dictionary;
- (id) initWithDictionary:(NSDictionary*)dictionary;

@end

//JsonModel.h End
