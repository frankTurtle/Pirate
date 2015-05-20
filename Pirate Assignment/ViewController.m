//
//  ViewController.m
//  Pirate Assignment
//
//  Created by OSX on 5/18/15.
//  Copyright (c) 2015 LebonTech solutions. All rights reserved.
//

#import "ViewController.h"
#import "TileFactory.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.location = CGPointMake(0,0); //............................................................. initial location set
    self.tiles = [[NSArray alloc] initWithArray:[[[TileFactory alloc] init] tiles] ]; //.............. populates our tiles with a new TileFactory object
    self.buttonsArray = [[NSArray alloc] initWithObjects:
                    self.northButtonObject, self.eastButtonObject,
                    self.southButtonObject, self.westButtonObject, nil]; //........................... populates the button objects into an array
    
    [self updateButtons:self.buttonsArray];
    
    }

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
    
    if (location.x == 3 && [inButton.titleLabel.text isEqual: @"East"]) //....... hides the East button when X coordinate is 3
        return YES;
    
    if (location.y == 0 && [inButton.titleLabel.text isEqual: @"South"]) //...... hides the South button when Y coordinate is 0
        return YES;
    
    if (location.x == 0 && [inButton.titleLabel.text isEqual: @"West"]) //....... hides the West button when X coordinate is 0
        return YES;
    
    return NO;
}

-(void) updateButtons:(NSArray *) inButtonsArray
{
    for (UIButton *btn in inButtonsArray) //............................................................ loops through each button in the array
        btn.hidden = [self isButtonHidden:btn currentLocation:self.location]; //........................ checks to see if the button is active and hides if not
}

- (IBAction)actionButton:(id)sender {
}

- (IBAction)resetGameButton:(id)sender {
}

- (IBAction)northButton:(id)sender
{
    if (self.location.y < 2)
    {
        self.location = CGPointMake(self.location.x, (self.location.y+1) );
        [self updateButtons:self.buttonsArray];
    }
}

- (IBAction)eastButton:(id)sender {
}

- (IBAction)southButton:(id)sender {
}

- (IBAction)westButton:(id)sender {
}
@end
