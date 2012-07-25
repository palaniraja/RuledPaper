//
//  RuledTextview.m
//  RuledPaper
//
//  Created by palaniraja on 7/25/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "RuledTextview.h"
#import <QuartzCore/QuartzCore.h>

@implementation RuledTextview
@synthesize lineColor, lineWidth, lineInset;


- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

/*
 drawRect is from - http://stackoverflow.com/a/8349230/240255
 */
- (void)drawRect:(CGRect)rect
{    
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    CGContextSetStrokeColorWithColor(context, self.lineColor.CGColor);
    CGContextSetLineWidth(context, self.lineWidth);
    CGFloat strokeOffset = (self.lineWidth / 2);
    
    UIEdgeInsets padding = self.lineInset;
    
    CGFloat rowHeight = self.font.lineHeight;
    if (rowHeight > 0) {
        CGRect rowRect = CGRectMake(self.contentOffset.x, - self.bounds.size.height, self.contentSize.width, rowHeight);
        while (rowRect.origin.y < (self.bounds.size.height + self.contentSize.height)) {
            CGContextMoveToPoint(context, rowRect.origin.x + strokeOffset + padding.left, rowRect.origin.y + strokeOffset);
            CGContextAddLineToPoint(context, rowRect.origin.x + rowRect.size.width + strokeOffset - padding.right , rowRect.origin.y + strokeOffset);
            CGContextDrawPath(context, kCGPathStroke);
            
            rowRect.origin.y += rowHeight;
        }
    }
}

@end
