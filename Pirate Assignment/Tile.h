//
//  Tile.h
//  Pirate Assignment
//
//  Created by OSX on 5/18/15.
//  Copyright (c) 2015 LebonTech solutions. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "Weapon.h"
#import "Armor.h"
#import "Boss.h"

@interface Tile : NSObject

@property (strong, nonatomic) NSString *story; //...................... text to write the story of that page
@property (strong, nonatomic) UIImage *backgroundImage; //............. image for the background
@property (strong, nonatomic) NSString *actionButtonName; //........... label for the action button
@property (strong, nonatomic) Weapon *weapon; //....................... weapon for the character
@property (strong, nonatomic) Armor *armor; //......................... armor for the character
@property (strong, nonatomic) Boss *boss; //........................... BOSSSSSSSS RUNNNNNN!!!!!!!!!

@end
