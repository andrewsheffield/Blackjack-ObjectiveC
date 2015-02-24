//
//  Card.h
//  Black Jack
//
//  Created by Andrew J Sheffield on 12/23/13.
//  Copyright (c) 2013 Andrew J Sheffield. All rights reserved.
//
//  
//

#import <Foundation/Foundation.h>

@interface Card : NSObject {

//Card Variables
int number;
NSString* suit;
    
}

//Custructor, has to contruct with a card number and suit
- (id) initWithNumber: (int)number AndSuit: (NSString*) suit;
//Returns number of Card
- (int)getNumber;
//Returns suit of Card
- (NSString*)getSuit;
//Returns a string of card number and suit
- (NSString*)toString;
//Prints card to terminal
- (void)printCard;

@end
