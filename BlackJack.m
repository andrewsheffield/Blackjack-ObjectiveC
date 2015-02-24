//
//  blackJack.m
//  Black Jack
//
//  Created by Andrew J Sheffield on 12/25/13.
//  Copyright (c) 2013 Andrew J Sheffield. All rights reserved.
//

#import "BlackJack.h"

@implementation BlackJack

//Starts game, only call once per game played, do NOT call to reset to next deal.
- (void) startGame {
    minBet = 5;
    totalBet = 0;
    
    [self getPlayerInfo];
    NSLog(@"####Welcome to Black Jack by Andrew J Sheffield####");
    [self nextGame];
}

//Sets up player information for game, allows user to enter their name and amount they wish to start with.
- (void) getPlayerInfo {
    char str[50] = {};
    NSString* name;
    int money;
    
    NSLog(@"Name : ");
    scanf(" %s", str);
    name = [NSString stringWithUTF8String:str];
    
    NSLog(@"Start Money : ");
    scanf(" %i", &money);
    
    currentPlayer = [[Player alloc] initWithName:name AndMoney:money];
}

//Sends player to the next deal, use this when players current deal is finished
- (void) nextGame {
    deck = [[Deck alloc] init];
    playerCards = [[NSMutableArray alloc] init];
    computerCards = [[NSMutableArray alloc] init];
    [self dealCards];
}

- (void) dealCards {
    [playerCards addObject:[deck drawCard]];
    [computerCards addObject:[deck drawCard]];
    [playerCards addObject:[deck drawCard]];
    [computerCards addObject:[deck drawCard]];
    
    NSLog(@"You are currently holding:");
    for (int i = 0; i < playerCards.count; i++) {
        [[playerCards objectAtIndex:i] printCard];
    }
    NSLog(@"Computer is currently showing:");
    [[computerCards objectAtIndex:1] printCard];
    [self placeBet];
}

- (void) placeBet {
    int currentBet = 0;
    
    NSLog(@"Your min bet is 5, How much more would you like to bet? : ");
    scanf(" %i", &currentBet);
    currentBet += minBet;
    
    [currentPlayer withdraw:currentBet];
    NSLog(@"Your current bet is : %i", currentBet);
    [self hitOrStay];
}

- (void) hitOrStay {
    char choice;
    
    NSLog(@"Would you like to hit or stay? (h/s)");
    scanf(" %c", &choice);
    if (choice == 'h') {
        NSLog(@"allow user to draw one more card and bet again");
    }
    else if (choice == 's') {
        NSLog(@"Computer draws and ends game");
    }
    else {
        NSLog(@"Error: Invalid choice.");
        exit(0);
    }
}

@end
