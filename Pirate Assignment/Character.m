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

// Method to set the health of the character
-(void)setHealth:(int)inHealth
{
    _health = inHealth;
}

// Method to set the damage of the character
-(void)setDamage:(int)inDamage
{
    _damage = inDamage;
}

// Method to set the weapon of the characer
-(void)setWeapon:(Weapon *)weapon
{
    _weapon = weapon;
}

// Method to set teh armor of the character
-(void)setArmor:(Armor *)armor
{
    _armor = armor;
}

@end
