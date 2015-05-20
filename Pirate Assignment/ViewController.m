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
    self.buttons = [[NSArray alloc] initWithObjects:
                    self.northButtonObject, self.eastButtonObject,
                    self.southButtonObject, self.westButtonObject, nil]; //........................... populates the button objects into an array
    
    for (UIButton *btn in self.buttons)
        [self isButtonActive:btn currentLocation:self.location];
    
    }

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void) isButtonActive:(UIButton *) inButton currentLocation:(CGPoint) location
{
    
    if (location.x == 0 && [inButton.titleLabel.text isEqual: @"West"])
        inButton.hidden = YES;
    
    if (location.x == 3 && [inButton.titleLabel.text isEqual: @"East"])
        inButton.hidden = YES;
    
    if (location.y == 2 && [inButton.titleLabel.text isEqual: @"North"])
        inButton.hidden = YES;
    
    if (location.y == 0 && [inButton.titleLabel.text isEqual: @"South"])
        inButton.hidden = YES;
}

- (IBAction)actionButton:(id)sender {
}

- (IBAction)resetGameButton:(id)sender {
}

- (IBAction)northButton:(id)sender {
}

- (IBAction)eastButton:(id)sender {
}

- (IBAction)southButton:(id)sender {
}

- (IBAction)westButton:(id)sender {
}
@end
