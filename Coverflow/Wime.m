#import "Wine.h"



@implementation wine

@synthesize _id;
@synthesize CTID;
@synthesize FOOD;
@synthesize NOTE_CT;
@synthesize CELLAR_SCORE;
@synthesize IMAGES;
@synthesize VINTAGE;
@synthesize TYPE;
@synthesize PRODUCER;
@synthesize VARIETAL;
@synthesize DESIGNATION;
@synthesize VINEYARD;
@synthesize COUNTRY;
@synthesize REGION;
@synthesize SUBREGION;
@synthesize APPELLATION;
@synthesize BUYLINK;
@synthesize DETAILS;
@synthesize MEDIA;
@synthesize NOTES;



+ (id) objectWithDictionary:(NSDictionary*)dictionary
{
    id obj = [[wine alloc] initWithDictionary:dictionary] ;
    return obj;
}

- (id) initWithDictionary:(NSDictionary*)dictionary
{
    self=[super init];
    if(self)
    {

        _id = [[model__id alloc] initWithDictionary:[dictionary objectForKey:@"_id"]];
        CTID = [dictionary objectForKey:@"CTID"];
        FOOD = [dictionary objectForKey:@"FOOD"];
        NOTE_CT = [dictionary objectForKey:@"NOTE_CT"];
        CELLAR_SCORE = [dictionary objectForKey:@"CELLAR_SCORE"];

        IMAGES = [[model_IMAGES alloc] initWithDictionary:[dictionary objectForKey:@"IMAGES"]];
        VINTAGE = [dictionary objectForKey:@"VINTAGE"];
        TYPE = [dictionary objectForKey:@"TYPE"];
        PRODUCER = [dictionary objectForKey:@"PRODUCER"];
        VARIETAL = [dictionary objectForKey:@"VARIETAL"];
        DESIGNATION = [dictionary objectForKey:@"DESIGNATION"];
        VINEYARD = [dictionary objectForKey:@"VINEYARD"];
        COUNTRY = [dictionary objectForKey:@"COUNTRY"];
        REGION = [dictionary objectForKey:@"REGION"];
        SUBREGION = [dictionary objectForKey:@"SUBREGION"];
        APPELLATION = [dictionary objectForKey:@"APPELLATION"];
        BUYLINK = [dictionary objectForKey:@"BUYLINK"];

        DETAILS = [[model_DETAILS alloc] initWithDictionary:[dictionary objectForKey:@"DETAILS"]];

        MEDIA = [[model_MEDIA alloc] initWithDictionary:[dictionary objectForKey:@"MEDIA"]];

        NSArray* temp =  [dictionary objectForKey:@"NOTES"];
        NOTES =  [[NSMutableArray alloc] init];
        for (NSDictionary *d in temp) {
            [NOTES addObject:[model_NOTE objectWithDictionary:d]];
        }
    }
    return self;
}


@end


@implementation model__id

@synthesize $id;

+ (id) objectWithDictionary:(NSDictionary*)dictionary
{
    id obj = [[model__id alloc] initWithDictionary:dictionary] ;
    return obj;
}

- (id) initWithDictionary:(NSDictionary*)dictionary
{
    self=[super init];
    if(self)
    {
        $id = [dictionary objectForKey:@"$id"];
    }
    return self;
}


@end


@implementation model_IMAGES

@synthesize IMAGE_CT;
@synthesize URLS;



+ (id) objectWithDictionary:(NSDictionary*)dictionary
{
    id obj = [[model_IMAGES alloc] initWithDictionary:dictionary] ;
    return obj;
}

- (id) initWithDictionary:(NSDictionary*)dictionary
{
    self=[super init];
    if(self)
    {
        IMAGE_CT = [dictionary objectForKey:@"IMAGE_CT"];

        NSArray* temp =  [dictionary objectForKey:@"URLS"];
        URLS =  [[NSMutableArray alloc] init];
        for (NSDictionary *d in temp) {
            [URLS addObject:d];
        }
    }
    return self;
}


@end


@implementation model_PRODUCER

@synthesize INAME;
@synthesize UUID;



