//
//  ViewController.h
//  Pirate Assignment
//
//  Created by OSX on 5/18/15.
//  Copyright (c) 2015 LebonTech solutions. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (nonatomic) CGPoint location; //........................... x,y coordinates of the current location
@property (strong, nonatomic) NSArray *tiles; //..................... array full of Tile objects
@property (strong, nonatomic) IBOutlet UILabel *healthLabel; //...... the health label
@property (strong, nonatomic) IBOutlet UILabel *damageLabel; //...... the damage label
@property (strong, nonatomic) IBOutlet UILabel *weaponLabel; //...... the weapon label
@property (strong, nonatomic) IBOutlet UILabel *armorLabel; //....... the armor label

- (IBAction)actionButton:(id)sender; //.............................. method that handles when action button is clicked
- (IBAction)resetGameButton:(id)sender; //........................... method that handles the reset game button
- (IBAction)northButton:(id)sender; //............................... method that handles the north button
- (IBAction)eastButton:(id)sender; //................................ method that handles the east button
- (IBAction)southButton:(id)sender; //............................... method that handles the south button
- (IBAction)westButton:(id)sender; //................................ method that handles the west button


@end

