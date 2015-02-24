//
//  player.h
//  Black Jack
//
//  Created by Andrew J Sheffield on 12/27/13.
//  Copyright (c) 2013 Andrew J Sheffield. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Player : NSObject {
    NSString* name;
   int money;
}

- (id) initWithName: (NSString*)name AndMoney: (int)money;
- (void) deposit: (int)m;
- (void) withdraw: (int)m;
- (void) setName: (NSString*)n;
- (int) getMoney;
- (NSString*) getName;

@end
