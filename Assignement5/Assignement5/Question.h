

#import <Foundation/Foundation.h>

@interface Question : NSObject

@property (nonatomic, strong)NSDate * startTime;
@property (nonatomic, strong)NSDate * endTime;
@property (nonatomic, copy)NSString *question;
@property (nonatomic)NSInteger answer;

@property (nonatomic)NSInteger rightValue;
@property (nonatomic)NSInteger leftValue;


- (NSInteger)answer;
- (NSTimeInterval)answerTime: (NSDate*)startTime withEnd: (NSDate*)endTime;
- (void)generateQuesions;

@end
