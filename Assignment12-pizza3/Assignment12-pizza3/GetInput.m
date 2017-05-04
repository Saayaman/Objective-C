
#import "GetInput.h"

@implementation GetInput

+ (NSString*)getUserInput{
    char str[100];
    fgets (str, 100, stdin);
    
    NSString *inputString = [[NSString alloc] initWithUTF8String:str];
    inputString = [inputString stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
    
    return inputString;
    
}
@end
