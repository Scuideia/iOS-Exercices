//
//  ViewController.m
//  Alerts
//
//  Created by Lázaro Márquez on 06/10/13.
//  Copyright (c) 2013 Lázaro Márquez. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () <UIAlertViewDelegate>

@end

@implementation ViewController

- (NSString *) yesButtonTitle{
    return @"Yes";
}
- (NSString *) noButtonTitle{
    return @"No";
}

- (void)      alertView:(UIAlertView *)alertView
   clickedButtonAtIndex:(NSInteger)buttonIndex{
    
    NSString *buttonTitle = [alertView buttonTitleAtIndex:buttonIndex];
    
    if ([buttonTitle isEqualToString:[self yesButtonTitle]]){
        NSLog(@"User pressed the Yes button.");
    } else if ([buttonTitle isEqualToString:[self noButtonTitle]]){
        NSLog(@"User pressed the No button.");
    }
    
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void) viewDidAppear:(BOOL)paramAnimated{
    [super viewDidAppear:paramAnimated];
    
    typedef NS_ENUM(NSInteger, UIAlertViewStyle) {
        UIAlertViewStyleDefault = 0,
        UIAlertViewStyleSecureTextInput,
        UIAlertViewStylePlainTextInput,
        UIAlertViewStyleLoginAndPasswordInput
    };
    
    self.view.backgroundColor = [UIColor whiteColor];
    [self createInfoAlert];
//    [self createNumberAlert];
//    [self createPasswordAlert];
//    [self createLoginAlert];
}

// 1 INFO
-(void) createInfoAlert{
    NSString *message = @"Info Alert.";
    UIAlertView *alertView = [[UIAlertView alloc]
                              initWithTitle:@"Alert"
                              message:message
                              delegate:self
                              cancelButtonTitle:[self noButtonTitle]
                              otherButtonTitles:[self yesButtonTitle],@"otro",@"otro",@"otro", nil];
    
    [alertView setAlertViewStyle:UIAlertViewStyleDefault];
    
    [alertView show];
}

//2 NUMBER
-(void) createNumberAlert{
    NSString *message = @"Please enter your credit card number:";
    UIAlertView *alertView = [[UIAlertView alloc]
                              initWithTitle:@"Credit Card Number"
                              message:message
                              delegate:self
                              cancelButtonTitle:@"Cancel"
                              otherButtonTitles:@"Ok", nil];
    
    [alertView setAlertViewStyle:UIAlertViewStylePlainTextInput];
    
    /* Display a numerical keypad for this text field */
    UITextField *textField = [alertView textFieldAtIndex:0];
    textField.keyboardType = UIKeyboardTypeNumberPad;
    
    [alertView show];
}

//3 PASSWORD
-(void) createPasswordAlert{
    NSString *message = @"Please enter your password:";
    UIAlertView *alertView = [[UIAlertView alloc]
                              initWithTitle:@"Password"
                              message:message
                              delegate:self
                              cancelButtonTitle:@"Cancel"
                              otherButtonTitles:@"Ok", nil];
    
    [alertView setAlertViewStyle:UIAlertViewStyleSecureTextInput];
    [alertView show];
}

//4 LOGIN
-(void) createLoginAlert{
    NSString *message = @"Please enter your credentials:";
    UIAlertView *alertView = [[UIAlertView alloc]
                              initWithTitle:@"Password"
                              message:message
                              delegate:self
                              cancelButtonTitle:@"Cancel"
                              otherButtonTitles:@"Ok", nil];
    
    [alertView setAlertViewStyle:UIAlertViewStyleLoginAndPasswordInput];
    [alertView show];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
