//
//  NSDate+Relative.m
//  PromptuApp
//
//  Created by Brandon Millman on 7/22/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "NSDate+Relative.h"

@implementation NSDate (Relative)


//-(NSString *)distanceOfTimeInWordsToNow {
//    return [self distanceOfTimeInWordsSinceDate:[NSDate date]];
//
//}

-(NSString *)distanceOfTimeInWordsFromNow {
    double interval = [[NSDate date] timeIntervalSinceDate:self];

    NSString *timeUnit;
    int timeValue;

    if (interval < 0) {
	interval = interval * -1;
    }

    if (interval< 60) {
	return @"<1m";

    } else if (interval< 3600) { // minutes

	timeValue = round(interval / 60);
	timeUnit = @"m";
    } else if (interval< 86400) {
	timeValue = round(interval / 60 / 60);
	timeUnit = @"h";
    } else if (interval< 2629743) {
	int days = round(interval / 60 / 60 / 24);

	if (days < 7) {

	    timeValue = days;
	    timeUnit = @"d";
	} else if (days < 30) {
	    int weeks = days / 7;

	    timeValue = weeks;
	    timeUnit = @"w";
	} else if (days < 365) {

	    int months = days / 30;
	    timeValue = months;
	    timeUnit = @"mo";
	} else if (days < 30000) { // this is roughly 82 years. After that, we'll say 'forever'
	    int years = days / 365;
	    timeValue = years;
	    timeUnit = @"y";
	} else {
	    return @"forever";
	}
    }

    return [NSString stringWithFormat:@"%d%@", timeValue, timeUnit];

}
@end