+ (id) objectWithDictionary:(NSDictionary*)dictionary
{
    id obj = [[model_PRODUCER alloc] initWithDictionary:dictionary] ;
    return obj;
}

- (id) initWithDictionary:(NSDictionary*)dictionary
{
    self=[super init];
    if(self)
    {
        INAME = [dictionary objectForKey:@"INAME"];
        UUID = [dictionary objectForKey:@"UUID"];
    }
    return self;
}


@end


@implementation model_TYPE

@synthesize INAME;
@synthesize UUID;



+ (id) objectWithDictionary:(NSDictionary*)dictionary
{
    id obj = [[model_TYPE alloc] initWithDictionary:dictionary] ;
    return obj;
}

- (id) initWithDictionary:(NSDictionary*)dictionary
{
    self=[super init];
    if(self)
    {
        INAME = [dictionary objectForKey:@"INAME"];
        UUID = [dictionary objectForKey:@"UUID"];
    }
    return self;
}


@end


@implementation model_VINTAGE

@synthesize INAME;
@synthesize UUID;



+ (id) objectWithDictionary:(NSDictionary*)dictionary
{
    id obj = [[model_VINTAGE alloc] initWithDictionary:dictionary] ;
    return obj;
}

- (id) initWithDictionary:(NSDictionary*)dictionary
{
    self=[super init];
    if(self)
    {
        INAME = [dictionary objectForKey:@"INAME"];
        UUID = [dictionary objectForKey:@"UUID"];
    }
    return self;
}


@end


@implementation model_VARIETAL

@synthesize INAME;
@synthesize UUID;



+ (id) objectWithDictionary:(NSDictionary*)dictionary
{
    id obj = [[model_VARIETAL alloc] initWithDictionary:dictionary] ;
    return obj;
}

- (id) initWithDictionary:(NSDictionary*)dictionary
{
    self=[super init];
    if(self)
    {
        INAME = [dictionary objectForKey:@"INAME"];
        UUID = [dictionary objectForKey:@"UUID"];
    }
    return self;
}


@end


@implementation model_DESIGNATION

@synthesize INAME;
@synthesize UUID;



+ (id) objectWithDictionary:(NSDictionary*)dictionary
{
    id obj = [[model_DESIGNATION alloc] initWithDictionary:dictionary] ;
    return obj;
}

- (id) initWithDictionary:(NSDictionary*)dictionary
{
    self=[super init];
    if(self)
    {
        INAME = [dictionary objectForKey:@"INAME"];
        UUID = [dictionary objectForKey:@"UUID"];
    }
    return self;
}


@end


@implementation model_VINEYARD

@synthesize INAME;
@synthesize UUID;



+ (id) objectWithDictionary:(NSDictionary*)dictionary
{
    id obj = [[model_VINEYARD alloc] initWithDictionary:dictionary] ;
    return obj;
}

- (id) initWithDictionary:(NSDictionary*)dictionary
{
    self=[super init];
    if(self)
    {
        INAME = [dictionary objectForKey:@"INAME"];
        UUID = [dictionary objectForKey:@"UUID"];
    }
    return self;
}


@end


@implementation model_SUBREGION

@synthesize INAME;
@synthesize UUID;



+ (id) objectWithDictionary:(NSDictionary*)dictionary
{
    id obj = [[model_SUBREGION alloc] initWithDictionary:dictionary] ;
    return obj;
}

- (id) initWithDictionary:(NSDictionary*)dictionary
{
    self=[super init];
    if(self)
    {
        INAME = [dictionary objectForKey:@"INAME"];
        UUID = [dictionary objectForKey:@"UUID"];
    }
    return self;
}


@end


@implementation model_APPELLATION

@synthesize INAME;
@synthesize UUID;



+ (id) objectWithDictionary:(NSDictionary*)dictionary
{
    id obj = [[model_APPELLATION alloc] initWithDictionary:dictionary] ;
    return obj;
}

- (id) initWithDictionary:(NSDictionary*)dictionary
{
    self=[super init];
    if(self)
    {
        INAME = [dictionary objectForKey:@"INAME"];
        UUID = [dictionary objectForKey:@"UUID"];
    }
    return self;
}


