//
//  ComposeViewController.m
//  tumblr
//
//  Created by Kristina Varshavskaya on 7/5/14.
//  Copyright (c) 2014 kristinatastic. All rights reserved.
//

#import "ComposeViewController.h"

@interface ComposeViewController ()
@property (strong, nonatomic) IBOutlet UIView *composeView;

@end

@implementation ComposeViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    self.composeView.alpha = 0.9;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
