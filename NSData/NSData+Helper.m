//
//  NSData+Helper.m
//  PromptuApp
//
//  Created by Brandon Millman on 7/21/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "NSData+Helper.h"

@implementation NSData (Helper)

- (NSString*)hexString {
	NSMutableString *str = [NSMutableString stringWithCapacity:64];
	int length = [self length];
	char *bytes = malloc(sizeof(char) * length);

	[self getBytes:bytes length:length];

	int i = 0;

	for (; i < length; i++) {
		[str appendFormat:@"%02.2hhx", bytes[i]];
	}
	free(bytes);

	return str;
}
@end