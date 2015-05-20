//
//  CharacterFactory.m
//  Pirate Assignment
//
//  Created by OSX on 5/20/15.
//  Copyright (c) 2015 LebonTech solutions. All rights reserved.
//

#import "CharacterFactory.h"
#import "Character.h"

@implementation CharacterFactory

-(Character *)createCharacter
{
    Character *character = [[Character alloc] init];
    Armor *armor = [[Armor alloc] init];
    Weapon *weapon = [[Weapon alloc] init];
    
    [armor setHealth:10];
    [armor setArmorName:@"Plain Shirt"];
    
    [weapon setDamage:1];
    [weapon setWeaponName:@"Fist"];
    
    [character setHealth:10];
    [character setArmor: armor];
    [character setWeapon:weapon];
    [character setDamage: (1 + weapon.damage) ];
    
    return character;
}

@end
