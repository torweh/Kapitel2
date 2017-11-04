//
//  ViewController.h
//  Kapitel2
//
//  Created by Torsten Wehrhahn on 04.11.17.
//  Copyright © 2017 Torsten Wehrhahn. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Model.h"

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextView *textView;
@property (strong) Model *model;
- (IBAction)updateCountOfDroids:(id)sender;

@end

