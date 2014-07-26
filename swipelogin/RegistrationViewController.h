//
//  RegistrationViewController.h
//  swipelogin
//
//  Created by User2 on 2013-11-14.
//  Copyright (c) 2013 VENKATA. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RegistrationViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *myuserId;
@property (weak, nonatomic) IBOutlet UITextField *usrPswd;
- (IBAction)registrBtn:(UIButton *)sender;
-(IBAction)bcktap:(id)sender;
-(IBAction)didonexit:(id)sender;
@property (weak, nonatomic) IBOutlet UITextField *seq1;
@property (weak, nonatomic) IBOutlet UITextField *seq2;

@end
