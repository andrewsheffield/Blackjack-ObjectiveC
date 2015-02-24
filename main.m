//
//  main.m
//  Black Jack
//
//  Created by Andrew J Sheffield on 12/23/13.
//  Copyright (c) 2013 Andrew J Sheffield. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BlackJack.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        BlackJack* game = [[BlackJack alloc] init];
        [game startGame];
        
    }
    return 0;
}

