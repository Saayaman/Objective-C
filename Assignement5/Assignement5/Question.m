

#import "Question.h"

@implementation Question

- (instancetype)init{
    self = [super init];
    if(self){
        _rightValue = arc4random_uniform(90)+11;
        _leftValue = arc4random_uniform(90)+11;
        _startTime = [NSDate date];
    }
    
    return self;
}

- (NSInteger)answer {
    _endTime = [NSDate date];
    return _answer;
}

- (NSTimeInterval)answerTime: (NSDate*)startTime withEnd: (NSDate*)endTime{
    NSTimeInterval secs = [endTime timeIntervalSinceDate:startTime];
    return secs;
}

- (void)generateQuesions{
    
    
}

@end