@end


@implementation model_DETAILS

@synthesize PRODUCER;
@synthesize TYPE;
@synthesize VINTAGE;
@synthesize VARIETAL;
@synthesize DESIGNATION;
@synthesize VINEYARD;
@synthesize SUBREGION;
@synthesize APPELLATION;



+ (id) objectWithDictionary:(NSDictionary*)dictionary
{
    id obj = [[model_DETAILS alloc] initWithDictionary:dictionary] ;
    return obj;
}

- (id) initWithDictionary:(NSDictionary*)dictionary
{
    self=[super init];
    if(self)
    {

        NSArray* temp =  [dictionary objectForKey:@"PRODUCER"];
        PRODUCER =  [[NSMutableArray alloc] init];
        for (NSDictionary *d in temp) {
            [PRODUCER addObject:[model_PRODUCER objectWithDictionary:d]];
        }

        temp =  [dictionary objectForKey:@"TYPE"];
        TYPE =  [[NSMutableArray alloc] init];
        for (NSDictionary *d in temp) {
            [TYPE addObject:[model_TYPE objectWithDictionary:d]];
        }

        temp =  [dictionary objectForKey:@"VINTAGE"];
        VINTAGE =  [[NSMutableArray alloc] init];
        for (NSDictionary *d in temp) {
            [VINTAGE addObject:[model_VINTAGE objectWithDictionary:d]];
        }

        temp =  [dictionary objectForKey:@"VARIETAL"];
        VARIETAL =  [[NSMutableArray alloc] init];
        for (NSDictionary *d in temp) {
            [VARIETAL addObject:[model_VARIETAL objectWithDictionary:d]];
        }

        temp =  [dictionary objectForKey:@"DESIGNATION"];
        DESIGNATION =  [[NSMutableArray alloc] init];
        for (NSDictionary *d in temp) {
            [DESIGNATION addObject:[model_DESIGNATION objectWithDictionary:d]];
        }

        temp =  [dictionary objectForKey:@"VINEYARD"];
        VINEYARD =  [[NSMutableArray alloc] init];
        for (NSDictionary *d in temp) {
            [VINEYARD addObject:[model_VINEYARD objectWithDictionary:d]];
        }

        temp =  [dictionary objectForKey:@"SUBREGION"];
        SUBREGION =  [[NSMutableArray alloc] init];
        for (NSDictionary *d in temp) {
            [SUBREGION addObject:[model_SUBREGION objectWithDictionary:d]];
        }

        temp =  [dictionary objectForKey:@"APPELLATION"];
        APPELLATION =  [[NSMutableArray alloc] init];
        for (NSDictionary *d in temp) {
            [APPELLATION addObject:[model_APPELLATION objectWithDictionary:d]];
        }
    }
    return self;
}


@end


@implementation model_MEDIA

@synthesize IMAGES;

+ (id) objectWithDictionary:(NSDictionary*)dictionary
{
    id obj = [[model_MEDIA alloc] initWithDictionary:dictionary] ;
    return obj;
}

- (id) initWithDictionary:(NSDictionary*)dictionary
{
    self=[super init];
    if(self)
    {

        NSArray* temp =  [dictionary objectForKey:@"IMAGES"];
        IMAGES =  [[NSMutableArray alloc] init];
        for (NSDictionary *d in temp) {
            [IMAGES addObject:d];
        }
    }
    return self;
}

@end


@implementation model_NOTE

@synthesize AUTHOR;
@synthesize NOTE;
@synthesize DATE;
@synthesize LEN;

+ (id) objectWithDictionary:(NSDictionary*)dictionary
{
    id obj = [[model_NOTE alloc] initWithDictionary:dictionary] ;
    return obj;
}

- (id) initWithDictionary:(NSDictionary*)dictionary
{
    self=[super init];
    if(self)
    {
        AUTHOR = [dictionary objectForKey:@"AUTHOR"];
        NOTE = [dictionary objectForKey:@"NOTE"];
        DATE = [dictionary objectForKey:@"DATE"];
        LEN = [dictionary objectForKey:@"LEN"];
    }
    return self;
}


@end


