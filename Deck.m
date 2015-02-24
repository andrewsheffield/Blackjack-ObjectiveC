//
//  Deck.m
//  Black Jack
//
//  Created by Andrew J Sheffield on 12/24/13.
//  Copyright (c) 2013 Andrew J Sheffield. All rights reserved.
//

#import "Deck.h"
#import "Card.h"

@implementation Deck

- (id) init {
    if (self = [super init])
    {
        [self shuffleDeck];
    }
    return self;
}

- (void) populateDeck {
    deck = [[NSMutableArray alloc] init];
    for (int i = 0; i<52; i++) {
        if (i<13) {
            Card* card = [[Card alloc] initWithNumber:i+1 AndSuit:@"Club"];
            [deck addObject:card];
        }
        else if (i<26) {
            Card* card = [[Card alloc] initWithNumber:i-12 AndSuit:@"Heart"];
            [deck addObject:card];
        }
        else if (i<39) {
            Card* card = [[Card alloc] initWithNumber:i-25 AndSuit:@"Spade"];
            [deck addObject:card];
        }
        else if (i<52) {
            Card* card = [[Card alloc] initWithNumber:i-38 AndSuit:@"Diamond"];
            [deck addObject:card];
        }
    }
}

- (void) shuffleDeck {
    [self populateDeck];
    NSUInteger count = [deck count];
    for (NSUInteger i = 0; i < count; ++i) {
        // Select a random element between i and end of array to swap with.
        NSUInteger nElements = count - i;
        unsigned int n = arc4random_uniform((unsigned int)nElements) + (unsigned int)i;
        [deck exchangeObjectAtIndex:i withObjectAtIndex:n];
    }
}

- (id) drawCard {
    Card* card = [deck firstObject];
    [deck removeObjectAtIndex:0];
    return card;
}

- (void) printDeck {
    NSLog(@"%lu", (unsigned long)[deck count]);
    [self shuffleDeck];
    Card* card;
    for (card in deck) {
        [card printCard];
    }
}

@end
