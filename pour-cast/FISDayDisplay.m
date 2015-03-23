//
//  FISDayDisplay.m
//  pour-cast
//
//  Created by Bert Carr on 3/23/15.
//  Copyright (c) 2015 The Flatiron School. All rights reserved.
//

#import "FISDayDisplay.h"

@interface FISDayDisplay ()

@property (strong, nonatomic) IBOutlet UIView *view;

@end

@implementation FISDayDisplay

-(id)initWithCoder:(NSCoder *)aDecoder
{
    self = [super initWithCoder:aDecoder];
    if(!self){
        return nil;
    }
    
    [[NSBundle mainBundle] loadNibNamed:NSStringFromClass([self class])
                                  owner:self
                                options:nil];
    
    [self addSubview:self.view];
    
    return self;
}

- (void)setDay:(FISDay *)day
{
    _day = day;
    
    self.dayOfWeek.text = _day.dayOfWeek;
    self.lowTemp.text = _day.loTemp;
    self.highTemp.text = _day.hiTemp;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
