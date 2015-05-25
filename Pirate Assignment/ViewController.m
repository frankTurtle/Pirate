//
//  ViewController.m
//  Pirate Assignment
//
//  Created by OSX on 5/18/15.
//  Copyright (c) 2015 LebonTech solutions. All rights reserved.
//

#import "ViewController.h"
#import "TileFactory.h"
//#import "Tile.h"
#import "CharacterFactory.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.tiles = [[NSArray alloc] initWithArray:[[[TileFactory alloc] init] tiles] ]; //.............. populates our tiles with a new TileFactory array of Tiles
    self.buttonsArray = [[NSArray alloc] initWithObjects:
                    self.northButtonObject, self.eastButtonObject,
                    self.southButtonObject, self.westButtonObject, nil]; //........................... populates the button objects into an array
    self.character = [[[CharacterFactory alloc] init] createCharacter]; //............................ creates a character
    [self updateLocation:0 yCoord:0]; //.............................................................. initial location set, also updates button visibility
    }

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)updateCharacterStats
{
    [self.healthLabel setText:[NSString stringWithFormat:@"%i", self.character.health] ];
    
}

// Method to update the background image
// image is pulled from the current Tile object
-(void)updateBackgroundImage
{
    self.backgroundImage.image = self.currentTile.backgroundImage;
}

// Method to update the story label text
// text is pulled from the current Tile object story
-(void)updateStoryText
{
    self.storyLabel.text = self.currentTile.story;
}

// Method to update the Current tile based upon the X, Y coords from the location
// this will pull from the array of Tile objects 
-(void)updateCurrentTile
{
    self.currentTile = [[self.tiles objectAtIndex:self.location.x] objectAtIndex:self.location.y];
}

// Method to check if a button should be displayed or not
// Hidden using the following criteria
// North: when the Y coordinate is 2
// East:  when the X coordinate is 3
// South: when the Y coordinate is 0
// West:  when the X coordinate is 0
-(BOOL) isButtonHidden:(UIButton *) inButton currentLocation:(CGPoint) location
{
    
    if (location.y == 2 && [inButton.titleLabel.text isEqual: @"North"]) //...... hides the North button when Y coordinate is 2
        return YES;
    
    if (location.x == 2 && [inButton.titleLabel.text isEqual: @"East"]) //....... hides the East button when X coordinate is 3
        return YES;
    
    if (location.y == 0 && [inButton.titleLabel.text isEqual: @"South"]) //...... hides the South button when Y coordinate is 0
        return YES;
    
    if (location.x == 0 && [inButton.titleLabel.text isEqual: @"West"]) //....... hides the West button when X coordinate is 0
        return YES;
    
    return NO; //................................................................ if none are true, the button doesnt need to hide
}

// Method to update the visibility of the buttons on the screen
-(void) updateButtons:(NSArray *) inButtonsArray
{
    for (UIButton *btn in inButtonsArray) //.................................................. loops through each button in the array
        btn.hidden = [self isButtonHidden:btn currentLocation:self.location]; //.............. checks to see if the button is active and hides if not
}

// Method to update the CGPoint's X and Y coordinates
// takes in two float values represengint the X and Y coordinate
// after it updates the location, it will update the visibility
// of the buttons
// also updates the current Tile being used
// also updates the story text based on the current Tile
-(void) updateLocation:(float) xCoord yCoord:(float) yCoord
{
    self.location = CGPointMake(xCoord, yCoord); //..... sets the location
    [self updateButtons:self.buttonsArray]; //.......... updates visiblity of the buttons
    [self updateCurrentTile]; //........................ updates correct Tile
    [self updateStoryText]; //.......................... updates the story
    [self updateBackgroundImage]; //.................... updates the background
    [self updateCharacterStats]; //..................... updates the health status label
}

- (IBAction)actionButton:(id)sender {
}

- (IBAction)resetGameButton:(id)sender {
}

// Method that adjust coordinates when the user clicks the North button
// increments the Y coordinate by 1
- (IBAction)northButton:(id)sender
{
    [self updateLocation:self.location.x yCoord:(self.location.y + 1)];
}

// Method that adjust coordinates when the user clicks the East button
// increments the X coordinate by 1
- (IBAction)eastButton:(id)sender
{
    [self updateLocation:(self.location.x + 1) yCoord:self.location.y];
}

// Method that adjust coordinates when the user clicks the South button
// decrements the Y coordinate by 1
- (IBAction)southButton:(id)sender
{
    [self updateLocation:self.location.x yCoord:(self.location.y - 1)];
}

// Method that adjust coordinates when the user clicks the West button
// decrements the X coordinate by 1
- (IBAction)westButton:(id)sender
{
    [self updateLocation:(self.location.x - 1) yCoord:self.location.y];
}
@end
