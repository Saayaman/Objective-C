

//
//  PaymentGateway.m
//  Assignment10
//
//  Created by ayako_sayama on 2017-05-02.
//  Copyright © 2017 ayako_sayama. All rights reserved.
//

#import "PaymentGateway.h"
NSInteger randomnum(void);

@implementation PaymentGateway


- (void)processPayment{
    
    NSInteger price = randomnum();
    [self.paymentDelegate processPaymentAmount:price];
    
}

NSInteger randomnum(void){
    return arc4random_uniform((1000)+100);
}


@end
