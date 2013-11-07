

#import "CDemoCollectionViewController.h"

#import <QuartzCore/QuartzCore.h>
#import <AssetsLibrary/AssetsLibrary.h>

#import "CDemoCollectionViewCell.h"
#import "CCoverflowTitleView.h"
#import "CCoverflowCollectionViewLayout.h"
#import "CReflectionView.h"

#import "ResultsViewController.h"

@interface CDemoCollectionViewController ()
@property (readwrite, nonatomic, strong) ALAssetsLibrary *assetsLibrary;
@property (readwrite, nonatomic, assign) NSInteger cellCount;
@property (readwrite, nonatomic, strong) NSArray *assets;
@property (readwrite, nonatomic, strong) CCoverflowTitleView *titleView;
@property (readwrite, nonatomic, strong) NSCache *imageCache;
@end

@implementation CDemoCollectionViewController

- (void)viewDidLoad
	{
	[super viewDidLoad];

	self.cellCount = 10;
	self.imageCache = [[NSCache alloc] init];

	[self.collectionView registerNib:[UINib nibWithNibName:NSStringFromClass([CCoverflowTitleView class]) bundle:NULL] forSupplementaryViewOfKind:@"title" withReuseIdentifier:@"title"];

   [self.collectionView setFrame:CGRectMake(0 , 650, 768, 320)];


	[self addForm];

	NSMutableArray *theAssets = [NSMutableArray array];
	NSURL *theURL = [[[NSBundle mainBundle] resourceURL] URLByAppendingPathComponent:@"Images"];
	NSEnumerator *theEnumerator = [[NSFileManager defaultManager] enumeratorAtURL:theURL includingPropertiesForKeys:NULL options:NSDirectoryEnumerationSkipsPackageDescendants | NSDirectoryEnumerationSkipsHiddenFiles errorHandler:NULL];
	for (theURL in theEnumerator)
		{
		if ([[theURL pathExtension] isEqualToString:@"jpg"])
			{
			[theAssets addObject:theURL];
			}
		}
	self.assets = theAssets;
	self.cellCount = self.assets.count;
	}

- (void) addForm{

	UILabel *asklabel = [[UILabel alloc] initWithFrame:CGRectMake(50 , 50, 600, 40) ];

	asklabel.Text = @"Ask your tribe a question...";
	asklabel.font =  [UIFont fontWithName:@"Helvetica-Bold" size: 21.0];
	[asklabel setTextAlignment:NSTextAlignmentCenter];
	asklabel.backgroundColor = [UIColor clearColor];
	asklabel.TextColor = [UIColor whiteColor];
	[self.view addSubview:asklabel];



	UITextView *searchBox = [[UITextView alloc] initWithFrame:CGRectMake(50, 100, 600, 60)];
    searchBox.backgroundColor = [UIColor clearColor];
    [searchBox setTextAlignment:NSTextAlignmentCenter];
    searchBox.text =  @"What should i drink with...?" ;
    [searchBox setFont:[UIFont fontWithName:@"Helvetica-Bold" size: 28.0]];
    searchBox.textColor = [[UIColor alloc]initWithRed:0.0/255.0 green:0.0/255.0 blue:0.0/255.0 alpha:1];
	searchBox.layer.cornerRadius = 8.0f;
    [searchBox setBackgroundColor:[[UIColor alloc]initWithRed:255.0/255.0 green:255.0/255.0 blue:255.0/255.0 alpha:0.5]] ;

	[self.view addSubview:searchBox];


	 UIButton *firstButton= [UIButton buttonWithType:UIButtonTypeRoundedRect] ;
    [firstButton setTitle:@"Ask Away" forState:UIControlStateNormal];
    [firstButton addTarget:self action:@selector(goToResults:) forControlEvents:UIControlEventTouchUpInside];
    firstButton.frame=CGRectMake(300, 200, 310, 50);
    
    [self.view addSubview:firstButton];

}

- (IBAction)goToResults:(id)sender{

 UIStoryboard * storyboard = self.storyboard;


	CHTCollectionViewWaterfallLayout *cft =  [[CHTCollectionViewWaterfallLayout alloc] init];
	cft.columnCount = 3;


	ResultsViewController *resultsView =  [storyboard instantiateViewControllerWithIdentifier: @ "results"];
    
    [self.navigationController pushViewController:resultsView animated:YES ];
}

- (IBAction)goBack2:(id)sender{
    [self performSegueWithIdentifier:@"resultpush" sender:self];
}



#pragma mark -

- (void)updateTitle
	{
// Asking a collection view for indexPathForItem inside a scrollViewDidScroll: callback seems unreliable.
//	NSIndexPath *theIndexPath = [self.collectionView indexPathForItemAtPoint:(CGPoint){ CGRectGetMidX(self.collectionView.frame) + self.collectionView.contentOffset.x, CGRectGetMidY(self.collectionView.frame) }];
	NSIndexPath *theIndexPath = ((CCoverflowCollectionViewLayout *)self.collectionView.collectionViewLayout).currentIndexPath;
	if (theIndexPath == NULL)
		{
		self.titleView.titleLabel.text = NULL;
		}
	else
		{
		NSURL *theURL = [self.assets objectAtIndex:theIndexPath.row];

		self.titleView.titleLabel.text = [NSString stringWithFormat:@"%@", theURL.lastPathComponent];
		}
	}

#pragma mark -

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section;
	{
	return(self.cellCount);
	}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath;
	{
	CDemoCollectionViewCell *theCell = [self.collectionView dequeueReusableCellWithReuseIdentifier:@"DEMO_CELL" forIndexPath:indexPath];

	if (theCell.gestureRecognizers.count == 0)
		{
		[theCell addGestureRecognizer:[[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tapCell:)]];
		}

	theCell.backgroundColor = [UIColor colorWithHue:(float)indexPath.row / (float)self.cellCount saturation:0.333 brightness:1.0 alpha:1.0];

	if (indexPath.row < self.assets.count)
		{
		NSURL *theURL = [self.assets objectAtIndex:indexPath.row];
		UIImage *theImage = [self.imageCache objectForKey:theURL];
		if (theImage == NULL)
			{
			theImage = [UIImage imageWithContentsOfFile:theURL.path];

			[self.imageCache setObject:theImage forKey:theURL];
			}

		theCell.imageView.image = theImage;
		theCell.reflectionImageView.image = theImage;
		theCell.backgroundColor = [UIColor clearColor];
		}

	return(theCell);
	}

- (UICollectionReusableView *)collectionView:(UICollectionView *)collectionView viewForSupplementaryElementOfKind:(NSString *)kind atIndexPath:(NSIndexPath *)indexPath
	{
	CCoverflowTitleView *theView = [self.collectionView dequeueReusableSupplementaryViewOfKind:kind withReuseIdentifier:@"title" forIndexPath:indexPath];
	self.titleView = theView;
	[self updateTitle];
	return(theView);
	}

- (void)scrollViewDidScroll:(UIScrollView *)scrollView
	{
	[self updateTitle];
	}

#pragma mark -

- (void)tapCell:(UITapGestureRecognizer *)inGestureRecognizer
	{
	NSIndexPath *theIndexPath = [self.collectionView indexPathForCell:(UICollectionViewCell *)inGestureRecognizer.view];

	NSLog(@"%@", [self.collectionView.collectionViewLayout layoutAttributesForItemAtIndexPath:theIndexPath]);
	NSURL *theURL = [self.assets objectAtIndex:theIndexPath.row];
	NSLog(@"%@", theURL);
	}

@end
