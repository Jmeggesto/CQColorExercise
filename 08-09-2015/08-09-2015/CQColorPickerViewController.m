//
//  CQColorPickerViewController.m
//  08-09-2015
//
//  Created by Jackie Meggesto on 8/10/15.
//  Copyright (c) 2015 Jackie Meggesto. All rights reserved.
//

#import "CQColorPickerViewController.h"

@interface CQColorPickerViewController ()


@end

@implementation CQColorPickerViewController
- (IBAction)buttonTapped:(UIButton*)sender {
    if ([sender.titleLabel.text isEqualToString:@"Red"]) {
        [self.delegate colorPickerViewController:self didPickColor:[UIColor redColor]];
    } else if ([sender.titleLabel.text isEqualToString:@"Blue"]) {
        [self.delegate colorPickerViewController:self didPickColor:[UIColor blueColor]];
    } else if ([sender.titleLabel.text isEqualToString:@"Green"])  {
        [self.delegate colorPickerViewController:self didPickColor:[UIColor greenColor]];
    } else if ([sender.titleLabel.text isEqualToString:@"Purple"]) {
        [self.delegate colorPickerViewController:self didPickColor:[UIColor purpleColor]];
    } else if ([sender.titleLabel.text isEqualToString:@"Yellow"]) {
        [self.delegate colorPickerViewController:self didPickColor:[UIColor purpleColor]];
    }
        
    
    
    
    [self dismissViewControllerAnimated:YES completion:nil];
}


- (void)viewDidLoad {
    [super viewDidLoad];
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

@end
