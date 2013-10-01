//
//  ViewController.h
//  Defining and Understanding Variables
//
//  Created by Lázaro Márquez on 01/10/13.
//  Copyright (c) 2013 Lázaro Márquez. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (nonatomic) NSInteger *integer; //10; -21
@property (nonatomic) NSUInteger *integerMustNotNegative; //98
@property (nonatomic) CGFloat *decimalNumber; //21.3
@property (strong,nonatomic) NSString *text; //Texto
@property (strong,nonatomic) NSNumber *numberAsObjects; //464; -12.2
@property (strong,nonatomic) id pointToAnObject; //id = text;
@property (strong,nonatomic) NSDictionary *hashTable; // [ key , value ]
@property (strong,nonatomic) NSArray *orderedCollectionOfItems; //[a,b,c,d,a]
@property (strong,nonatomic) NSSet *serialOfUniqueObjects; // [a,b,c]
@property (strong,nonatomic) NSData *dataContent; // p.e: file data 

@end
