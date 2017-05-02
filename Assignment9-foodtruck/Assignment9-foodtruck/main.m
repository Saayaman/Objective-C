//  Copyright © 2016 Lighthouse Labs. All rights reserved.


#import <Foundation/Foundation.h>
#import "FoodTruck.h"
#import "Cook.h"
#import "Chef.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        FoodTruck *truckA = [[FoodTruck alloc] initWithName:@"Take a Bao" andFoodType:@"bao"];
        
        FoodTruck *truckB = [[FoodTruck alloc] initWithName:@"Tim Shortons" andFoodType:@"shortbread"];
        
        // create instances of your delegate class
        Cook *cook1 = [[Cook alloc]init];
        Chef *chef1 = [[Chef alloc]init];

        
        // set truckA and truckB's delegate to your new instance.
        truckA.delegate = cook1;
        truckB.delegate = cook1;
        
        //if i put it here, truckA and truckB's delegate is overwritten by chef1.
        truckA.delegate = chef1;
        truckB.delegate = chef1;
        
        [truckA serve:10];
        [truckB serve:5];
        
        [truckA cashOut];
        [truckB cashOut];

        
//        [truckA serve:10];
//        [truckB serve:5];
//        
//        [truckA cashOut];
//        [truckB cashOut];
//        
    }
    return 0;
}
