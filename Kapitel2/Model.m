//
//  Model.m
//  Kapitel2
//
//  Created by Torsten Wehrhahn on 04.11.17.
//  Copyright © 2017 Torsten Wehrhahn. All rights reserved.
//

#import "Model.h"
#import "Droid.h"
#import "ProtocolDroid.h"
#import "AstroDroid.h"

@implementation Model {
    @private
    NSMutableArray *objects;
}
- (instancetype)init
{
    self = [super init];
    if (self) {
        self.creation = [NSDate date];
        objects = [[NSMutableArray alloc]init];
    }
    return self;
}

- (id)initWithName:(NSString *)inName {
    self = [self init];
    if(self) {
        self.name = inName;
    }
    return self;
}

- (void)updateDroids:(int)inValue {
    if(inValue > [objects count]) {
        int theRemainder = inValue % 3;
        Droid *theDroid;
        if( theRemainder == 0)
        {
            theDroid = [[Droid alloc] initWithID:inValue];
        }
        else if (theRemainder == 1) {
            theDroid = [[ProtocolDroid alloc] initWithID:inValue];
        }
        else {
            theDroid = [[AstroDroid alloc] initWithID:inValue];
        }
        [objects addObject:theDroid];
    }
    else if(inValue < [objects count]) {
        [objects removeLastObject];
    }
}

- (int)countOfObjects{
    return (int)[objects count];
}

- (void)listDroids {
    NSLog(@"[+] Current droids (%d)", [self countOfObjects]);
    for(Droid *aDroid in objects) {
        NSLog(@"[+]     %@: %@", aDroid, aDroid.droidID);
    }
}
@end
