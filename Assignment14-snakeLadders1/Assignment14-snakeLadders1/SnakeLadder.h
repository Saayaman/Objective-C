//
//  SnakeLadder.h
//  Assignment14-snakeLadders1
//
//  Created by ayako_sayama on 2017-05-05.
//  Copyright © 2017 ayako_sayama. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Player.h"

@interface SnakeLadder : NSObject

@property NSDictionary* dictionary;
@property NSInteger score;

- (NSInteger)move:(NSNumber*)number;
- (BOOL)checkforTrap:(NSNumber*)current;

@end
