//
//  SearchViewController.h
//  swipelogin
//
//  Created by User2 on 2013-11-14.
//  Copyright (c) 2013 VENKATA. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SearchViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *enterAddress;
- (IBAction)goBtn:(UIButton *)sender;
@property (weak, nonatomic) IBOutlet UIWebView *webView;

@end
