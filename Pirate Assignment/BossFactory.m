//
//  BossFactory.m
//  Pirate Assignment
//
//  Created by OSX on 5/25/15.
//  Copyright (c) 2015 LebonTech solutions. All rights reserved.
//

#import "BossFactory.h"
#import "Boss.h" //.......... needed for boss object creation

@implementation BossFactory

// Method that creates a boss object
// gives it health and damage
-(Boss *)createBossMan
{
    Boss *bigBoss = [[Boss alloc] init]; //..... create boss object
    bigBoss.health = 50; //..................... give it health
    bigBoss.damage = 4; //..................... give it damage
    
    return bigBoss; //.......................... return object
}

@end
