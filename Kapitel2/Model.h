//
//  Model.h
//  Kapitel2
//
//  Created by Torsten Wehrhahn on 04.11.17.
//  Copyright © 2017 Torsten Wehrhahn. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Model : NSObject
@property(copy) NSString *status;
@property(strong) NSDate *creation;
@property(copy) NSString *name;
- (instancetype)initWithName:(NSString*)inName;
- (void)updateDroids:(int)inValue;
- (int)countOfObjects;
- (void)listDroids;
@end
