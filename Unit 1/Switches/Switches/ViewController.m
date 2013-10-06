//
//  ViewController.m
//  Switches
//
//  Created by Lázaro Márquez on 06/10/13.
//  Copyright (c) 2013 Lázaro Márquez. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (nonatomic, strong) UISwitch *mySwitch;
@property (nonatomic, strong) UISwitch *mainSwitch;
@property (nonatomic, strong) UISwitch *secondSwitch;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    /* 1 */
    // Create the switch
    self.mySwitch = [[UISwitch alloc] initWithFrame:CGRectMake(100, 100, 0, 0)];
    //activado por defecto + animación
    [self.mySwitch setOn:YES animated:YES];
    // Añade funcionalidad al switch
    [self.mySwitch addTarget:self
                      action:@selector(switchIsChanged:)
            forControlEvents:UIControlEventValueChanged];
    
    [self.view addSubview:self.mySwitch];
    
    /* 2 */
    // Create the switch (x,y,w,h)
    self.mainSwitch = [[UISwitch alloc] initWithFrame:CGRectMake(200, 100, 0, 0)];
    //center the switch
    //self.mainSwitch.center = self.view.center;
    [self.view addSubview:self.mainSwitch];
    // Customize the switch
    // Adjust the off-mode tint color
    self.mainSwitch.tintColor = [UIColor redColor];
    // Adjust the on-mode tint color
    self.mainSwitch.onTintColor = [UIColor brownColor];
    // Also change the knob's tint color
    self.mainSwitch.thumbTintColor = [UIColor greenColor];
    
    /* 3 */
    // Create the switch
    self.secondSwitch = [[UISwitch alloc] initWithFrame:CGRectMake(100, 200, 0, 0)];
    self.secondSwitch.center = self.view.center;
    // Make sure the switch won't appear blurry on iOS Simulator
    self.secondSwitch.frame = [self roundedValuesInRect:self.secondSwitch.frame];
    [self.view addSubview:self.secondSwitch];
    /* Customize the switch */
    self.secondSwitch.onImage = [UIImage imageNamed:@"On"];
    self.secondSwitch.offImage = [UIImage imageNamed:@"Off"];
}

- (void) switchIsChanged:(UISwitch *)paramSender{
    NSString *message = @"";
    if ([paramSender isOn]){
        message = @"Switch is ON";
    } else {
        message = @"Switch is OFF";
    }
    
    UIAlertView *alertView = [[UIAlertView alloc]
                              initWithTitle:@"Alert"
                              message:message
                              delegate:self
                              cancelButtonTitle:@"Cancel"
                              otherButtonTitles:@"OK", nil];
    [alertView show];
}

/* This method makes sure that the x, y, width and height of a rectangle
 is rounded. Non-rounded rectangular frames of UI components can cause those
 components to appear blurry on iOS Simulator. This is not a problem on a
 real iOS device */
- (CGRect) roundedValuesInRect:(CGRect)paramRect{
    paramRect.origin.x = round(CGRectGetMinX(paramRect));
    paramRect.origin.y = round(CGRectGetMinY(paramRect));
    paramRect.size.width = round(CGRectGetWidth(paramRect));
    paramRect.size.height = round(CGRectGetHeight(paramRect));
    return paramRect;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
