//
//  Dice.m
//  Threelow
//
//  Created by Larry Luk on 2017-11-01.
//  Copyright © 2017 App App Studio. All rights reserved.
//

#import "Dice.h"

@implementation Dice

-(int) randomValue {
    
    self.diceValue = arc4random_uniform(6) + 1;
    NSLog(@"%d", _diceValue);
    
    return self.diceValue;
    
}


@end
