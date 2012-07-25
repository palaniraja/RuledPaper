//
//  ViewController.h
//  RuledPaper
//
//  Created by palaniraja on 7/25/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "RuledTextview.h"

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet RuledTextview *textview;

@property(nonatomic) BOOL flipped;

-(IBAction)toggleFont:(id)sender;
@end
