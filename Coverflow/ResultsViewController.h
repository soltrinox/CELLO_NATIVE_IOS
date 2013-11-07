//
//  ViewController.h
//  Demo
//
//  Created by Nelson on 12/11/27.
//  Copyright (c) 2012年 Nelson. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CHTCollectionViewWaterfallLayout.h"
#import "AwesomeMenu.h"

@interface ResultsViewController : UIViewController <UICollectionViewDataSource, CHTCollectionViewDelegateWaterfallLayout, AwesomeMenuDelegate>
@property (nonatomic, strong) IBOutlet UICollectionView *collectionView;
@property (nonatomic) CGFloat cellWidth;
@end
