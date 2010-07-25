//
//  OAMutableURLRequest+Debug.m
//  OAuthConsumer
//
//  Created by Michael James on 7/22/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import "OAMutableURLRequest+Debug.h"

@implementation OAMutableURLRequest (Debug)

- (NSString*)debugDescription
{
	NSString*	httpBodyAsString = [[[NSString alloc] initWithData: [self HTTPBody] encoding: NSUTF8StringEncoding] autorelease];
	
	return [NSString stringWithFormat: @"HTTP method: %@\nURL: %@\nHeaders:\n%@\nBody:\n%@\n", [self HTTPMethod], [[self URL] absoluteString], [self allHTTPHeaderFields], httpBodyAsString];
}

@end
