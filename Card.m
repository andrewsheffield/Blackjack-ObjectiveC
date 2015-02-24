//
//  Card.m
//  Black Jack
//
//  Created by Andrew J Sheffield on 12/23/13.
//  Copyright (c) 2013 Andrew J Sheffield. All rights reserved.
//

#import "Card.h"

@implementation Card : NSObject

- (id) initWithNumber: (int)n AndSuit: (NSString*)s {
    number = n;
    suit = s;
    return self;
}

- (int)getNumber {
    return number;
}

- (NSString*)getSuit {
    return suit;
}

- (NSString*)toString {
    return [NSString stringWithFormat:@"[%d%s%@s]", number, " of ", suit];
}

- (void)printCard {
    NSLog(@"%@", [self toString]);
}

@end
