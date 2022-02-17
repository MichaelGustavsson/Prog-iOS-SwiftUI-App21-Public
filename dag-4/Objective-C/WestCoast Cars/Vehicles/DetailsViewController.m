//
//  DetailsViewController.m
//  WestCoast Cars
//
//  Created by Michael Gustavsson on 2020-12-14.
//

#import "DetailsViewController.h"

@interface DetailsViewController ()

@end

@implementation DetailsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //Ifrån vehicle objektet som kommer via segue navigering hämtas värdena för de egenskaper
    //som skall populera vyns bild kontroll och de två etiketterna på vyn.
    self.DetailsImageView.image = [UIImage imageNamed:self.vehicle.image];
    self.modelLabel.text = [NSString stringWithFormat:@"%@ %@", self.vehicle.make, self.vehicle.model];
    self.modelYear.text = self.vehicle.modelYear;
}
@end
