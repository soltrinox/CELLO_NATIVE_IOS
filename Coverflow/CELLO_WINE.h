//
//  CELLO_WINE.h
//  CELLO
//
//  Created by Dylan Rosario on 11/7/13.
//  Copyright (c) 2013 cello. All rights reserved.
//

#import <RestKit/RestKit.h>
#import <CoreData/CoreData.h>

@interface CELLO_WINE : NSManagedObject




@property(nonatomic,strong) NSManagedObject * DETAILS;
@property(nonatomic,strong) NSManagedObject * MEDIA;
@property(nonatomic,strong) NSManagedObject * IMAGES;
@property(nonatomic,strong) NSManagedObject * NOTES;

@property(nonatomic,copy) NSNumber * ID;
@property(nonatomic,copy) NSString * CTID;
@property(nonatomic,copy) NSString * FOOD;
@property(nonatomic,copy) NSString * NOTE_CT;
@property(nonatomic,copy) NSString * CELLAR_SCORE;
@property(nonatomic,copy) NSString * VINTAGE;
@property(nonatomic,copy) NSString * TYPE;
@property(nonatomic,copy) NSString * PRODUCER;
@property(nonatomic,copy) NSString * VARIETAL;
@property(nonatomic,copy) NSString * DESIGNATION;
@property(nonatomic,copy) NSString * VINEYARD;
@property(nonatomic,copy) NSString * COUNTRY;
@property(nonatomic,copy) NSString * REGION;
@property(nonatomic,copy) NSString * SUBREGION;
@property(nonatomic,copy) NSString * APPELLATION;
@property(nonatomic,copy) NSString * BUYLINK;





@end
