//
//  Person.m
//  Creating and Taking Advantage of Classes
//
//  Created by Lázaro Márquez on 02/10/13.
//  Copyright (c) 2013 Lázaro Márquez. All rights reserved.
//

#import "Person.h"

@implementation Person


- (void) walkAtKilometersPerHour:(CGFloat)paramSpeedKilometersPerHour{
    /* Write the code for this method here */
}

- (void) runAt10KilometersPerHour{
    /* Call the walk method in our own class and pass the value of 10 */
    [self walkAtKilometersPerHour:10.0f];
}
@end
