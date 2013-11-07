//
//  UICollectionViewWaterfallCell.h
//  Demo
//
//  Created by Nelson on 12/11/27.
//  Copyright (c) 2012年 Nelson. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <SDWebImage/UIImageView+WebCache.h>

@interface CHTCollectionViewWaterfallCell : UICollectionViewCell{
	
}
@property (nonatomic, copy) NSString *displayString;
@property (nonatomic, copy) NSString *backUrl;
@property (nonatomic, strong) IBOutlet UILabel *displayLabel;
@property (retain, nonatomic) IBOutlet UIImageView *backImage;

- (void)setTheBackImageImage:(UIImage *)img;

@end
