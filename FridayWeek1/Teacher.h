//
//  Teacher.h
//  FridayWeek1
//
//  Created by jason harrison on 2019-01-11.
//  Copyright © 2019 jason harrison. All rights reserved.
//

#import "Person.h"

NS_ASSUME_NONNULL_BEGIN
@protocol Marker <NSObject>

- (void)mark;

@end
@interface Teacher : Person<Marker>


@property (strong, nonatomic) id<Marker> delegate;

- (void)mark;

- (void)createReportCard;
@end

NS_ASSUME_NONNULL_END
