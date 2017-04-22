//
//  Box.h
//  Making Class
//
//  Created by ayako_sayama on 2017-04-19.
//  Copyright © 2017 ayako_sayama. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Box : NSObject

@property float height;
@property float width;
@property float length;


- (instancetype)initWithHeight: (float) height
                     WithWidth: (float) width
                    WithLength: (float) length;

- (float) calculateVolume;

+ (float) addition: (float) one
         w:(float) two
        l:(float) three;

- (float) countBoxsh:(float) smallHeight sw: (float) smallWidth sl:(float) smallLength;

@end
