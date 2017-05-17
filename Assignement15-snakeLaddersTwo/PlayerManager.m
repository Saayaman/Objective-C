//
//  PlayerManager.m
//  Assignement15-snakeLaddersTwo
//
//  Created by ayako_sayama on 2017-05-08.
//  Copyright © 2017 ayako_sayama. All rights reserved.
//

#import "PlayerManager.h"
#import "Player.h"

@implementation PlayerManager


- (instancetype)init
{
    self = [super init];
    if (self) {
        _players = [NSMutableArray array];
        _currentIndex = 0;
    }
    return self;
}

- (void)createPlayers:(NSInteger)num{
    
    for (int i = 1; i < num; i++) {
        Player *player = [[Player alloc]init];
        [player setName:[NSString stringWithFormat:@"Player%d",i]];
        [_players addObject:player];
    }
}

- (Player*)currentPlayer:(NSInteger)currentIndex{
    
//    Player *player = player.currentSqure;
    return _players[currentIndex];
}


@end
