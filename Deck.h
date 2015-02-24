//
//  Deck.h
//  Black Jack
//
//  Created by Andrew J Sheffield on 12/24/13.
//  Copyright (c) 2013 Andrew J Sheffield. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Deck : NSObject {
    NSMutableArray* deck;
}

- (void) populateDeck;
- (void) shuffleDeck;
- (id) drawCard;
- (void) printDeck;

@end
