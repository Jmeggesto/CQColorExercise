//
//  CQColorPickerViewControllerDelegate.h
//  08-09-2015
//
//  Created by Jackie Meggesto on 8/10/15.
//  Copyright (c) 2015 Jackie Meggesto. All rights reserved.
//

#import <Foundation/Foundation.h>

@class CQColorPickerViewController;
@protocol CQColorPickerViewControllerDelegate <NSObject>

- (void)colorPickerViewController:(CQColorPickerViewController *)viewController didPickColorNamed:(NSString *)color;

@end
