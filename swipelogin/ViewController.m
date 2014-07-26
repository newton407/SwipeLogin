//
//  ViewController.m
//  swipelogin
//
//  Created by User2 on 2013-11-14.
//  Copyright (c) 2013 VENKATA. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
{
    int verify;
}

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

- (IBAction)LoginBtn:(UIButton *)sender {
    
    UIAlertView *myAlert=[[UIAlertView alloc]initWithTitle:@"TitleMsg" message:@"are you sure?" delegate:self cancelButtonTitle:@"Cancel!" otherButtonTitles:@"Ok!", nil];
    myAlert.alertViewStyle=UIAlertViewStyleLoginAndPasswordInput;
    
    
    [myAlert show];
}

-(void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex{
    
    int k=0;
    
    if (buttonIndex==1)
    {
        NSLog(@"u pressed signup");
        NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];
                
        if([[[alertView textFieldAtIndex:0]text]isEqual:[userDefaults objectForKey:@"userid1"]])
        {
            k=1;
            
            NSLog(@"accepted 1");
            if([[[alertView textFieldAtIndex:1]text ]isEqual:[userDefaults objectForKey:@"password1"]])
            {
                k=2;
              self.continueBtn.hidden = NO;
                self.loginBtn.hidden=YES;
            }
            
        }if((k==0 || k==1) && verify!=2)
        {
            UIAlertView *myalert=[[UIAlertView alloc]initWithTitle:nil message:@"wrong credintials" delegate:self cancelButtonTitle:@"Ok!" otherButtonTitles:nil, nil];
            [myalert show];
            verify++;
            NSLog(@"verify=%i",verify);
        }else if(verify==2)
            
        {
            UIAlertView *myalert=[[UIAlertView alloc]initWithTitle:nil message:@"Click Ok To RETRIVE" delegate:self cancelButtonTitle:@"Ok!" otherButtonTitles:nil, nil];
            [myalert show];
            verify=0;
            
           self.loginBtn.hidden=YES;
           // self.continueBtn.hidden=NO;
                   }
        
        
        
        
        
    }}




@end
