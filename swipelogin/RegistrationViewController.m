//
//  RegistrationViewController.m
//  swipelogin
//
//  Created by User2 on 2013-11-14.
//  Copyright (c) 2013 VENKATA. All rights reserved.
//

#import "RegistrationViewController.h"

@interface RegistrationViewController ()

@end

@implementation RegistrationViewController

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
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)registrBtn:(UIButton *)sender {
    NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];
    if(((self.myuserId.text.length<0 && self.usrPswd.text.length<0) && [self.usrPswd.text isEqualToString:@" "])|| [self.myuserId.text isEqualToString:@" "]){
        
        
        
        
        
        UIAlertView *myAlert=[[UIAlertView alloc]initWithTitle:nil message:@"Enter the username and password" delegate:self cancelButtonTitle:@"Ok!" otherButtonTitles:nil, nil];
        [myAlert show];
        
    }
    
    
    
    else
    {  [userDefaults setObject:self.myuserId.text forKey:@"userid1"];
        [userDefaults setObject:self.usrPswd.text forKey:@"password1"];
        [userDefaults setObject:self.seq1.text forKey:@"seq1"];
        [userDefaults setObject:self.seq2.text forKey:@"seq2"];
        [userDefaults synchronize];
        
        [self dismissViewControllerAnimated:YES completion:nil];
        
    }}

-(IBAction)bcktap:(id)sender{
    [self.myuserId resignFirstResponder];
    [self.usrPswd resignFirstResponder];
    [self.seq1 resignFirstResponder];
    [self.seq2 resignFirstResponder];
}
-(IBAction)didonexit:(id)sender{
    [sender resignFirstResponder];
}

-(void)textFieldDidBeginEditing:(UITextField *)textField{if(textField==self.seq1){
    [UIView beginAnimations:nil context:NULL];
    [UIView setAnimationDelegate:self];
    [UIView setAnimationDuration:0.5];
    [UIView setAnimationBeginsFromCurrentState:YES];
    self.view.frame=CGRectMake(self.view.frame.origin.x, (self.view.frame.origin.y -153), self.view.frame.size.width, self.view.frame.size.height);
    [UIView commitAnimations];
}else if(textField==self.seq2){
    [UIView beginAnimations:nil context:NULL];
    [UIView setAnimationDelegate:self];
    [UIView setAnimationDuration:0.5];
    [UIView setAnimationBeginsFromCurrentState:YES];
    self.view.frame=CGRectMake(self.view.frame.origin.x, (self.view.frame.origin.y -160), self.view.frame.size.width, self.view.frame.size.height);
    [UIView commitAnimations];
    
}
    
}


-(void)textFieldDidEndEditing:(UITextField *)textField{
    if(textField==self.seq1){
        [UIView beginAnimations:nil context:NULL];
        [UIView setAnimationDelegate:self];
        [UIView setAnimationDuration:0.5];
        [UIView setAnimationBeginsFromCurrentState:YES];
        self.view.frame=CGRectMake(self.view.frame.origin.x, (self.view.frame.origin.y +153), self.view.frame.size.width, self.view.frame.size.height);
        [UIView commitAnimations];
    }else if(textField==self.seq2){
        [UIView beginAnimations:nil context:NULL];
        [UIView setAnimationDelegate:self];
        [UIView setAnimationDuration:0.5];
        [UIView setAnimationBeginsFromCurrentState:YES];
        self.view.frame=CGRectMake(self.view.frame.origin.x, (self.view.frame.origin.y +160), self.view.frame.size.width, self.view.frame.size.height);
        [UIView commitAnimations];
        
    }
}

@end
