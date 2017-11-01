//
//  Dice.m
//  Threelow
//
//  Created by Larry Luk on 2017-11-01.
//  Copyright © 2017 App App Studio. All rights reserved.
//

#import "Dice.h"

@implementation Dice

- (instancetype)init
{
    self = [super init];
    if (self) {
        _held = NO;
    }
    return self;
}

-(int) randomValue {
    
    if (self.held == NO){
    self.diceValue = arc4random_uniform(6) + 1;
        
    }
    return self.diceValue;

}



@end
