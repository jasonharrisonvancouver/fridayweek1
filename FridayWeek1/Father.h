//
//  Father.h
//  FridayWeek1
//
//  Created by jason harrison on 2019-01-11.
//  Copyright © 2019 jason harrison. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "ParentProtocol.h"
#import "Person.h"

NS_ASSUME_NONNULL_BEGIN

@interface Father : Person<Parent>

- (void)teach;

@end

NS_ASSUME_NONNULL_END
