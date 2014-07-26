//
//  RetrieveViewController.h
//  swipelogin
//
//  Created by User2 on 2013-11-14.
//  Copyright (c) 2013 VENKATA. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ViewController.h"

@interface RetrieveViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *verifyQuestion1;

@property (weak, nonatomic) IBOutlet UITextField *verifyQuestion2;

@property (weak, nonatomic) IBOutlet UIButton *retrieve;

- (IBAction)retrieveBtn:(UIButton *)sender;

-(IBAction)backtap:(id)sender;

-(IBAction)didonexit:(id)sender;

@end
