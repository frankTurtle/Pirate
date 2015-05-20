//
//  CharacterFactory.m
//  Pirate Assignment
//
//  Created by OSX on 5/20/15.
//  Copyright (c) 2015 LebonTech solutions. All rights reserved.
//

#import "CharacterFactory.h"
#import "Character.h" //....... needed to get a character object

@implementation CharacterFactory

-(Character *)createCharacter
{
    Character *character = [[Character alloc] init]; //......... creates the character object to return
    Armor *armor = [[Armor alloc] init]; //..................... creates an armor object
    Weapon *weapon = [[Weapon alloc] init]; //.................. creates a weapon object
    
    [armor setHealth:10]; //.................................... gives the value 10 to the armor
    [armor setArmorName:@"Plain Shirt"]; //..................... names the armor plain shirt
    
    [weapon setDamage:1]; //.................................... sets the weapon damage to 1
    [weapon setWeaponName:@"Fist"]; //.......................... names the weapon to fist
    
    [character setHealth:10]; //............................... sets initial healh to 10
    [character setArmor: armor]; //............................ sets the initial armor to the one created above
    [character setWeapon:weapon]; //........................... sets teh weapon to the one created above
    [character setDamage: (1 + weapon.damage) ]; //............ sets the person's dmg to 1 + weapon dmg
    
    return character; //....................................... returns the character object
}

@end
