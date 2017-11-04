//
//  ViewController.m
//  Kapitel2
//
//  Created by Torsten Wehrhahn on 04.11.17.
//  Copyright © 2017 Torsten Wehrhahn. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.textView setText:@""];
    [self writeLog:@"viewDidLoad"];
    self.model = [[Model alloc] initWithName:@"LoremIpsum"];
    [self writeLog:[NSString stringWithFormat:@"Model.name: %@", [self.model name]]];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void) writeLog:(NSString *)inLogString{
    NSLog(@"[+] %@.%@", self, NSStringFromSelector(_cmd));
    NSDateFormatter *theFormatter = [[NSDateFormatter alloc] init];
    [theFormatter setDateFormat:@"HH:mm:ss.SSS"];
    [self.textView setText:[NSString stringWithFormat:@"%@\n%@ [+] %@",[self.textView text], [theFormatter stringFromDate:[NSDate date]], inLogString]];
}
- (IBAction)updateCountOfDroids:(id)sender {
    UIStepper* step =(UIStepper*)sender;
    int theValue = [step value];
    [self.model updateDroids:theValue];
    [self writeLog:[NSString stringWithFormat: @"countOfObjects = %d", [self.model countOfObjects]]];
}

- (IBAction)listModel:(id)sender {
    [self.model listDroids];
}
@end
