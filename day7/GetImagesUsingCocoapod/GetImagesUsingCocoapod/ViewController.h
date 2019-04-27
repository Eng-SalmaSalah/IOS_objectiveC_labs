//
//  ViewController.h
//  GetImagesUsingCocoapod
//
//  Created by Esraa Hassan on 4/26/19.
//  Copyright © 2019 iti. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UICollectionViewDelegate,UICollectionViewDataSource>
    @property (weak, nonatomic) IBOutlet UICollectionView *collectionViewOutlet;
    

@end

