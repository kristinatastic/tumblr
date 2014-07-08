//
//  TabBarViewController.m
//  tumblr
//
//  Created by Kristina Varshavskaya on 7/3/14.
//  Copyright (c) 2014 kristinatastic. All rights reserved.
//

#import "TabBarViewController.h"
#import "HomeViewController.h"
#import "SearchViewController.h"
#import "ComposeViewController.h"
#import "AccountViewController.h"
#import "ActivityViewController.h"

@interface TabBarViewController ()

@property (weak, nonatomic) IBOutlet UIView *contentView;
@property (weak, nonatomic) IBOutlet UIButton *homeButton;
@property (weak, nonatomic) IBOutlet UIButton *searchButton;
@property (weak, nonatomic) IBOutlet UIButton *composeButton;
@property (weak, nonatomic) IBOutlet UIButton *accountButton;
@property (weak, nonatomic) IBOutlet UIButton *activityButton;
@property (weak, nonatomic) IBOutlet UIImageView *explorePopoverView;
@property (weak, nonatomic) IBOutlet UIView *tabBarView;
@property (weak, nonatomic) IBOutlet UIView *loginView;
@property (weak, nonatomic) IBOutlet UIView *loginForm;
- (IBAction)onLoginCancelButton:(id)sender;

@property (nonatomic, strong) HomeViewController *homeViewController;
@property (nonatomic, strong) SearchViewController *searchViewController;
@property (nonatomic, strong) ComposeViewController *composeViewController;
@property (nonatomic, strong) AccountViewController *accountViewController;
@property (nonatomic, strong) ActivityViewController *activityViewController;


- (IBAction)onHomeButton:(id)sender;
- (IBAction)onSearchButton:(id)sender;
- (IBAction)onComposeButton:(id)sender;
- (IBAction)onAccountButton:(id)sender;
- (IBAction)onActivityButton:(id)sender;

@end

@implementation TabBarViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        
        self.homeViewController = [[HomeViewController alloc] init];
        self.homeViewController.tabBarController = self;
        self.searchViewController = [[SearchViewController alloc] init];
        self.composeViewController = [[ComposeViewController alloc] init];
        self.accountViewController = [[AccountViewController alloc] init];
        self.activityViewController = [[ActivityViewController alloc] init];
        
        
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    [self.contentView addSubview:self.homeViewController.view];

    [self.homeButton setSelected:YES];
    
    self.loginView.alpha = 0;
    
    self.explorePopoverView.alpha = 0.9;
    [UIImageView animateWithDuration:0.8 delay:0 options:UIViewAnimationOptionCurveEaseInOut | UIViewAnimationOptionRepeat animations:^{
        [UIImageView setAnimationRepeatAutoreverses:YES];
        self.explorePopoverView.center = CGPointMake(self.explorePopoverView.center.x, self.explorePopoverView.center.y + 4);
    }completion:nil];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)onHomeButton:(id)sender {
    [self.contentView addSubview:self.homeViewController.view];
    [self.homeButton setSelected:YES];
    [self.searchButton setSelected:NO];
    [self.accountButton setSelected:NO];
    [self.activityButton setSelected:NO];
    
    self.explorePopoverView.hidden = NO;
}

- (IBAction)onSearchButton:(id)sender {
    [self.contentView addSubview:self.searchViewController.view];
    [self.homeButton setSelected:NO];
    [self.searchButton setSelected:YES];
    [self.accountButton setSelected:NO];
    [self.activityButton setSelected:NO];
    /* if (timer != nil) {
        [timer invalidate];
    } */
    self.explorePopoverView.hidden = YES;
}

- (IBAction)onComposeButton:(id)sender {
    [self.contentView addSubview:self.composeViewController.view];
    
    self.explorePopoverView.hidden = YES;
}

- (IBAction)onAccountButton:(id)sender {
    [self.contentView addSubview:self.accountViewController.view];
    [self.homeButton setSelected:NO];
    [self.searchButton setSelected:NO];
    [self.accountButton setSelected:YES];
    [self.activityButton setSelected:NO];
    
    self.explorePopoverView.hidden = NO;
}

- (IBAction)onActivityButton:(id)sender {
    [self.contentView addSubview:self.activityViewController.view];
    [self.homeButton setSelected:NO];
    [self.searchButton setSelected:NO];
    [self.accountButton setSelected:NO];
    [self.activityButton setSelected:YES];

    self.explorePopoverView.hidden = NO;
}

- (void)displayLogin {
    
    [UIView animateWithDuration:0.4 delay:0 usingSpringWithDamping:0.6 initialSpringVelocity:8 options:0 animations:^{
        self.loginForm.center = CGPointMake(self.loginForm.center.x, self.loginForm.center.y - 80);
    }completion:nil];
    
    [UIView animateWithDuration:0.4 delay:0 options:UIViewAnimationOptionCurveEaseInOut animations:^{
        self.loginView.alpha = 1;
        
    }completion:nil];
}

- (IBAction)onLoginCancelButton:(id)sender {
    [UIView animateWithDuration:0.3 delay:0 options:UIViewAnimationOptionCurveEaseInOut animations:^{
        self.loginView.alpha = 0;
        self.loginForm.center = CGPointMake(self.loginForm.center.x, self.loginForm.center.y + 80);
    }completion:nil];
}
@end
