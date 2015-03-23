//
//  FISViewController.m
//  pour-cast
//
//  Created by Joe Burgess on 11/19/14.
//  Copyright (c) 2014 The Flatiron School. All rights reserved.
//

#import "FISViewController.h"
#import "ForcastAPIClient.h"
#import "FISDayDisplay.h"

@interface FISViewController ()

@property (weak, nonatomic) IBOutlet FISDayDisplay *dayOne;
@property (weak, nonatomic) IBOutlet FISDayDisplay *dayTwo;
@property (weak, nonatomic) IBOutlet FISDayDisplay *dayThree;
@property (weak, nonatomic) IBOutlet FISDayDisplay *dayFour;
@property (weak, nonatomic) IBOutlet FISDayDisplay *dayFive;

@end

@implementation FISViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.

    [ForcastAPIClient getForecastForCoordinate:CLLocationCoordinate2DMake(37.8267, -122.423) Completion:^(NSArray *dailyForecast) {

        NSDictionary *dayOne = dailyForecast[1];
        NSInteger time = [dayOne[@"time"] integerValue];
        NSDateFormatter *format = [[NSDateFormatter alloc] init];

        [format setDateFormat:@"MM/dd"];
        NSDate *dateTime = [NSDate dateWithTimeIntervalSince1970:time];
        NSString *maxTemp = [NSString stringWithFormat:@"High: %@F",dayOne[@"temperatureMax"]];
        NSString *minTemp = [NSString stringWithFormat:@"Low: %@F",dayOne[@"temperatureMin"]];
        [[NSOperationQueue mainQueue] addOperationWithBlock:^{
            
            FISDay *dayUno = [[FISDay alloc] init];
            dayUno.dayOfWeek = [format stringFromDate:dateTime];
            dayUno.loTemp = minTemp;
            dayUno.hiTemp = maxTemp;
            
            self.dayOne.day = dayUno;
            
        }];

        NSDictionary *day = dailyForecast[2];
        time = [day[@"time"] integerValue];
        dateTime = [NSDate dateWithTimeIntervalSince1970:time];
        maxTemp = [NSString stringWithFormat:@"High: %@F",day[@"temperatureMax"]];
        minTemp = [NSString stringWithFormat:@"Low: %@F",day[@"temperatureMin"]];
        [[NSOperationQueue mainQueue] addOperationWithBlock:^{
            
            FISDay *dayDos = [[FISDay alloc] init];
            dayDos.dayOfWeek = [format stringFromDate:dateTime];
            dayDos.loTemp = minTemp;
            dayDos.hiTemp = maxTemp;
            
            self.dayTwo.day = dayDos;
            
        }];
        day = dailyForecast[3];
        time = [day[@"time"] integerValue];
        dateTime = [NSDate dateWithTimeIntervalSince1970:time];
        maxTemp = [NSString stringWithFormat:@"High: %@F",day[@"temperatureMax"]];
        minTemp = [NSString stringWithFormat:@"Low: %@F",day[@"temperatureMin"]];
        [[NSOperationQueue mainQueue] addOperationWithBlock:^{
            
            FISDay *dayTres = [[FISDay alloc] init];
            dayTres.dayOfWeek = [format stringFromDate:dateTime];
            dayTres.loTemp = minTemp;
            dayTres.hiTemp = maxTemp;
            
            self.dayThree.day = dayTres;
            
        }];
        day = dailyForecast[4];
        time = [day[@"time"] integerValue];
        dateTime = [NSDate dateWithTimeIntervalSince1970:time];
        maxTemp = [NSString stringWithFormat:@"High: %@F",day[@"temperatureMax"]];
        minTemp = [NSString stringWithFormat:@"Low: %@F",day[@"temperatureMin"]];
        [[NSOperationQueue mainQueue] addOperationWithBlock:^{
            
            FISDay *dayQuatro = [[FISDay alloc] init];
            dayQuatro.dayOfWeek = [format stringFromDate:dateTime];
            dayQuatro.loTemp = minTemp;
            dayQuatro.hiTemp = maxTemp;
            
            self.dayFour.day = dayQuatro;
            
        }];
        day = dailyForecast[5];
        time = [day[@"time"] integerValue];
        dateTime = [NSDate dateWithTimeIntervalSince1970:time];
        maxTemp = [NSString stringWithFormat:@"High: %@F",day[@"temperatureMax"]];
        minTemp = [NSString stringWithFormat:@"Low: %@F",day[@"temperatureMin"]];
        [[NSOperationQueue mainQueue] addOperationWithBlock:^{
            
            FISDay *dayCinco = [[FISDay alloc] init];
            dayCinco.dayOfWeek = [format stringFromDate:dateTime];
            dayCinco.loTemp = minTemp;
            dayCinco.hiTemp = maxTemp;
            
            self.dayFive.day = dayCinco;
            
        }];
    }];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/



@end
