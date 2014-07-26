//
//  RetrieveViewController.m
//  swipelogin
//
//  Created by User2 on 2013-11-14.
//  Copyright (c) 2013 VENKATA. All rights reserved.
//

#import "RetrieveViewController.h"

@interface RetrieveViewController ()

@end

@implementation RetrieveViewController

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

- (IBAction)retrieveBtn:(UIButton *)sender {
    
    NSString *ans1=[[NSString alloc]init];
    ans1=self.verifyQuestion1.text;
    
    
    NSString *ans2=self.verifyQuestion2.text;
    NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];
    NSString *msg=nil;
    NSString *seQ1=[NSString stringWithFormat:@"%@",[userDefaults objectForKey:@"seq1"]];
    NSString *seQ2=[NSString stringWithFormat:@"%@",[userDefaults objectForKey:@"seq2"]];
    NSLog(@"seq1=%@",seQ1);
    NSLog(@"vans=%@",ans1);
    NSLog(@"seq2=%@",seQ2);
    NSLog(@"vans2=%@",ans2);
    
    /*if(ans1==[userDefaults objectForKey:@"seq1"]&&(ans2==[userDefaults objectForKey:@"seq2"]))*/
    if([self.verifyQuestion1.text isEqual:@" "]||[self.verifyQuestion2.text isEqual:@" "])
    {
        UIAlertView *my_alert=[[UIAlertView alloc]initWithTitle:nil message:@"Answer to The Questions " delegate:nil cancelButtonTitle:@"Ok" otherButtonTitles:nil];
        [my_alert show];
        
    }
    
    
    
    else if([ans1 isEqualToString:seQ1]&&[ans2 isEqualToString:seQ2]){
        msg = [NSString stringWithFormat:@"userId: %@\n  Password:%@",[userDefaults objectForKey:@"userid1"],[userDefaults objectForKey:@"password1"]];
        UIAlertView *vishnu_alert=[[UIAlertView alloc]initWithTitle:@"USERID AND PASSWORD"message:msg delegate:nil cancelButtonTitle:@"Ok" otherButtonTitles:nil];
        [vishnu_alert show];
        
        [self dismissViewControllerAnimated:YES completion:nil];
        
    }else{
        UIAlertView *vishnu_alert=[[UIAlertView alloc]initWithTitle:@"SECURITY ANSWERS MISMATCH"message:@"ACCOUNT BLOCKED\nPlease Contact the Administrator" delegate:nil cancelButtonTitle:nil otherButtonTitles:nil];
        [vishnu_alert show];
        self.retrieve.hidden=YES;
    }
}
-(IBAction)backtap:(id)sender;
    {
        [self.verifyQuestion1 resignFirstResponder];
        [self.verifyQuestion2 resignFirstResponder];
    }
    
    -(IBAction)didonexit:(id)sender;
    {
        [sender resignFirstResponder];
    }


@end
