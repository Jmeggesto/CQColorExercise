//
//  CQColorTableViewController.m
//  08-09-2015
//
//  Created by Jackie Meggesto on 8/10/15.
//  Copyright (c) 2015 Jackie Meggesto. All rights reserved.
//

#import "CQColorTableViewController.h"
#import "CQColorPickerViewControllerDelegate.h"
#import "CQColorPickerViewController.h"

@interface CQColorTableViewController ()


@end

@implementation CQColorTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.colors = [[NSMutableArray alloc]init];
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(void)viewWillAppear:(BOOL)animated {
    [self.tableView reloadData];
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
#warning Potentially incomplete method implementation.
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
#warning Incomplete method implementation.
    // Return the number of rows in the section.
    return self.colors.count;
}
- (void)colorPickerViewController:(CQColorPickerViewController*)viewController didPickColorNamed:(NSString *)colorName {
    
    NSDictionary *colorNames = @{
                                 
                                 @"black" : [UIColor blackColor],
                                     @"white" : [UIColor whiteColor],
                                     @"gray" : [UIColor grayColor],
                                     @"red" : [UIColor redColor],
                                     @"green" : [UIColor greenColor],
                                     @"blue" : [UIColor blueColor],
                                     @"cyan" : [UIColor cyanColor],
                                     @"yellow" : [UIColor yellowColor],
                                     @"magenta" : [UIColor magentaColor],
                                     @"orange" : [UIColor orangeColor],
                                     @"purple" : [UIColor purpleColor],
                                     @"brown" :[UIColor brownColor]

                                 };
    NSArray *keys = [colorNames allKeys];
    NSString *color = [colorName lowercaseString];
    for (int i = 0; i < keys.count; i ++) {
        if ([color isEqualToString:keys[i]]) {
            [self.colors addObject:[colorNames objectForKey:keys[i]]];
           
        }
    }
    
    
    
    
    
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    CQColorPickerViewController *DVC = [segue destinationViewController];
    DVC.delegate = self;
}
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [self.colors removeObjectAtIndex:indexPath.row];
    [self.tableView reloadData];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"ColorCell" forIndexPath:indexPath];
    
    cell.backgroundColor = self.colors[indexPath.row];
    
    return cell;
}




/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
