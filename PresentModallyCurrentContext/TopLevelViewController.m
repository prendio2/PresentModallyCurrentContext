//
//  TopLevelViewController.m
//  PresentModallyCurrentContext
//
//  Created by Oisin Prendiville on 14/04/2016.
//  Copyright © 2016 Oisin Prendiville. All rights reserved.
//

#import "TopLevelViewController.h"

@interface TopLevelViewController ()

@end

@implementation TopLevelViewController

- (UIViewController *)pinkVC
{
  for (UIViewController *child in self.childViewControllers) {
    if ([child.restorationIdentifier isEqualToString:@"pink"]) {
      return child;
    }
  }
  return nil;
}

- (void)toggleYellow
{
  if (self.pinkVC.presentedViewController) {
    [self.pinkVC.presentedViewController dismissViewControllerAnimated:YES completion:^{
      
    }];
  } else {
    [self.pinkVC performSegueWithIdentifier:@"showYellow" sender:self];
  }
}

@end
