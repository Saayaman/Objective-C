//
//  main.m
//  Assignment10
//
//  Created by ayako_sayama on 2017-05-02.
//  Copyright © 2017 ayako_sayama. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "GetInput.h"
#import "PaymentGateway.h"
#import "PaypaylPaymentService.h"
#import "AmazonPaymentService.h"
#import "StripePaymentService.h"
#import "ApplePaymentService.h"


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSLog(@"Thank you for shopping at Acme.com Your total today is $xxx Please select your payment method: 1: Paypal, 2: Stripe, 3: Amazon 4: Apple");
        
        PaymentGateway *gateway = [[PaymentGateway alloc]init];
        
        PaypaylPaymentService *paypal = [[PaypaylPaymentService alloc]init];
        AmazonPaymentService *amazon  = [[AmazonPaymentService alloc]init];
        StripePaymentService *stripe  = [[StripePaymentService alloc]init];
        ApplePaymentService *apple  = [[ApplePaymentService alloc]init];

        

        NSInteger input = [GetInput getInput];
        
        switch (input) {
            case 1:
                gateway.paymentDelegate = paypal;
                break;
            case 2:
                gateway.paymentDelegate = stripe;
                break;
            case 3:
                gateway.paymentDelegate = amazon;
                break;
            case 4:
                gateway.paymentDelegate = apple;
            default:
                break;
        }
        
        [gateway processPayment];
        
    }
    return 0;
}

