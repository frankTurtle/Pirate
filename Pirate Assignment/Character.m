//
//  Character.m
//  Pirate Assignment
//
//  Created by OSX on 5/20/15.
//  Copyright (c) 2015 LebonTech solutions. All rights reserved.
//

#import "Character.h"
#import "Weapon.h"
#import "Armor.h"

@implementation Character

-(void)setHealth:(int)health
{
    self.health = health;
}

-(void)setWeapon:(Weapon *)weapon
{
    self.weapon = weapon;
}

-(void)setArmor:(Armor *)armor
{
    self.armor = armor;
}

@end
