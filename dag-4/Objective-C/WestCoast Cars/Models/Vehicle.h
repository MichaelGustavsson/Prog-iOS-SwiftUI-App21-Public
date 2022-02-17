//
//  Vehicle.h
//  WestCoast Cars
//
//  Created by Michael Gustavsson on 2021-01-28.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Vehicle : NSObject

//Egenskaper för ett enkelt fordons objekt...
@property NSString *make;
@property NSString *model;
@property NSString *modelYear;
@property NSString *image;

@end

NS_ASSUME_NONNULL_END
