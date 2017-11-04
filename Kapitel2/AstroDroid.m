//
//  AstroDroid.m
//  Kapitel2
//
//  Created by Torsten Wehrhahn on 04.11.17.
//  Copyright © 2017 Torsten Wehrhahn. All rights reserved.
//

#import "AstroDroid.h"

@implementation AstroDroid
- (instancetype)initWithID:(NSInteger)inID{
    self = [super init];
    if(self) {
        self.droidID = [NSString stringWithFormat: @"0xBEEFCAFE%li", (long)inID];
    }
    NSLog(@"[+] %@.%@", self, NSStringFromSelector(_cmd));
    return self;
}
@end
