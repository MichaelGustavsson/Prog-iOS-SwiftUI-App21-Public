//
//  CollectionViewController.m
//  WestCoast Cars
//
//  Created by Michael Gustavsson on 2020-12-14.
//

#import "CollectionViewController.h"
#import "CollectionViewCell.h"
#import "DetailsViewController.h"

@interface CollectionViewController ()

@end

@implementation CollectionViewController

static NSString * const reuseIdentifier = @"Cell";

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //Fejka en hämtning av fordon, hårdkodade objekt...
    Vehicle *car1 = [[Vehicle alloc]init];
    car1.image = @"car1";
    car1.make = @"Volvo";
    car1.model = @"V60 T6";
    car1.modelYear = @"2020";

    Vehicle *car2 = [[Vehicle alloc]init];
    car2.image = @"car2";
    car2.make = @"Volvo";
    car2.model = @"V60 T6";
    car2.modelYear = @"2020";

    Vehicle *car3 = [[Vehicle alloc]init];
    car3.image = @"car3";
    car3.make = @"Volvo";
    car3.model = @"V60 T6";
    car3.modelYear = @"2020";

    Vehicle *car4 = [[Vehicle alloc]init];
    car4.image = @"car4";
    car4.make = @"Volvo";
    car4.model = @"V60 T6";
    car4.modelYear = @"2020";

    Vehicle *car5 = [[Vehicle alloc]init];
    car5.image = @"car5";
    car5.make = @"Volvo";
    car5.model = @"V60 T6";
    car5.modelYear = @"2020";

    Vehicle *car6 = [[Vehicle alloc]init];
    car6.image = @"car6";
    car6.make = @"Volvo";
    car6.model = @"V60 T6";
    car6.modelYear = @"2020";

    //Placera objekten i vår vehicles array...
    vehicles = @[car1, car2, car3, car4, car5, car6];
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    //Garantera att vi använder rätt segue genom att kontrollera dess identitet.
    if([[segue identifier] isEqualToString:@"showVehicleDetail"]){
        
        //Hämta en referens till den  ViewController som vår segue pekar på
        //konvertera den till en DetailsViewController...
        DetailsViewController *detailView = [segue destinationViewController];
        NSArray *arrayIndexPath = [self.collectionView indexPathsForSelectedItems];
        //Hämta markerad objekt, vilket är knutet till ett Vehicle objekt...
        NSIndexPath *indexPath = [arrayIndexPath firstObject];
        
        //Hämta index position ifrån indexPath
        int row = (int)[indexPath row];
        //Använd index positionen för att hämta ut objektet ur vår array...
        detailView.vehicle = vehicles[row];
    }
}

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    return 1;
}


- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return vehicles.count;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    
    CollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"Cell" forIndexPath:indexPath];
    
    //Konfigurera vår cell, denna metod anropas för varje bild som finns i vår array
    Vehicle *vehicle = vehicles[indexPath.row];
    //Hämta ut egenskapen image ifrån vehicle objektet...
    cell.cellImage.image = [UIImage imageNamed:vehicle.image];
    
    return cell;
}

@end
