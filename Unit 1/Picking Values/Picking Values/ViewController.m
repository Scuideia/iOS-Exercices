//
//  ViewController.m
//  Picking Values
//
//  Created by Lázaro Márquez on 07/10/13.
//  Copyright (c) 2013 Lázaro Márquez. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () <UIPickerViewDataSource, UIPickerViewDelegate>
@property (nonatomic, strong) UIPickerView *myPicker;
@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.myPicker = [[UIPickerView alloc] init];
    self.myPicker.dataSource = self;
    self.myPicker.delegate = self;
    self.myPicker.center = self.view.center;
    self.myPicker.showsSelectionIndicator = YES;
    [self.view addSubview:self.myPicker];
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//Numero de pickers
- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView{
    if ([pickerView isEqual:self.myPicker]){
        return 1;
    }
    return 0;
}
//Numero de filas
- (NSInteger) pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component{
    if ([pickerView isEqual:self.myPicker]){
        return 10;
    }
    return 0;
}
//Texto de las filas
- (NSString *)pickerView:(UIPickerView *)pickerView
             titleForRow:(NSInteger)row
            forComponent:(NSInteger)component{
    if ([pickerView isEqual:self.myPicker]){
        /* Row is zero-based and we want the first row (with index 0) to be rendered as Row 1 so we have to +1 every row index */ return [NSString stringWithFormat:@"Row %ld", (long)row + 1];
    }
    return nil;
}


@end
