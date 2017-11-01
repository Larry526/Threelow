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
        
//Also initializes 5 dice for game
        GameController *gameController = [[GameController alloc]init];
        
        
        NSMutableArray *diceArray = gameController.diceArray;
        
        
//        NSMutableArray *diceArray = [@[dice1, dice2, dice3, dice4, dice5] mutableCopy];
//        NSMutableArray *heldDice = [[NSMutableArray alloc]init];
        
        while(true) {

        
        char userInput [10];
        
        NSLog(@"What would you like to do?");
        fgets(userInput, 10, stdin);
        NSString * input = [NSString stringWithUTF8String:userInput];
        NSString *parsedInput = [input stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
        
        if ([parsedInput isEqualToString:@"roll"]) {
            
            for (Dice* dice in gameController.diceArray) {
                [dice randomValue];
            }
            
            [gameController displayDice];
            
        }
        else if ([parsedInput hasPrefix:@"hold"]) {
            
            NSString *hold = @"hold ";
            NSRange range = NSMakeRange([hold length],([parsedInput length]-[hold length]));
            NSString *heldStringNumber = [parsedInput substringWithRange:range];
            NSInteger heldNumber = [heldStringNumber intValue];
            
            [gameController holdDie:heldNumber];
        } else if ([parsedInput hasPrefix:@"reset"]) {
            [gameController resetDice];
        }



    
//        NSLog(@" ⚀ ⚁ ⚂ ⚃ ⚄ ⚅");
        
    }
        
    return 0;
}
}
