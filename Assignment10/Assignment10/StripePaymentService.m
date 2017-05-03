
//
//  StripePaymentService.m
//  Assignment10
//
//  Created by ayako_sayama on 2017-05-02.
//  Copyright © 2017 ayako_sayama. All rights reserved.
//

#import "StripePaymentService.h"

@implementation StripePaymentService


- (void)processPaymentAmount:(NSInteger)integer {
    
    if ([self canProcessPayment] == true) {
        NSLog(@"$ %ld is payed via Stripe.", (long)integer);
    } else{NSLog(@"System is under maintenance.");}
}

- (BOOL)canProcessPayment{
    return arc4random_uniform(2);
}



@end
