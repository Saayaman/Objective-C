//
//  main.m
//  Experiment
//
//  Created by ayako_sayama on 2017-04-27.
//  Copyright © 2017 ayako_sayama. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <QuartzCore/QuartzCore.h>


int main(int argc, const char * argv[]) {
    
    
    int total_time;
    
    @autoreleasepool {
        NSDate *startTime1 = [NSDate date];
        NSLog(@"Time now: %@",startTime1);
        
        NSLog(@"Anotherway to startTime: ");
        
        
        
        
        CFTimeInterval startTime = CACurrentMediaTime();
        
        NSLog(@"wait for some secs....\n");
        
        CFTimeInterval elapsedTime = CACurrentMediaTime() - startTime;
        NSLog(@"The time it took was: %.0f secs", elapsedTime);
        
        int count = 0;
        
        int total_time = total_time+elapsedTime;
        int average_time = (total_time /count);
        
        NSLog(@"The total time: %d",total_time);
        NSLog(@"The average time: %d", average_time);
        
        count++;


        
    }
    return 0;
}
