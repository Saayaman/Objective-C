

#import <Foundation/Foundation.h>
#import "GetandConvertString.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        GetandConvertString *methods = [[GetandConvertString alloc]init];
        [methods getInput];
        [methods stringByPigLatinization];
    }
    return 0;
}

