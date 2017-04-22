//
//  Box.m
//  Making Class
//
//  Created by ayako_sayama on 2017-04-19.
//  Copyright © 2017 ayako_sayama. All rights reserved.
//

#import "Box.h"

@implementation Box


//NSObjectをoverrideしたい時に書く
//- (instancetype)init
//{
//    self = [self initWithHeight:(float *) 0 WithWidth:<#(float)#>0 WithLength:<#(float)#>:0];
//    return self;
//}

- (instancetype)initWithHeight: (float) height WithWidth: (float) width WithLength: (float) length;
{
    self = [super init];
    if (self) {
        //underscore is the same thing as
        _height = height;
        _width = width;
        self.length = length;
    }
    return self;
}


//instance method

//BOXクラスの値を使う場合
- (float) calculateVolume {
    return self.height * self.width * _length;
}

//static method // class method
//ここだけの値を使う場合。
+ (float) addition: (float) one w:(float) two l:(float) three {
    return one+two+three;
}

- (float) countBoxsh:(float) smallHeight sw: (float) smallWidth sl:(float) smallLength {
    
    int rw = floor(self.width/smallWidth);
    int rh = floor(self.height/smallHeight);
    int rl = floor(self.length/smallLength);
    NSLog(@"rh:%d,rw:%d,rl:%d", rh,rw,rl);

    int numboxes = rw*rh*rl;
    NSLog(@"%d",numboxes);
    return numboxes;
}



@end
