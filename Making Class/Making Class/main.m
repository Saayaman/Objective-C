//
//  main.m
//  Making Class
//
//  Created by ayako_sayama on 2017-04-19.
//  Copyright © 2017 ayako_sayama. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Box.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
       
        
        Box *box1 = [[Box alloc]init];
        //インスタンスを作っている = new している
        
        float volume = 0.0;
        // Store the volume of a box here
        
       // box 1 specification
        box1.height = 5.0;
        box1.width = 10.0;
        box1.length = 10.0;

        
        // volume of box 1
        
        volume = [box1 calculateVolume];
    //    volume = [box1 initWithHeight:<#(float)#>5.0 WithWidth:<#(float)#>10.0 WithLength:<#(float)#>10.0];
        NSLog(@"Volume of Box1 : %f", volume);
        
        
        //static method もしくは class method.
        //Addition method in box = floatを足してaddに変更すると、
        int add = 0.0;
        add = [Box addition:10.5 w:11.5 l:10.2];
        NSLog(@"Volume of Box1 : %d", add);


        //これはインスタンスだからできないよ！
//        float add = 0.0;
//        add = [box1 addition];
//        NSLog(@"Volume of Box1 : %f", add);
        
        int boxNum = [box1 countBoxsh:2.0 sw:3.0 sl:5.0];
        NSLog(@"Num of Small Box in Box1 : %d", boxNum);

        
    }
    return 0;
}
