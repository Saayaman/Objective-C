//
//  Calculation.m
//  Assignment3
//
//  Created by ayako_sayama on 2017-04-20.
//  Copyright © 2017 ayako_sayama. All rights reserved.
//

#import "Calculation.h"

@implementation Calculation

//NSObjectをoverrideしたい時に書く

- (instancetype)init
{
    self = [self initNum1:(float) 0
                      Num2:<#(float)#>0
                     Num3:<#(float)#>:0
            ];
    return self;
}

//instance method

//BOXクラスの値を使う場合
- (float) calculateVolume {
    return self.height * self.width * _length;
}




@end
