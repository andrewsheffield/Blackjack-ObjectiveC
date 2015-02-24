//
//  BlackJack.h
//  Black Jack
//
//  Created by Andrew J Sheffield on 12/25/13.
//  Copyright (c) 2013 Andrew J Sheffield. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Deck.h"
#import "Card.h"
#import "Player.h"

@interface BlackJack : NSObject {
    Deck* deck;
    NSMutableArray* playerCards;
    NSMutableArray* computerCards;
    Player* currentPlayer;
    int minBet;
    int totalBet;
}

- (void) startGame;

@end
