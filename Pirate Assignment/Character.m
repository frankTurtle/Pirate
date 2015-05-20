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
-(void)setHealth:(int)health
{
    self.health = health;
}

// Method to set the damage of the character
-(void)setDamage:(int)damage
{
    self.damage = damage;
}

// Method to set the weapon of the characer
-(void)setWeapon:(Weapon *)weapon
{
    self.weapon = weapon;
}

// Method to set teh armor of the character
-(void)setArmor:(Armor *)armor
{
    self.armor = armor;
}

@end
