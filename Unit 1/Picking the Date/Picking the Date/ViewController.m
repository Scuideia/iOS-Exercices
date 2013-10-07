//
//  ViewController.m
//  Picking the Date
//
//  Created by Lázaro Márquez on 07/10/13.
//  Copyright (c) 2013 Lázaro Márquez. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (nonatomic, strong) UIDatePicker *myDatePicker;

@end

@implementation ViewController

- (void)viewDidLoad
{
    typedef NS_ENUM(NSInteger, UIDatePickerMode) {
        UIDatePickerModeTime,
        UIDatePickerModeDate,
        UIDatePickerModeDateAndTime,
        UIDatePickerModeCountDownTimer,
    };
    /* ex 1 Normal
    [super viewDidLoad];

    self.myDatePicker = [[UIDatePicker alloc] init];
    self.myDatePicker.center = self.view.center;
    self.view.backgroundColor = [UIColor blueColor];
    [self.view addSubview:self.myDatePicker];
     
     */
   
    /* ex 2 Funcional
    [super viewDidLoad];
    
    self.myDatePicker = [[UIDatePicker alloc] init];
    self.myDatePicker.center = self.view.center;
    [self.view addSubview:self.myDatePicker];
    //FUNCIONALIDAD
    [self.myDatePicker addTarget:self
                          action:@selector(datePickerDateChanged:)
                forControlEvents:UIControlEventValueChanged];
     */
    
    /* ex 3 Minimo/maximo
    [super viewDidLoad];
    
    self.myDatePicker = [[UIDatePicker alloc] init];
    self.myDatePicker.center = self.view.center;
    //tipo de picker
    self.myDatePicker.datePickerMode = UIDatePickerModeDate;
    [self.view addSubview:self.myDatePicker];
    
    //Calcular los segundos que tiene un año.
    NSTimeInterval oneYearTime = 365 * 24 * 60 * 60;
    //Hoy
    NSDate *todayDate = [NSDate date];
    //Dentro de un año
    NSDate *oneYearFromToday = [todayDate dateByAddingTimeInterval:oneYearTime];
    //Dentro de dos años
    NSDate *twoYearsFromToday = [todayDate dateByAddingTimeInterval:2 * oneYearTime];
    //Fecha minima
    self.myDatePicker.minimumDate = oneYearFromToday;
    //Fecha maxima
    self.myDatePicker.maximumDate = twoYearsFromToday;
    
    //FUNCIONALIDAD
    [self.myDatePicker addTarget:self
                          action:@selector(datePickerDateChanged:)
                forControlEvents:UIControlEventValueChanged];
     
     */
    
    /* Ex 4  Cuenta atras */
    [super viewDidLoad];
    self.myDatePicker = [[UIDatePicker alloc] init];
    self.myDatePicker.center = self.view.center;
    //tipo de picker
    self.myDatePicker.datePickerMode = UIDatePickerModeCountDownTimer;
    [self.view addSubview:self.myDatePicker];
    //tiempo por defecto
    NSTimeInterval twoMinutes = 2 * 60;
    [self.myDatePicker setCountDownDuration:twoMinutes];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

// Muestra que fecha ha seleccionado el usuario cuando deja de mover los pickers
- (void) datePickerDateChanged:(UIDatePicker *)paramDatePicker{
    if ([paramDatePicker isEqual:self.myDatePicker]){
        NSLog(@"Selected date = %@", paramDatePicker.date);
    }
}

@end
