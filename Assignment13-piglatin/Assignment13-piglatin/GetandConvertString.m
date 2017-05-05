
#import "GetandConvertString.h"

@implementation GetandConvertString


- (instancetype)init
{
    self = [super init];
    if (self) {
        _words = [[NSArray alloc]init];
        _vowel = [NSCharacterSet characterSetWithCharactersInString:@"aeiouy"];
    }
    return self;
}

- (void)getInput{
    
    char input[100];
    fgets(input, 100, stdin);

    NSString *inputString = [[NSString alloc] initWithUTF8String:input];
    inputString = [inputString stringByTrimmingCharactersInSet:[NSCharacterSet newlineCharacterSet]];

//    NSCharacterSet *separator = [NSCharacterSet whitespaceAndNewlineCharacterSet];
//    _words = [inputString componentsSeparatedByCharactersInSet:separator];
    
    _words = [inputString componentsSeparatedByString:@" "];
}


- (void)stringByPigLatinization{
    
    NSString* piggedLatin = [[NSString alloc]init];
    NSString* changedWord = [[NSString alloc]init];
    
    for (NSString *word in _words) {
        changedWord = [self changeword:[word lowercaseString]];
        piggedLatin = [piggedLatin stringByAppendingFormat:@"%@ ",changedWord];
    }

    NSLog(@"%@",piggedLatin);
}


- (NSString*)changeword: (NSString*)word{
    
    NSRange range = [word rangeOfCharacterFromSet:_vowel options:NSCaseInsensitiveSearch];
    NSLog(@"location of vowel: %lu",(unsigned long)range.location);
    NSRange letterRange = NSMakeRange(0, range.location);
    
    NSString *newword = [[NSString alloc]init];
    if (range.location > 0) {
        newword = [word stringByAppendingString:[word substringWithRange:letterRange]];
        NSInteger newL = (newword.length) - range.location;
        newword = [newword substringWithRange:NSMakeRange(range.location, newL)];

    } else {
        newword = word;
    }
    newword = [newword stringByAppendingString:@"ay"];
    return newword;
    
}

@end
