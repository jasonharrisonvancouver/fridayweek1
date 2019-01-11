//
//  Teacher.m
//  FridayWeek1
//
//  Created by jason harrison on 2019-01-11.
//  Copyright © 2019 jason harrison. All rights reserved.
//

#import "Teacher.h"

@implementation Teacher
- (void)mark{
    NSLog(@"teacher marking");
}
    - (void)createReportCard{
        
        if(_delegate != nil){
            [_delegate mark];
        }else{
            NSLog(@"doing my own marking");
            [self mark];
        }
        
        
        NSLog(@"must mark then create report card");
    }


@end
