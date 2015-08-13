//
//  CQColorTableViewController.h
//  08-09-2015
//
//  Created by Jackie Meggesto on 8/10/15.
//  Copyright (c) 2015 Jackie Meggesto. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CQColorPickerViewControllerDelegate.h"

@interface CQColorTableViewController : UITableViewController <CQColorPickerViewControllerDelegate>
@property (strong, nonatomic) NSMutableArray *colors;
@end
