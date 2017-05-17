//
//  PlayerManager.h
//  Assignement15-snakeLaddersTwo
//
//  Created by ayako_sayama on 2017-05-08.
//  Copyright © 2017 ayako_sayama. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface PlayerManager : NSObject

@property NSMutableArray *players;
@property NSInteger currentIndex;

- (void)createPlayers:(NSInteger)num;
- (instancetype)init;

@end
