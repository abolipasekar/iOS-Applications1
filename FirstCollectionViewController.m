//
//  FirstCollectionViewController.m
//  collection
//
//  Created by student14 on 10/11/16.
//  Copyright © 2016 student14. All rights reserved.
//

#import "FirstCollectionViewController.h"
#import "CellCollectionViewCell.h"
#import "CollectionTableViewController.h"


@interface FirstCollectionViewController ()

@end

@implementation FirstCollectionViewController

static NSString * const reuseIdentifier = @"Cell";

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _lablearray=[[NSArray alloc]initWithObjects:@"ATM",@"Hospital",@"College",@"CoffeeShop",@"Bank",@"RailwayStation",@"BusStop",@"Hotel", nil];
    
    
    _imagearray=[[NSArray alloc]initWithObjects:@"atm",@"hospital",@"college",@"coffeeshop",@"bank",@"railwaystation",@"busstop",@"hotel" ,nil];
    
    
    // Uncomment the following line to preserve selection between presentations
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // EVIL : Register cell classes
   // [self.collectionView registerClass:[UICollectionViewCell class] forCellWithReuseIdentifier:reuseIdentifier];
    
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

#pragma mark <UICollectionViewDataSource>

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
//#warning Incomplete implementation, return the number of sections
    return 1;
}


- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
//#warning Incomplete implementation, return the number of items
    return 9;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    CellCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:reuseIdentifier forIndexPath:indexPath];
    
    NSString *str=[self.imagearray objectAtIndex:indexPath.row];
    cell.image1.image=[UIImage imageNamed:str];
    
    // Configure the cell
    
    cell.textlable.text=[_lablearray objectAtIndex:indexPath.row];
    
    
    
    return cell;
}

#pragma mark <UICollectionViewDelegate>


// Uncomment this method to specify if the specified item should be highlighted during tracking
- (BOOL)collectionView:(UICollectionView *)collectionView shouldHighlightItemAtIndexPath:(NSIndexPath *)indexPath {
	return YES;
}



// Uncomment this method to specify if the specified item should be selected
- (BOOL)collectionView:(UICollectionView *)collectionView shouldSelectItemAtIndexPath:(NSIndexPath *)indexPath {
    return YES;
}



// Uncomment these methods to specify if an action menu should be displayed for the specified item, and react to actions performed on the item
- (BOOL)collectionView:(UICollectionView *)collectionView shouldShowMenuForItemAtIndexPath:(NSIndexPath *)indexPath {
	return NO;
}

- (BOOL)collectionView:(UICollectionView *)collectionView canPerformAction:(SEL)action forItemAtIndexPath:(NSIndexPath *)indexPath withSender:(id)sender {
	return NO;
}

- (void)collectionView:(UICollectionView *)collectionView performAction:(SEL)action forItemAtIndexPath:(NSIndexPath *)indexPath withSender:(id)sender {
	
}
-(void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath
{
    
    CollectionTableViewController *tvc=[[CollectionTableViewController alloc]init];
    tvc.templbl=[_lablearray objectAtIndex:indexPath.row];
    
    
    
    if(indexPath.item==0)
    {
        NSLog(@"Hostel");
        tvc.templbl=@"Hostel";
        [self.navigationController pushViewController:tvc animated:YES];
    }
    
    else if(indexPath.item==1)
    {
        NSLog(@"Railway");
        tvc.templbl=@"Railway";
        [self.navigationController pushViewController:tvc animated:YES];
    }
    
    else if(indexPath.item==2)
    {
        NSLog(@"ATM");
        tvc.templbl=@"ATM";
        [self.navigationController pushViewController:tvc animated:YES];
    }
    else if(indexPath.item==3)
    {
        NSLog(@"busstop");
        tvc.templbl=@"busstop";
        [self.navigationController pushViewController:tvc animated:YES];
    }
    
    else if(indexPath.item==4)
    {
        NSLog(@"Coffee");
        tvc.templbl=@"Coffee";
        [self.navigationController pushViewController:tvc animated:YES];
    }
    
    else if(indexPath.item==5)
    {
        NSLog(@"College");
        tvc.templbl=@"College";
        [self.navigationController pushViewController:tvc animated:YES];
    }
    
    else if(indexPath.item==6)
    {
        NSLog(@"Hospital");
        tvc.templbl=@"Hospital";
        [self.navigationController pushViewController:tvc animated:YES];
    }
    
    else if(indexPath.item==7)
    {
        NSLog(@"Hotel");
        tvc.templbl=@"Hotel";
        [self.navigationController pushViewController:tvc animated:YES];
    }
    
    
    
}


@end
