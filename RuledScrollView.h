//
//  RuledScrollView.h
//  RuledPaper
//
//  Created by palaniraja on 7/25/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RuledScrollView : UIScrollView

@property (nonatomic, retain) UIFont *font;
@property (nonatomic, retain) UIColor *lineColor;
@property (nonatomic) float lineWidth;

-(void) redrawRuleForRect:(CGRect)rect;

@end
