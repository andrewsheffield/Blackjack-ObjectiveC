//
//  player.m
//  Black Jack
//
//  Created by Andrew J Sheffield on 12/27/13.
//  Copyright (c) 2013 Andrew J Sheffield. All rights reserved.
//

#import "Player.h"

@implementation Player

- (id) initWithName: (NSString*)n AndMoney: (int)m {
    name = n;
    money = m;
    return self;
}

- (void) deposit: (int)m {
    money += m;
}

- (void) withdraw: (int)m {
    if (m > money) {
        NSLog(@"Error, not enough money in account");
        exit(0);
    }
    money -= m;
}

- (void) setName: (NSString*)n {
    name = n;
}

- (int) getMoney {
    return money;
}

- (NSString*) getName {
    return name;
}

@end
