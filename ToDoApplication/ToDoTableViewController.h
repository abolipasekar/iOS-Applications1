//
//  ToDoTableViewController.h
//  ToDoApplication
//
//  Created by Aboli on 10/12/16.
//  Copyright © 2016 Aboli. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ToDoTableViewController : UITableViewController<UITableViewDelegate,UITableViewDataSource,UIAlertViewDelegate>


@property (nonatomic,retain)NSMutableArray *items;

@end
