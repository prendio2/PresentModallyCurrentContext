//
//  BlackViewController.m
//  PresentModallyCurrentContext
//
//  Created by Oisin Prendiville on 14/04/2016.
//  Copyright © 2016 Oisin Prendiville. All rights reserved.
//

#import "BlackViewController.h"
#import "TopLevelViewController.h"
@interface BlackViewController ()

@end

@implementation BlackViewController

- (IBAction)toggleYellow:(id)sender
{
  [(TopLevelViewController *)self.parentViewController toggleYellow];
}

@end
