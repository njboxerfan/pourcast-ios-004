//
//  FISDayDisplay.h
//  pour-cast
//
//  Created by Bert Carr on 3/23/15.
//  Copyright (c) 2015 The Flatiron School. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FISDay.h"

@interface FISDayDisplay : UIView

@property (strong, nonatomic) FISDay *day;

@property (strong, nonatomic) IBOutlet UILabel *dayOfWeek;
@property (strong, nonatomic) IBOutlet UILabel *lowTemp;
@property (strong, nonatomic) IBOutlet UILabel *highTemp;

@end
