//
//  HomeViewController.m
//  tumblr
//
//  Created by Kristina Varshavskaya on 7/5/14.
//  Copyright (c) 2014 kristinatastic. All rights reserved.
//

#import "HomeViewController.h"

#import "TabBarViewController.h"

@interface HomeViewController ()

@property (weak, nonatomic) IBOutlet UIImageView *loadingImage;
- (IBAction)onLoginButton:(id)sender;

@end

@implementation HomeViewController

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
    
    CABasicAnimation *animation = [CABasicAnimation animationWithKeyPath:@"transform.rotation.z"];
    animation.fromValue = [NSNumber numberWithFloat:0.0f];
    animation.toValue = [NSNumber numberWithFloat:2*M_PI];
    animation.duration = 22.0f;
    animation.repeatCount = INFINITY;
    [self.loadingImage.layer addAnimation:animation forKey:@"SpinAnimation"];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)onLoginButton:(id)sender {
    [self.tabBarController displayLogin];
}

@end
