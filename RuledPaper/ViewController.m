//
//  ViewController.m
//  RuledPaper
//
//  Created by palaniraja on 7/25/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize textview, flipped;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    self.flipped = NO;
    textview.lineWidth = 1.0;
    textview.lineColor = [UIColor redColor];
    textview.lineInset = UIEdgeInsetsMake(0, 5, 0, 25);
    textview.contentMode = UIViewContentModeRedraw;
    [textview setNeedsDisplay];
}

- (void)viewDidUnload
{
    [self setTextview:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

-(void) didRotateFromInterfaceOrientation:(UIInterfaceOrientation)fromInterfaceOrientation{
    [textview setNeedsDisplay];
}

-(IBAction)toggleFont:(id)sender{
    
    
    if (self.flipped) {
        textview.font = [UIFont fontWithName:@"Chalkduster" size:18.0f];
    }else{
        textview.font = [UIFont fontWithName:@"Noteworthy" size:12.0f];
    }
    [textview setNeedsDisplay];
    self.flipped = !self.flipped;
}

@end
