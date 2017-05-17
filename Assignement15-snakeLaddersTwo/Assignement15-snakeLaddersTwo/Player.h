//
//  Player.h
//  Assignment14-snakeLadders1
//
//  Created by ayako_sayama on 2017-05-05.
//  Copyright © 2017 ayako_sayama. All rights reserved.
//

#import <Foundation/Foundation.h>
@class SnakeLadder;
@interface Player : NSObject

@property NSInteger currentSqure;
@property BOOL gameOver;
@property NSString *name;

- (void)rolldie:(SnakeLadder*)snakeLadder;


@end
