//
//  Tile.h
//  Pirate Assignment
//
//  Created by OSX on 5/18/15.
//  Copyright (c) 2015 LebonTech solutions. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface Tile : NSObject

@property (strong, nonatomic) NSString *story; //...................... text to write the story of that page
@property (strong, nonatomic) UIImage *backgroundImage; //............. image for the background
@property (strong, nonatomic) NSString *actionButtonName; //........... label for the action button

@end
