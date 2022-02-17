//
//  DetailsViewController.h
//  WestCoast Cars
//
//  Created by Michael Gustavsson on 2020-12-14.
//

#import <UIKit/UIKit.h>
#import "Vehicle.h"

NS_ASSUME_NONNULL_BEGIN

@interface DetailsViewController : UIViewController

//Egenskap som kan lagra en referens till ett Vehicle objekt...
@property (strong, nonatomic) Vehicle *vehicle;

@property (weak, nonatomic) IBOutlet UIImageView *DetailsImageView;
@property (weak, nonatomic) IBOutlet UILabel *modelLabel;
@property (weak, nonatomic) IBOutlet UILabel *modelYear;

@end

NS_ASSUME_NONNULL_END
