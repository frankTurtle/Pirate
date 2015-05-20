//
//  Character.h
//  Pirate Assignment
//
//  Created by OSX on 5/20/15.
//  Copyright (c) 2015 LebonTech solutions. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Weapon.h" //............... needed for weapons
#import "Armor.h" //................ needed for armor

@interface Character : NSObject

// Instance variables
@property (nonatomic) int health; //............................ holds characters health
@property (strong, nonatomic) Weapon *weapon; //.... holds the characters weapon
@property (strong, nonatomic) Armor *armor; //...... holds the characters armor

// Methods
-(void)setHealth:(int)health; //.................... sets the health of the characters
-(void)setWeapon:(Weapon *)weapon; //............... sets the weapon for the character
-(void)setArmor:(Armor *)armor; //.................. sets the armor for the character


@end
