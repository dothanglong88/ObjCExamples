//
//  DemoFunction.m
//  ObjCExamples
//
//  Created by Xmob - Longdt on 4/22/16.
//  Copyright © 2016 Xmob - Longdt. All rights reserved.
//

#import "DemoFunction.h"

@interface DemoFunction ()

@end

@implementation DemoFunction

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    
//    [self sayFirstName:@"Steve" andLastName:@"Jobs"];
    
    
    
//    float tempDegree = 30.1;
//    
//    float re = [self celciusToFahrenheit:tempDegree];
//    //or
////    float re = [self celciusToFahrenheit:30.1];
//   
//    NSString* result = [NSString stringWithFormat:@"%2.1f degree quals to %3.1f", tempDegree, re];
//    [self writeln:result];
    
    
    
    
    
//    [self celciusToFahrenheit];
    //or
    [self performSelector:@selector(celciusToFahrenheit)];
    
    
    
    
    //[[NSNumber alloc] initWithFloat:30.1];
//    [self performSelector:@selector(celciusToFahrenheit2:) withObject:@(30.1)];
}

- (void) sayFirstName:(NSString*) firstName andLastName: (NSString*) lastName{
    NSLog(@"%@ %@", firstName, lastName);
}

- (float) celciusToFahrenheit: (float) degree {
    NSLog(@"%2.1f", degree);
    float result = degree * 1.8 + 32.0;
    [self writeln:[NSString stringWithFormat:@"Result = %2.1f", result]];
    return result;
}

- (void) celciusToFahrenheit {
    NSLog(@"Do nothing");
}

- (void) celciusToFahrenheit2: (NSNumber*) degree {
    float result =  [degree floatValue] * 1.8 + 32.0;
    NSLog(@"Result = %2.1f", result);
    [self writeln:[NSString stringWithFormat:@"Result = %2.1f", result]];
}

@end
