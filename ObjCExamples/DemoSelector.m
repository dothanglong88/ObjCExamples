//
//  DemoSelector.m
//  ObjCExamples
//
//  Created by Xmob - Longdt on 4/23/16.
//  Copyright © 2016 Xmob - Longdt. All rights reserved.
//

#import "DemoSelector.h"

@interface DemoSelector ()
@property (weak, nonatomic) IBOutlet UISlider *slider;

@end

@implementation DemoSelector

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    [self performSelector:@selector(hideSlider) withObject:nil afterDelay:2];
}
- (IBAction)onCrunchData:(id)sender {
//    [self performSelectorInBackground:@selector(doCrunchData) withObject:nil];
//    [self performSelectorOnMainThread:@selector(doCrunchData) withObject:nil waitUntilDone:true];
    [self performSelectorOnMainThread:@selector(processData:) withObject:@{@"apple":@"táo", @"lemon":@"chanh"} waitUntilDone:true];
}

- (void) doCrunchData{
    [NSThread sleepForTimeInterval:2];
}

-(void) hideSlider{
    self.slider.hidden = true;
}

- (void) processData: (NSDictionary*) data{
    for (NSString* key in [data allKeys]){
        NSLog(@"%@ - %@", key, [data valueForKey:key]);
    }
}

@end
