//
//  main.m
//  Threelow
//
//  Created by Larry Luk on 2017-11-01.
//  Copyright © 2017 App App Studio. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Dice.h"
#import "GameController.h"



int main(int argc, const char * argv[]) {

    
    @autoreleasepool {
        

        
        Dice *dice1 = [[Dice alloc]init];
        Dice *dice2 = [[Dice alloc]init];
        Dice *dice3 = [[Dice alloc]init];
        Dice *dice4 = [[Dice alloc]init];
        Dice *dice5 = [[Dice alloc]init];
        
        GameController *gameController = [[GameController alloc]init];
        
        NSMutableArray *diceArray = gameController.diceArray;
        NSMutableArray *heldDice = gameController.heldDice;
        
        
//        NSMutableArray *diceArray = [@[dice1, dice2, dice3, dice4, dice5] mutableCopy];
//        NSMutableArray *heldDice = [[NSMutableArray alloc]init];
        
        while(true) {

        
        char userInput [10];
        
        NSLog(@"What would you like to do?");
        fgets(userInput, 10, stdin);
        NSString * input = [NSString stringWithUTF8String:userInput];
        NSString *parsedInput = [input stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
        
        if ([parsedInput isEqualToString:@"roll"]) {
            
            [dice1 randomValue];
            [dice2 randomValue];
            [dice3 randomValue];
            [dice4 randomValue];
            [dice5 randomValue];
            
            
        }
        }



    
//        NSLog(@" ⚀ ⚁ ⚂ ⚃ ⚄ ⚅");
    
    }
        
    return 0;
}
