//
//  Bart.h
//  SHOC
//
//  Created by Joseph Hardy on 6/9/16.
//  Copyright © 2016 Joseph Hardy. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Bart : NSMutableDictionary {
  NSString *minutes;
  NSString *length;
  NSString *color;
}

@property (nonatomic, retain) NSString *minutes;
@property (nonatomic, retain) NSString *length;
@property (nonatomic, retain) NSString *color;

@end

