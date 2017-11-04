//
//  Droid.h
//  Kapitel2
//
//  Created by Torsten Wehrhahn on 04.11.17.
//  Copyright © 2017 Torsten Wehrhahn. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Droid : NSObject
@property (copy) NSString *droidID;
- (instancetype)initWithID:(NSInteger)inID;

@end
