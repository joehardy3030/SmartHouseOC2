//
//  JLHBartTimes.h
//  SHOC
//
//  Created by Joseph Hardy on 6/21/16.
//  Copyright © 2016 Joseph Hardy. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface JLHBartTimes : NSObject

@property (nonatomic) NSString *bartApiUrl; // property for the URL to be sent to the BART API
@property (nonatomic) NSString *bartPrintString; // property for the URL to be sent to the BART API

- (NSString *)parseBartTimeString;

@end
