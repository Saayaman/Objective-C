
#import <Foundation/Foundation.h>
@class PaymentGateway;

@protocol PaymentGateway <NSObject>

- (void)processPaymentAmount:(NSInteger)integer;
- (BOOL)canProcessPayment;

@end

@interface PaymentGateway : NSObject

@property (nonatomic,weak) id<PaymentGateway> paymentDelegate;

- (void)processPayment;

@end
