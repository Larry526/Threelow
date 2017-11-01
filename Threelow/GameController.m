//
//  GameController.m
//  Threelow
//
//  Created by Larry Luk on 2017-11-01.
//  Copyright © 2017 App App Studio. All rights reserved.
//

#import "GameController.h"

@implementation GameController

- (instancetype)init
{
    self = [super init];
    if (self) {
        Dice *dice1 = [[Dice alloc]init];
        Dice *dice2 = [[Dice alloc]init];
        Dice *dice3 = [[Dice alloc]init];
        Dice *dice4 = [[Dice alloc]init];
        Dice *dice5 = [[Dice alloc]init];
        
        _diceArray = [@[dice1, dice2,dice3,dice4,dice5] mutableCopy];
    }
    return self;
}

-(void) holdDie:(NSInteger)holdDice{
//    NSLog(@"%ld", holdDice);
    Dice * diceHeld = self.diceArray[holdDice-1];
    if(diceHeld.held == NO){
        diceHeld.held = YES;
        }
    else{
        diceHeld.held = NO;
    }
    [self displayDice];
}

-(void) displayDice {
    
//    NSArray <NSString*> *diceSymbol = @[@"⚀", @"⚁", @"⚂", @"⚃", @"⚄", @"⚅"];
    NSArray <NSString*> *diceSymbol = @[@"1", @"2", @"3", @"4", @"5", @"6"];

//    for (Dice* dice in self.diceArray) {
//        NSLog(@" %@", diceSymbol[[dice diceValue]-1 ]);
//    }
    
    for (Dice * dice in self.diceArray) {
        if(dice.held == YES){
            NSLog(@"[%@]", diceSymbol[[dice diceValue]-1 ]);
        }
        else{
            NSLog(@"%@", diceSymbol[[dice diceValue]-1 ]);
        }
    
}
    
}
@end
