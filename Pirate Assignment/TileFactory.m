//
//  TileFactory.m
//  Pirate Assignment
//
//  Created by OSX on 5/19/15.
//  Copyright (c) 2015 LebonTech solutions. All rights reserved.
//

#import "TileFactory.h" 
#import "Tile.h"

@implementation TileFactory


-(NSArray *) tiles
{
    Tile *tile1 = [[Tile alloc] init];
    tile1.story = @"Tile 1 story ... woo!";
    tile1.actionButtonName = @"Action";
    tile1.backgroundImage = [UIImage imageNamed:@"piratesBackground.jpg"];
    
    Tile *tile2 = [[Tile alloc] init];
    tile2.story = @"Tile 2 story ... woo!";
    tile2.actionButtonName = @"Action";
    tile2.backgroundImage = [UIImage imageNamed:@"piratesBackground.jpg"];
    
    Tile *tile3 = [[Tile alloc] init];
    tile3.story = @"Tile 3 story ... woo!";
    tile3.actionButtonName = @"Action";
    tile3.backgroundImage = [UIImage imageNamed:@"piratesBackground.jpg"];
    
    NSArray *column1Array = [[NSArray alloc] initWithObjects:tile1, tile2, tile3, nil];
    
    Tile *tile4 = [[Tile alloc] init];
    tile4.story = @"Tile 4 story ... woo!";
    tile4.actionButtonName = @"Action";
    tile4.backgroundImage = [UIImage imageNamed:@"treasureChest.png"];
    
    Tile *tile5 = [[Tile alloc] init];
    tile5.story = @"Tile 5 story ... woo!";
    tile5.actionButtonName = @"Action";
    tile5.backgroundImage = [UIImage imageNamed:@"treasureChest.png"];
    
    Tile *tile6 = [[Tile alloc] init];
    tile6.story = @"Tile 6 story ... woo!";
    tile6.actionButtonName = @"Action";
    tile6.backgroundImage = [UIImage imageNamed:@"treasureChest.png"];
    
    NSArray *column2Array = [[NSArray alloc] initWithObjects:tile4, tile5, tile6, nil];
    
    Tile *tile7 = [[Tile alloc] init];
    tile7.story = @"Tile 7 story ... woo!";
    tile7.actionButtonName = @"Action";
    tile7.backgroundImage = [UIImage imageNamed:@"sexyPirates.jpg"];
    
    Tile *tile8 = [[Tile alloc] init];
    tile8.story = @"Tile 8 story ... woo!";
    tile8.actionButtonName = @"Action";
    tile8.backgroundImage = [UIImage imageNamed:@"sexyPirates.jpg"];
    
    Tile *tile9 = [[Tile alloc] init];
    tile9.story = @"Tile 9 story ... woo!";
    tile9.actionButtonName = @"Action";
    tile9.backgroundImage = [UIImage imageNamed:@"sexyPirates.jpg"];
    
    NSArray *column3Array = [[NSArray alloc] initWithObjects:tile7, tile8, tile9, nil];
    
    NSArray *returnArray = [[NSArray alloc] initWithObjects:column1Array, column2Array, column3Array, nil];
    
    return returnArray;
}


@end
