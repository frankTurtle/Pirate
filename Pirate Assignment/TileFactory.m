//
//  TileFactory.m
//  Pirate Assignment
//
//  Created by OSX on 5/19/15.
//  Copyright (c) 2015 LebonTech solutions. All rights reserved.
//

#import "TileFactory.h" 
#import "Tile.h"
#import "Weapon.h"
#import "Armor.h"

@implementation TileFactory

// Method to return an array full of Tile objects
// each tile has a story, title for the action button
// an image for the background
// a weaon and an armor object
//
// The array is an array of Tile objects which represent the columns in our grid
// the grid is 4 (length) x 3 (height)
-(NSArray *) tiles
{
    Tile *tile1 = [[Tile alloc] init]; //.................................................. initial tile
    tile1.story = @"Tile 1 story ... woo!"; //............................................. story for the initial tile
    tile1.actionButtonName = @"No Action"; //.............................................. initial tile button text
    tile1.backgroundImage = [UIImage imageNamed:@"piratesBackground.jpg"]; //.............. background image for the initial tile
    tile1.weapon = [ self createWeapon:@"Fist" damage:2 ]; //.............................. create a weapon for the initial tile
    tile1.armor =  [ self createArmor:@"Shirt" health:2 ]; //.............................. create armor for the initial tile
    
    
    Tile *tile2 = [[Tile alloc] init]; //.................................................. create tile 2
    tile2.story = @"Tile 2 story ... woo!"; //............................................. story for tile 2
    tile2.actionButtonName = @"No Action"; //.............................................. tile 2 button text
    tile2.backgroundImage = [UIImage imageNamed:@"piratesBackground.jpg"]; //.............. background image for tile 2
    
    
    Tile *tile3 = [[Tile alloc] init]; //.................................................. create tile 3
    tile3.story = @"Tile 3 story ... woo!"; //............................................. story for tile 3
    tile3.actionButtonName = @"No Action"; //.............................................. tile 3 button text
    tile3.backgroundImage = [UIImage imageNamed:@"piratesBackground.jpg"]; //.............. background image for tile 3
    
    NSArray *column1Array = [[NSArray alloc] initWithObjects:tile1, tile2, tile3, nil]; //. first column array holding tiles 1,2,3
    
    Tile *tile4 = [[Tile alloc] init]; //.................................................. create tile 4
    tile4.story = @"You see a sword!!!!!!"; //............................................. story for tile 4
    tile4.actionButtonName = @"Grab Sword"; //............................................. tile 4 button text
    tile4.backgroundImage = [UIImage imageNamed:@"treasureChest.jpg"]; //.................. background image for tile 4
    tile4.weapon = [ self createWeapon:@"Sword" damage:5 ]; //............................. create a weapon for the tile 4
    
    Tile *tile5 = [[Tile alloc] init]; //.................................................. create tile 5
    tile5.story = @"Tile 5 story ... woo!"; //............................................. story for tile 5
    tile5.actionButtonName = @"No Action"; //.............................................. tile 5 button text
    tile5.backgroundImage = [UIImage imageNamed:@"treasureChest.jpg"]; //.................. background image for tile 5
    
    Tile *tile6 = [[Tile alloc] init]; //.................................................. create tile 6
    tile6.story = @"SOME ARMORRRRRRRRRRRR"; //............................................. story for tile 6
    tile6.actionButtonName = @"Put on Armor"; //........................................... tile 6 button text
    tile6.backgroundImage = [UIImage imageNamed:@"treasureChest.jpg"]; //.................. background image for tile 6
    tile6.armor =  [ self createArmor:@"Armor" health:20 ]; //............................. create armor for the tile 6
    
    NSArray *column2Array = [[NSArray alloc] initWithObjects:tile4, tile5, tile6, nil]; //. second column array holding tiles 4,5,6
    
    Tile *tile7 = [[Tile alloc] init]; //.................................................. create tile 7
    tile7.story = @"Tile 7 story ... woo!"; //............................................. story for tile 7
    tile7.actionButtonName = @"No Action"; //................................................. tile 7 button text
    tile7.backgroundImage = [UIImage imageNamed:@"sexyPirates.jpg"]; //.................... background image for tile 7
    
    Tile *tile8 = [[Tile alloc] init]; //.................................................. create tile 8
    tile8.story = @"Tile 8 story ... woo!"; //............................................. story for tile 8
    tile8.actionButtonName = @"No Action"; //.............................................. tile 8 button text
    tile8.backgroundImage = [UIImage imageNamed:@"sexyPirates.jpg"]; //.................... background image for tile 8
    
    Tile *tile9 = [[Tile alloc] init]; //.................................................. create tile 9
    tile9.story = @"Tile 9 story ... woo!"; //............................................. story for tile 9
    tile9.actionButtonName = @"No Action"; //.............................................. tile 9 button text
    tile9.backgroundImage = [UIImage imageNamed:@"sexyPirates.jpg"]; //.................... background image for tile 9
    
    NSArray *column3Array = [[NSArray alloc] initWithObjects:tile7, tile8, tile9, nil]; //. third column array holding tiles 7,8,9
    
    NSArray *returnArray = [[NSArray alloc] initWithObjects:column1Array, column2Array, column3Array, nil]; //... final array full of the three column arrays
    
    return returnArray; //....................................................................................... return final array
}

// Method to create and return a weapon object
// takes in the weapon name and damge
-(Weapon *) createWeapon: (NSString *)nameWeaponThis damage:(int)weaponDamageIs
{
    Weapon *returnWeapon = [[Weapon alloc] init]; //............................ creates a new weapon object to return
    
    returnWeapon.weaponName = nameWeaponThis; //................................ sets the weapon name
    returnWeapon.damage = weaponDamageIs; //.................................... sets the weapon damage
    
    return returnWeapon; //..................................................... returns the weapon object
}

// Method to create an armor object
// takes in the armor name and health effect
-(Armor *) createArmor: (NSString *)nameArmorThis health:(int)armorHealthIs
{
    Armor *rtnArmor = [[Armor alloc] init]; //................................ creates a new armor object to return
    
    rtnArmor.armorName = nameArmorThis; //.................................... sets the armor name
    rtnArmor.health = armorHealthIs; //....................................... sets the health effect
    
    return rtnArmor; //....................................................... returns the armor object
}

@end
