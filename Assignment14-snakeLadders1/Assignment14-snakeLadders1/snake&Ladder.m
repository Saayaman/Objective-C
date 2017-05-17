//
//  snake&Ladder.m
//  Assignment14-snakeLadders1
//
//  Created by ayako_sayama on 2017-05-05.
//  Copyright © 2017 ayako_sayama. All rights reserved.
//

#import "snake&Ladder.h"

@implementation snake_Ladder

- (instancetype)init
{
    self = [super init];
    if (self) {
        _dictionary = [[NSDictionary alloc]init];
        _dictionary = @{@9:@30,@4:@14,@17:@7,@20:@38,@28:@84,@40:@59,@51:@67,@63:@81,@64:@60,@89:@26,@95:@75,@99:@78};
    }
    
    return self;
}



@end
