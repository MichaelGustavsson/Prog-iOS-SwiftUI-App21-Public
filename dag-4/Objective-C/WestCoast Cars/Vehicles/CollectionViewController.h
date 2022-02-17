//
//  CollectionViewController.h
//  WestCoast Cars
//
//  Created by Michael Gustavsson on 2020-12-14.
//

#import <UIKit/UIKit.h>
#import "Vehicle.h"

NS_ASSUME_NONNULL_BEGIN

@interface CollectionViewController : UICollectionViewController {
    //Definiera en egenskap för hantera referense till ett Vehicle objekt...
    Vehicle *vehicle;
    
    //Definiera en array som kan hålla en lista av Vehicle objekt...
    NSArray *vehicles;
}


@end

NS_ASSUME_NONNULL_END
