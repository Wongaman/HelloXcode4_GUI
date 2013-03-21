//
//  ViewController.m
//  HelloXcode4_GUI
//
//  Created by MacMini on 18/03/2013.
//  Copyright (c) 2013 MacMini. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
- (IBAction)btnOK:(id)sender;
- (IBAction)hideKeyboard:(id)sender;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(BOOL) shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation
{
    return YES;
}
- (void)dealloc {
    [txtUsername release];
    [lblOutput release];
    [lblName release];
    [btnOK release];
    [super dealloc];
}
- (IBAction)btnOK:(id)sender {
    NSString *WelcomeMsg=[[NSString alloc] initWithFormat:@"Welcome to iOS Programming %@",txtUsername.text];
    lblOutput.text=WelcomeMsg;
    lblOutput.textColor=[UIColor blueColor];
}

- (IBAction)hideKeyboard:(id)sender {
    [txtUsername resignFirstResponder];
}
@end
