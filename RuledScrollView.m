//
//  RuledScrollView.m
//  RuledPaper
//
//  Created by palaniraja on 7/25/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "RuledScrollView.h"

@implementation RuledScrollView
@synthesize font, lineColor, lineWidth;

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/


-(void) redrawRuleForRect:(CGRect)rect{
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    CGContextSetStrokeColorWithColor(context, self.lineColor.CGColor);
    CGContextSetLineWidth(context, self.lineWidth);
    CGFloat strokeOffset = (self.lineWidth / 2);
    
    CGFloat rowHeight = self.font.lineHeight;
    if (rowHeight > 0) {
        CGRect rowRect = CGRectMake(self.contentOffset.x, - self.bounds.size.height, self.contentSize.width, rowHeight);
        while (rowRect.origin.y < (self.bounds.size.height + self.contentSize.height)) {
            CGContextMoveToPoint(context, rowRect.origin.x + strokeOffset, rowRect.origin.y + strokeOffset);
            CGContextAddLineToPoint(context, rowRect.origin.x + rowRect.size.width + strokeOffset, rowRect.origin.y + strokeOffset);
            CGContextDrawPath(context, kCGPathStroke);
            
            rowRect.origin.y += rowHeight;
        }
    }
}

@end
